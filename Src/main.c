/*******************************************************************************
 *				 _ _                                             _ _
				|   |                                           (_ _)
				|   |        _ _     _ _   _ _ _ _ _ _ _ _ _ _   _ _
				|   |       |   |   |   | |    _ _     _ _    | |   |
				|   |       |   |   |   | |   |   |   |   |   | |   |
				|   |       |   |   |   | |   |   |   |   |   | |   |
				|   |_ _ _  |   |_ _|   | |   |   |   |   |   | |   |
				|_ _ _ _ _| |_ _ _ _ _ _| |_ _|   |_ _|   |_ _| |_ _|
								(C)2023 Lumi
 * Copyright (c) 2023
 * Lumi, JSC.
 * All Rights Reserved
 *
 * File name: main.c
 *
 * Description:
 *
 * Author: CuuNV
 *
 * Last Changed By:  $Author: CuuNV $
 * Revision:         $Revision: $
 * Last Changed:     $Date: $Feb 21, 2023
 *
 * Code sample:
 ******************************************************************************/
/******************************************************************************/
/*                              INCLUDE FILES                                 */
/******************************************************************************/
#include "GUI.h"
#include "lcd.h"
#include <stdint.h>
#include <stdio.h>
#include "utilities.h"
#include "delay.h"
#include "sys.h"
#include "string.h"
#include "timer.h"
#include "button-v1-1.h"
#include "valve.h"
#include "sequence-control.h"
#include "current-sensor.h"
#include "proximity-sensor.h"
#include "led.h"
#include "flash.h"
#include "menu.h"
/******************************************************************************/
/*                     EXPORTED TYPES and DEFINITIONS                         */
/******************************************************************************/

/******************************************************************************/
/*                              PRIVATE DATA                                  */
/******************************************************************************/
// enum of system
typedef enum{
	STATE_APP_STARTUP,
	STATE_APP_IDLE,
	STATE_APP_RESET
}StateApp_e;
typedef struct{
	DeviceState_e deviceState;
	uint32_t dwCountMax;
	uint32_t dwCounting;
	uint32_t dwCountMiss;
	uint32_t dwThold;
}*Data_t;

uint32_t g_dwCountMax = 0;
uint32_t g_dwCounting = 0;
static u32 g_dwCountingTemp = 0;

uint32_t g_dwCountMiss = 0;
uint32_t g_dwThold = 0;
ValueKey_e valueKey = NOKEY;
StateApp_e eCurrentState = STATE_APP_STARTUP;
DeviceState_e eDeviceState = STOP;
UserData_t *Data_Rx;
//	for(uint8_t i=0;i<6;i++){

/******************************************************************************/
/*                              EXPORTED DATA                                 */
/******************************************************************************/

/******************************************************************************/
/*                            PRIVATE FUNCTIONS                               */
/******************************************************************************/
static void appInitCommon(void);

static void setStateApp(StateApp_e state);

static StateApp_e getStateApp(void);

static void UpDateData(void*arg);

static u8 proKey(void);

static void appStateManager(void);




/******************************************************************************/
/*                            EXPORTED FUNCTIONS                              */
/******************************************************************************/
int main(void)
{
	static DeviceState_e DeviceStateTemp_e = ERROR_DEVICE;
	appInitCommon();

    /* Loop forever */
	while(1)
	{
		appStateManager();
		if(DeviceStateTemp_e != eDeviceState)
		{
			DeviceStateTemp_e = eDeviceState;
			controlLed(eDeviceState);
		}
	}
}
/**
 * @func   appInitCommon
 * @brief  Initializes functions
 * @param  None
 * @retval None
 */

static void appInitCommon(void)
{
	SystemCoreClockUpdate();
	buttonInit();
	proximitySensorInit();
	//currentSensorInit();
	valveInit();
	ledInit();
	TimerInit();
	LCD_Init();
	LCD_direction(1);
	eCurrentState = STATE_APP_STARTUP;
	updateDataStopHandleCallBack(UpDateData);
	updateDataRunHandleCallBack(UpDateData);
	FLASH_Init();
	Data_Rx = FLASH_GetUserData();
	g_dwCountMax = Data_Rx->countMax;
	g_dwThold = Data_Rx->tHold;

	//Gui_Drawbmp16(0,0,gImage_logo);
}
/**
 * @func   setStateApp
 * @brief  Set state of application
 * @param  state: State of application
 * @retval None
 */

