################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/Driver/STM32F401RE_StdPeriph_Driver/src/misc.c \
../App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_adc.c \
../App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_dma.c \
../App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_exti.c \
../App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_gpio.c \
../App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_i2c.c \
../App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_rcc.c \
../App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_spi.c \
../App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_syscfg.c \
../App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_tim.c \
../App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_usart.c \
../App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f4xx_flash.c 

OBJS += \
./App/Driver/STM32F401RE_StdPeriph_Driver/src/misc.o \
./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_adc.o \
./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_dma.o \
./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_exti.o \
./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_gpio.o \
./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_i2c.o \
./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_rcc.o \
./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_spi.o \
./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_syscfg.o \
./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_tim.o \
./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_usart.o \
./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f4xx_flash.o 

C_DEPS += \
./App/Driver/STM32F401RE_StdPeriph_Driver/src/misc.d \
./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_adc.d \
./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_dma.d \
./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_exti.d \
./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_gpio.d \
./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_i2c.d \
./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_rcc.d \
./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_spi.d \
./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_syscfg.d \
./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_tim.d \
./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_usart.d \
./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f4xx_flash.d 


# Each subdirectory must supply rules for building sources it contributes
App/Driver/STM32F401RE_StdPeriph_Driver/src/%.o App/Driver/STM32F401RE_StdPeriph_Driver/src/%.su: ../App/Driver/STM32F401RE_StdPeriph_Driver/src/%.c App/Driver/STM32F401RE_StdPeriph_Driver/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DNUCLEO_F401RE -DSTM32 -DSTM32F401RETx -DSTM32F4 -c -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Driver/CMSIS/Include" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/flash" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Driver/STM32F401RE_StdPeriph_Driver/inc" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/rtos" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/button" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/gui" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/lcd" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/led" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/menu" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/sensor/current-sensor" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/sensor/proximity-sensor" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/sequence-control" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/spi" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/utilities" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/valve" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/SYSTEM/delay" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/SYSTEM/sys" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/Src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-Driver-2f-STM32F401RE_StdPeriph_Driver-2f-src

clean-App-2f-Driver-2f-STM32F401RE_StdPeriph_Driver-2f-src:
	-$(RM) ./App/Driver/STM32F401RE_StdPeriph_Driver/src/misc.d ./App/Driver/STM32F401RE_StdPeriph_Driver/src/misc.o ./App/Driver/STM32F401RE_StdPeriph_Driver/src/misc.su ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_adc.d ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_adc.o ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_adc.su ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_dma.d ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_dma.o ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_dma.su ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_exti.d ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_exti.o ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_exti.su ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_gpio.d ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_gpio.o ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_gpio.su ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_i2c.d ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_i2c.o ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_i2c.su ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_rcc.d ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_rcc.o ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_rcc.su ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_spi.d ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_spi.o ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_spi.su ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_syscfg.d ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_syscfg.o ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_syscfg.su ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_tim.d ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_tim.o ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_tim.su ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_usart.d ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_usart.o ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f401re_usart.su ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f4xx_flash.d ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f4xx_flash.o ./App/Driver/STM32F401RE_StdPeriph_Driver/src/stm32f4xx_flash.su

.PHONY: clean-App-2f-Driver-2f-STM32F401RE_StdPeriph_Driver-2f-src

