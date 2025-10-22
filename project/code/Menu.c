/*
 * Menu.c
 *
 *  Created on: Oct 22, 2025
 *      Author: wisdomlost
 */

#include "Menu.h"
#include "zf_common_headfile.h"
#include "Config.h"



char currentMenu = 0;
char currentOption = 0;
char LEDFlag=0;
char SoundFlag=0;

void DisplayMenu()
{
    switch(currentMenu)
    {
        case 0:

            tft180_show_string(0,0,"==MAIN MENU===");
            tft180_show_string(0,16,"Paras Display");
            tft180_show_string(0,32,"Status Set");

            break;

        case 1:

            tft180_show_string(0,0,"==Paras===");
            tft180_show_string(0,16,"ADC:");
            tft180_show_uint(48,16,adc_convert(ADC_CHANNEL1),4);
            tft180_show_string(0,32,"Flash:");
            tft180_show_float(48, 32, flash_union_buffer[0].float_type, 1, 6);
            break;

        case 2:


            tft180_show_string(0,0,"==Status===");
            tft180_show_string(0,16,"LED:");
            tft180_show_string(0,32,"Sound:");
            if(LEDFlag)
            {
                tft180_show_string(50,16,"ON");
                gpio_set_level(LED1_PIN,1);
            }
            else
            {
                tft180_show_string(50,16,"OFF");
                gpio_set_level(LED1_PIN,0);
            }
            if(SoundFlag)
            {
                tft180_show_string(50,32,"ON");
                for(int8 duty = 0; duty <=50 ; duty ++)                    // 输出占空比递增到 50%
                {
                    pwm_set_duty(PWM_CH1, duty);                // 更新对应通道占空比额
                    system_delay_us(100);
                }

            }
            else
            {
                tft180_show_string(50,32,"OFF");
                pwm_set_duty(PWM_CH1, 0);                // 更新对应通道占空比额
            }
            break;
    }
}
void DisplayOption()
{
    switch(currentOption)
    {
        case 0:
            tft180_draw_line(126,24,114,24,RGB565_GREEN);
            break;
        case 1:
            tft180_draw_line(126,40,114,40,RGB565_GREEN);
            break;

    }
}
