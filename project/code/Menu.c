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
            tft180_show_string(0,48,"About");
            tft180_show_rgb565_image(0,64,(const uint16 *)gImage_1,239, 180, 120, 90, 0);
            break;

        case 1:

            tft180_show_string(0,0,"==Paras===");
            tft180_show_string(0,16,"ADC:");
            tft180_show_uint(48,16,adc_convert(ADC_CHANNEL1),4);
            tft180_show_string(0,32,"Flash:");
            tft180_show_int(80, 32, flash_union_buffer[0].int32_type, 2);
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
                pwm_set_duty(PWM_CH1, 8000);                // 更新对应通道占空比额


            }
            else
            {
                tft180_show_string(50,32,"OFF");
                pwm_set_duty(PWM_CH1, 0);                // 更新对应通道占空比额
            }
            break;
        case 3:
            tft180_show_string(0,16,"ADC_Pin:");
            tft180_show_string(80,16,"A7");
            break;
        case 4:
            tft180_show_string(0,0,"wisdomlost");
            tft180_show_chinese(0, 16, 16, (const uint8 *)chinese_name, 3, RGB565_GREEN);
            tft180_show_chinese(0, 32, 16, (const uint8 *)chinese_site, 4, RGB565_RED);
            tft180_show_string(0,48,"https://");
            tft180_show_string(0,64,"github.com/");
            tft180_show_string(0,80,"wisdomlost/");
            tft180_show_string(0,96,"Software_assess");
            tft180_show_string(0,112,"ment_task");

            break;
        case 5:

//            tft180_show_chinese(0, 0, 16, (const uint8 *)chinese_1, 7, RGB565_RED);
            tft180_show_rgb565_image(0,64,(const uint16 *)gImage_2,239, 180, 120, 90, 0);

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
        case 2:
            tft180_draw_line(126,56,114,56,RGB565_GREEN);
            break;
    }
}
