################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/git/project/code/LED.c \
D:/git/project/code/Menu.c 

OBJS += \
./code/LED.o \
./code/Menu.o 

C_DEPS += \
./code/LED.d \
./code/Menu.d 


# Each subdirectory must supply rules for building sources it contributes
code/LED.o: D:/git/project/code/LED.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"D:\git\Libraries\doc" -I"D:\git\libraries\zf_components" -I"D:\git\libraries\sdk\Core" -I"D:\git\libraries\sdk\Ld" -I"D:\git\libraries\sdk\Peripheral" -I"D:\git\libraries\sdk\Startup" -I"D:\git\project\user\inc" -I"D:\git\libraries\zf_common" -I"D:\git\libraries\zf_device" -I"D:\git\project\code" -I"D:\git\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
code/Menu.o: D:/git/project/code/Menu.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"D:\git\Libraries\doc" -I"D:\git\libraries\zf_components" -I"D:\git\libraries\sdk\Core" -I"D:\git\libraries\sdk\Ld" -I"D:\git\libraries\sdk\Peripheral" -I"D:\git\libraries\sdk\Startup" -I"D:\git\project\user\inc" -I"D:\git\libraries\zf_common" -I"D:\git\libraries\zf_device" -I"D:\git\project\code" -I"D:\git\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

