################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/git/libraries/zf_components/seekfree_assistant.c \
D:/git/libraries/zf_components/seekfree_assistant_interface.c 

OBJS += \
./zf_components/seekfree_assistant.o \
./zf_components/seekfree_assistant_interface.o 

C_DEPS += \
./zf_components/seekfree_assistant.d \
./zf_components/seekfree_assistant_interface.d 


# Each subdirectory must supply rules for building sources it contributes
zf_components/seekfree_assistant.o: D:/git/libraries/zf_components/seekfree_assistant.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"D:\git\Libraries\doc" -I"D:\git\libraries\zf_components" -I"D:\git\libraries\sdk\Core" -I"D:\git\libraries\sdk\Ld" -I"D:\git\libraries\sdk\Peripheral" -I"D:\git\libraries\sdk\Startup" -I"D:\git\project\user\inc" -I"D:\git\libraries\zf_common" -I"D:\git\libraries\zf_device" -I"D:\git\project\code" -I"D:\git\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_components/seekfree_assistant_interface.o: D:/git/libraries/zf_components/seekfree_assistant_interface.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"D:\git\Libraries\doc" -I"D:\git\libraries\zf_components" -I"D:\git\libraries\sdk\Core" -I"D:\git\libraries\sdk\Ld" -I"D:\git\libraries\sdk\Peripheral" -I"D:\git\libraries\sdk\Startup" -I"D:\git\project\user\inc" -I"D:\git\libraries\zf_common" -I"D:\git\libraries\zf_device" -I"D:\git\project\code" -I"D:\git\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