static void setStateApp(StateApp_e state)
{
	eCurrentState = state;
}

/**
 * @func   setStateApp
 * @brief  Get state of application
 * @param  None
 * @retval State of application
 */
static StateApp_e getStateApp(void)
{
	return eCurrentState;
}
/**
 * @func   appStateManager
 * @brief  Manager state application
 * @param  event: Su kien
 * @retval None
 */
static void UpDateData(void*arg)
{
	Data_t pData = (Data_t)arg;
	switch(pData->deviceState)
	{
	case RUN:
		g_dwCountMiss = pData->dwCountMiss;
		g_dwCounting = pData->dwCounting;
		break;
	case STOP:
		g_dwCountMax = pData->dwCountMax;
		g_dwThold = pData->dwThold;

		Data_Rx->countMax = g_dwCountMax;
		Data_Rx->tHold = g_dwThold;
		Data_Rx->Used = FLASH_USERDATA_VALID;

		FLASH_RamToFlash();

		break;
	default:
		break;
	}

}
static void appStateManager(void)
{
	StateApp_e event = getStateApp();
	switch(event)
	{
	case STATE_APP_STARTUP: //Su kien khi he thong bat dau duoc cap nguon
		switch(eDeviceState)
		{
		case ERROR_DEVICE:
			LCD_ClearCursor(20, 210, 320, 240, WHITE);
			Gui_StrCenter(20, 210, BLACK, WHITE, (u8*)"ERROR", 16, 1);
			//Hien thi loi may
			while(proKey()==0);
			break;
		case PAUSE:
			HMI(g_dwCountMax,g_dwCounting,g_dwCountMiss,g_dwThold,1);
			HMI(g_dwCountMax,g_dwCounting,g_dwCountMiss,g_dwThold,0);
			LCD_ClearCursor(20, 210, 320, 240, WHITE);
			Gui_StrCenter(20, 210, BLACK, WHITE, (u8*)"PAUSE", 16, 1);
			valveControl(PISTON_PUSH_UP, VALVE_NUM_1);
			while(proKey() == 0);
			break;
		case RUN:
			LCD_ClearCursor(20, 210, 320, 240, WHITE);
			Gui_StrCenter(20, 210, BLACK, WHITE, (u8*)"RUN", 16, 1);
			HMI(g_dwCountMax,g_dwCounting,g_dwCountMiss,g_dwThold,1);
			setCountValue(g_dwCountMax, g_dwThold);
			setStateApp(STATE_APP_IDLE);
			break;
		case STOP:
			while(processMainMenu(g_dwCountMax,g_dwCounting,g_dwCountMiss,g_dwThold)==0);

			eDeviceState = PAUSE;
			break;
		}

		break;
	case STATE_APP_IDLE:
		if(byProcessSequenceControl()== 1)
		{
			eDeviceState = PAUSE;
			setStateApp(STATE_APP_STARTUP);
		}
		if(g_dwCounting !=g_dwCountingTemp)
		{
			g_dwCountingTemp = g_dwCounting;
			HMI(g_dwCountMax,g_dwCounting,g_dwCountMiss,g_dwThold,1);
		}

		proKey();
		break;
	case STATE_APP_RESET:
		setStateApp(STATE_APP_STARTUP);
		break;
	default:
		break;

	}
}
static u8 proKey(void)
{
	ValueKey_e valueKeyTemp = NOKEY;
	u8 state = 0;
	valueKeyTemp = processEventButton();
	if(valueKeyTemp == SELECT)
	{
		setStateApp(STATE_APP_STARTUP);
		if(eDeviceState == RUN)
		{
			eDeviceState = PAUSE;
			state = 1;
		}else
		{
		eDeviceState = RUN;
		state = 1;
		}

	}
	if(valueKeyTemp == RETURN)
	{
		setStateApp(STATE_APP_STARTUP);
		eDeviceState = STOP;
		state = 1;
	}
	return state;
}
