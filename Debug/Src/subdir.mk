################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/main.c \
../Src/syscalls.c \
../Src/sysmem.c 

OBJS += \
./Src/main.o \
./Src/syscalls.o \
./Src/sysmem.o 

C_DEPS += \
./Src/main.d \
./Src/syscalls.d \
./Src/sysmem.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o Src/%.su: ../Src/%.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DNUCLEO_F401RE -DSTM32 -DSTM32F401RETx -DSTM32F4 -c -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Driver/CMSIS/Include" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/flash" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Driver/STM32F401RE_StdPeriph_Driver/inc" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/rtos" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/button" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/gui" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/lcd" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/led" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/menu" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/sensor/current-sensor" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/sensor/proximity-sensor" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/sequence-control" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/spi" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/utilities" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/Middle/valve" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/SYSTEM/delay" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/App/SYSTEM/sys" -I"C:/Users/Trang/STM32CubeIDE/workspace_1.10.1/jig-socket/Src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Src

clean-Src:
	-$(RM) ./Src/main.d ./Src/main.o ./Src/main.su ./Src/syscalls.d ./Src/syscalls.o ./Src/syscalls.su ./Src/sysmem.d ./Src/sysmem.o ./Src/sysmem.su

.PHONY: clean-Src

