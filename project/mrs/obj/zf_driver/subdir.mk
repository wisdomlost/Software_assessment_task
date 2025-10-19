################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/git/libraries/zf_driver/zf_driver_adc.c \
D:/git/libraries/zf_driver/zf_driver_delay.c \
D:/git/libraries/zf_driver/zf_driver_dvp.c \
D:/git/libraries/zf_driver/zf_driver_encoder.c \
D:/git/libraries/zf_driver/zf_driver_exti.c \
D:/git/libraries/zf_driver/zf_driver_flash.c \
D:/git/libraries/zf_driver/zf_driver_gpio.c \
D:/git/libraries/zf_driver/zf_driver_iic.c \
D:/git/libraries/zf_driver/zf_driver_pit.c \
D:/git/libraries/zf_driver/zf_driver_pwm.c \
D:/git/libraries/zf_driver/zf_driver_soft_iic.c \
D:/git/libraries/zf_driver/zf_driver_soft_spi.c \
D:/git/libraries/zf_driver/zf_driver_spi.c \
D:/git/libraries/zf_driver/zf_driver_timer.c \
D:/git/libraries/zf_driver/zf_driver_uart.c \
D:/git/libraries/zf_driver/zf_driver_usb_cdc.c 

OBJS += \
./zf_driver/zf_driver_adc.o \
./zf_driver/zf_driver_delay.o \
./zf_driver/zf_driver_dvp.o \
./zf_driver/zf_driver_encoder.o \
./zf_driver/zf_driver_exti.o \
./zf_driver/zf_driver_flash.o \
./zf_driver/zf_driver_gpio.o \
./zf_driver/zf_driver_iic.o \
./zf_driver/zf_driver_pit.o \
./zf_driver/zf_driver_pwm.o \
./zf_driver/zf_driver_soft_iic.o \
./zf_driver/zf_driver_soft_spi.o \
./zf_driver/zf_driver_spi.o \
./zf_driver/zf_driver_timer.o \
./zf_driver/zf_driver_uart.o \
./zf_driver/zf_driver_usb_cdc.o 

C_DEPS += \
./zf_driver/zf_driver_adc.d \
./zf_driver/zf_driver_delay.d \
./zf_driver/zf_driver_dvp.d \
./zf_driver/zf_driver_encoder.d \
./zf_driver/zf_driver_exti.d \
./zf_driver/zf_driver_flash.d \
./zf_driver/zf_driver_gpio.d \
./zf_driver/zf_driver_iic.d \
./zf_driver/zf_driver_pit.d \
./zf_driver/zf_driver_pwm.d \
./zf_driver/zf_driver_soft_iic.d \
./zf_driver/zf_driver_soft_spi.d \
./zf_driver/zf_driver_spi.d \
./zf_driver/zf_driver_timer.d \
./zf_driver/zf_driver_uart.d \
./zf_driver/zf_driver_usb_cdc.d 


