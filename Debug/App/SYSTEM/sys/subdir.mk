################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/SYSTEM/sys/sys.c 

OBJS += \
./App/SYSTEM/sys/sys.o 

C_DEPS += \
./App/SYSTEM/sys/sys.d 


# Each subdirectory must supply rules for building sources it contributes
App/SYSTEM/sys/%.o App/SYSTEM/sys/%.su: ../App/SYSTEM/sys/%.c App/SYSTEM/sys/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DNUCLEO_F401RE -DSTM32 -DSTM32F401RETx -DSTM32F4 -c -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Driver/CMSIS/Include" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Driver/STM32F401RE_StdPeriph_Driver/inc" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/rtos" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/button" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/gui" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/lcd" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/led" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/menu" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/sensor/current-sensor" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/sensor/proximity-sensor" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/sequence-control" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/spi" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/utilities" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/valve" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/SYSTEM/delay" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/SYSTEM/sys" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/Src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-SYSTEM-2f-sys

clean-App-2f-SYSTEM-2f-sys:
	-$(RM) ./App/SYSTEM/sys/sys.d ./App/SYSTEM/sys/sys.o ./App/SYSTEM/sys/sys.su

.PHONY: clean-App-2f-SYSTEM-2f-sys

