################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/MounRiver_Studio/Projects/Seekfree_CH32V307VCT6_Opensource_Library/project/code/LED.c 

OBJS += \
./code/LED.o 

C_DEPS += \
./code/LED.d 


# Each subdirectory must supply rules for building sources it contributes
code/LED.o: D:/MounRiver_Studio/Projects/Seekfree_CH32V307VCT6_Opensource_Library/project/code/LED.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"D:\MounRiver_Studio\Projects\Seekfree_CH32V307VCT6_Opensource_Library\Libraries\doc" -I"D:\MounRiver_Studio\Projects\Seekfree_CH32V307VCT6_Opensource_Library\libraries\zf_components" -I"D:\MounRiver_Studio\Projects\Seekfree_CH32V307VCT6_Opensource_Library\libraries\sdk\Core" -I"D:\MounRiver_Studio\Projects\Seekfree_CH32V307VCT6_Opensource_Library\libraries\sdk\Ld" -I"D:\MounRiver_Studio\Projects\Seekfree_CH32V307VCT6_Opensource_Library\libraries\sdk\Peripheral" -I"D:\MounRiver_Studio\Projects\Seekfree_CH32V307VCT6_Opensource_Library\libraries\sdk\Startup" -I"D:\MounRiver_Studio\Projects\Seekfree_CH32V307VCT6_Opensource_Library\project\user\inc" -I"D:\MounRiver_Studio\Projects\Seekfree_CH32V307VCT6_Opensource_Library\libraries\zf_common" -I"D:\MounRiver_Studio\Projects\Seekfree_CH32V307VCT6_Opensource_Library\libraries\zf_device" -I"D:\MounRiver_Studio\Projects\Seekfree_CH32V307VCT6_Opensource_Library\project\code" -I"D:\MounRiver_Studio\Projects\Seekfree_CH32V307VCT6_Opensource_Library\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

