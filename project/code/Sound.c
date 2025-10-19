/*
 * Sound.c
 *
 *  Created on: Oct 19, 2025
 *      Author: wisdomlost
 */

#include "zf_common_headfile.h"
#include "Sound.h"

int16 duty = 0;

void sound()
{
    for(duty = 0; duty <= PWM_DUTY_MAX ; duty ++)                    // 输出占空比递增到 50%
    {
        pwm_set_duty(PWM_CH1, duty);                // 更新对应通道占空比额
        system_delay_us(100);
    }
}