# Each subdirectory must supply rules for building sources it contributes
zf_driver/zf_driver_adc.o: D:/git/libraries/zf_driver/zf_driver_adc.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"D:\git\Libraries\doc" -I"D:\git\libraries\zf_components" -I"D:\git\libraries\sdk\Core" -I"D:\git\libraries\sdk\Ld" -I"D:\git\libraries\sdk\Peripheral" -I"D:\git\libraries\sdk\Startup" -I"D:\git\project\user\inc" -I"D:\git\libraries\zf_common" -I"D:\git\libraries\zf_device" -I"D:\git\project\code" -I"D:\git\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_delay.o: D:/git/libraries/zf_driver/zf_driver_delay.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"D:\git\Libraries\doc" -I"D:\git\libraries\zf_components" -I"D:\git\libraries\sdk\Core" -I"D:\git\libraries\sdk\Ld" -I"D:\git\libraries\sdk\Peripheral" -I"D:\git\libraries\sdk\Startup" -I"D:\git\project\user\inc" -I"D:\git\libraries\zf_common" -I"D:\git\libraries\zf_device" -I"D:\git\project\code" -I"D:\git\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_dvp.o: D:/git/libraries/zf_driver/zf_driver_dvp.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"D:\git\Libraries\doc" -I"D:\git\libraries\zf_components" -I"D:\git\libraries\sdk\Core" -I"D:\git\libraries\sdk\Ld" -I"D:\git\libraries\sdk\Peripheral" -I"D:\git\libraries\sdk\Startup" -I"D:\git\project\user\inc" -I"D:\git\libraries\zf_common" -I"D:\git\libraries\zf_device" -I"D:\git\project\code" -I"D:\git\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_encoder.o: D:/git/libraries/zf_driver/zf_driver_encoder.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"D:\git\Libraries\doc" -I"D:\git\libraries\zf_components" -I"D:\git\libraries\sdk\Core" -I"D:\git\libraries\sdk\Ld" -I"D:\git\libraries\sdk\Peripheral" -I"D:\git\libraries\sdk\Startup" -I"D:\git\project\user\inc" -I"D:\git\libraries\zf_common" -I"D:\git\libraries\zf_device" -I"D:\git\project\code" -I"D:\git\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_exti.o: D:/git/libraries/zf_driver/zf_driver_exti.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"D:\git\Libraries\doc" -I"D:\git\libraries\zf_components" -I"D:\git\libraries\sdk\Core" -I"D:\git\libraries\sdk\Ld" -I"D:\git\libraries\sdk\Peripheral" -I"D:\git\libraries\sdk\Startup" -I"D:\git\project\user\inc" -I"D:\git\libraries\zf_common" -I"D:\git\libraries\zf_device" -I"D:\git\project\code" -I"D:\git\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_flash.o: D:/git/libraries/zf_driver/zf_driver_flash.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"D:\git\Libraries\doc" -I"D:\git\libraries\zf_components" -I"D:\git\libraries\sdk\Core" -I"D:\git\libraries\sdk\Ld" -I"D:\git\libraries\sdk\Peripheral" -I"D:\git\libraries\sdk\Startup" -I"D:\git\project\user\inc" -I"D:\git\libraries\zf_common" -I"D:\git\libraries\zf_device" -I"D:\git\project\code" -I"D:\git\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_gpio.o: D:/git/libraries/zf_driver/zf_driver_gpio.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"D:\git\Libraries\doc" -I"D:\git\libraries\zf_components" -I"D:\git\libraries\sdk\Core" -I"D:\git\libraries\sdk\Ld" -I"D:\git\libraries\sdk\Peripheral" -I"D:\git\libraries\sdk\Startup" -I"D:\git\project\user\inc" -I"D:\git\libraries\zf_common" -I"D:\git\libraries\zf_device" -I"D:\git\project\code" -I"D:\git\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_iic.o: D:/git/libraries/zf_driver/zf_driver_iic.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"D:\git\Libraries\doc" -I"D:\git\libraries\zf_components" -I"D:\git\libraries\sdk\Core" -I"D:\git\libraries\sdk\Ld" -I"D:\git\libraries\sdk\Peripheral" -I"D:\git\libraries\sdk\Startup" -I"D:\git\project\user\inc" -I"D:\git\libraries\zf_common" -I"D:\git\libraries\zf_device" -I"D:\git\project\code" -I"D:\git\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_pit.o: D:/git/libraries/zf_driver/zf_driver_pit.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"D:\git\Libraries\doc" -I"D:\git\libraries\zf_components" -I"D:\git\libraries\sdk\Core" -I"D:\git\libraries\sdk\Ld" -I"D:\git\libraries\sdk\Peripheral" -I"D:\git\libraries\sdk\Startup" -I"D:\git\project\user\inc" -I"D:\git\libraries\zf_common" -I"D:\git\libraries\zf_device" -I"D:\git\project\code" -I"D:\git\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_pwm.o: D:/git/libraries/zf_driver/zf_driver_pwm.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"D:\git\Libraries\doc" -I"D:\git\libraries\zf_components" -I"D:\git\libraries\sdk\Core" -I"D:\git\libraries\sdk\Ld" -I"D:\git\libraries\sdk\Peripheral" -I"D:\git\libraries\sdk\Startup" -I"D:\git\project\user\inc" -I"D:\git\libraries\zf_common" -I"D:\git\libraries\zf_device" -I"D:\git\project\code" -I"D:\git\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_soft_iic.o: D:/git/libraries/zf_driver/zf_driver_soft_iic.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"D:\git\Libraries\doc" -I"D:\git\libraries\zf_components" -I"D:\git\libraries\sdk\Core" -I"D:\git\libraries\sdk\Ld" -I"D:\git\libraries\sdk\Peripheral" -I"D:\git\libraries\sdk\Startup" -I"D:\git\project\user\inc" -I"D:\git\libraries\zf_common" -I"D:\git\libraries\zf_device" -I"D:\git\project\code" -I"D:\git\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_soft_spi.o: D:/git/libraries/zf_driver/zf_driver_soft_spi.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"D:\git\Libraries\doc" -I"D:\git\libraries\zf_components" -I"D:\git\libraries\sdk\Core" -I"D:\git\libraries\sdk\Ld" -I"D:\git\libraries\sdk\Peripheral" -I"D:\git\libraries\sdk\Startup" -I"D:\git\project\user\inc" -I"D:\git\libraries\zf_common" -I"D:\git\libraries\zf_device" -I"D:\git\project\code" -I"D:\git\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_spi.o: D:/git/libraries/zf_driver/zf_driver_spi.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"D:\git\Libraries\doc" -I"D:\git\libraries\zf_components" -I"D:\git\libraries\sdk\Core" -I"D:\git\libraries\sdk\Ld" -I"D:\git\libraries\sdk\Peripheral" -I"D:\git\libraries\sdk\Startup" -I"D:\git\project\user\inc" -I"D:\git\libraries\zf_common" -I"D:\git\libraries\zf_device" -I"D:\git\project\code" -I"D:\git\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_timer.o: D:/git/libraries/zf_driver/zf_driver_timer.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"D:\git\Libraries\doc" -I"D:\git\libraries\zf_components" -I"D:\git\libraries\sdk\Core" -I"D:\git\libraries\sdk\Ld" -I"D:\git\libraries\sdk\Peripheral" -I"D:\git\libraries\sdk\Startup" -I"D:\git\project\user\inc" -I"D:\git\libraries\zf_common" -I"D:\git\libraries\zf_device" -I"D:\git\project\code" -I"D:\git\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_uart.o: D:/git/libraries/zf_driver/zf_driver_uart.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"D:\git\Libraries\doc" -I"D:\git\libraries\zf_components" -I"D:\git\libraries\sdk\Core" -I"D:\git\libraries\sdk\Ld" -I"D:\git\libraries\sdk\Peripheral" -I"D:\git\libraries\sdk\Startup" -I"D:\git\project\user\inc" -I"D:\git\libraries\zf_common" -I"D:\git\libraries\zf_device" -I"D:\git\project\code" -I"D:\git\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
zf_driver/zf_driver_usb_cdc.o: D:/git/libraries/zf_driver/zf_driver_usb_cdc.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"D:\git\Libraries\doc" -I"D:\git\libraries\zf_components" -I"D:\git\libraries\sdk\Core" -I"D:\git\libraries\sdk\Ld" -I"D:\git\libraries\sdk\Peripheral" -I"D:\git\libraries\sdk\Startup" -I"D:\git\project\user\inc" -I"D:\git\libraries\zf_common" -I"D:\git\libraries\zf_device" -I"D:\git\project\code" -I"D:\git\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

