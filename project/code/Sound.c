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
    for(duty = 0; duty <= PWM_DUTY_MAX ; duty ++)                    // ���ռ�ձȵ����� 50%
    {
        pwm_set_duty(PWM_CH1, duty);                // ���¶�Ӧͨ��ռ�ձȶ�
        system_delay_us(100);
    }
}
