/*********************************************************************************************************************
* CH32V307VCT6 Opensourec Library 即（CH32V307VCT6 开源库）是一个基于官方 SDK 接口的第三方开源库
* Copyright (c) 2022 SEEKFREE 逐飞科技
*
* 本文件是CH32V307VCT6 开源库的一部分
*
* CH32V307VCT6 开源库 是免费软件
* 您可以根据自由软件基金会发布的 GPL（GNU General Public License，即 GNU通用公共许可证）的条款
* 即 GPL 的第3版（即 GPL3.0）或（您选择的）任何后来的版本，重新发布和/或修改它
*
* 本开源库的发布是希望它能发挥作用，但并未对其作任何的保证
* 甚至没有隐含的适销性或适合特定用途的保证
* 更多细节请参见 GPL
*
* 您应该在收到本开源库的同时收到一份 GPL 的副本
* 如果没有，请参阅<https://www.gnu.org/licenses/>
*
* 额外注明：
* 本开源库使用 GPL3.0 开源许可证协议 以上许可申明为译文版本
* 许可申明英文版在 libraries/doc 文件夹下的 GPL3_permission_statement.txt 文件中
* 许可证副本在 libraries 文件夹下 即该文件夹下的 LICENSE 文件
* 欢迎各位使用并传播本程序 但修改内容时必须保留逐飞科技的版权声明（即本声明）
*
* 文件名称          main
* 公司名称          成都逐飞科技有限公司
* 版本信息          查看 libraries/doc 文件夹内 version 文件 版本说明
* 开发环境          MounRiver Studio V1.8.1
* 适用平台          CH32V307VCT6
* 店铺链接          https://seekfree.taobao.com/
*
* 修改记录
* 日期                                      作者                             备注
* 2022-09-15        大W            first version
********************************************************************************************************************/
#include "zf_common_headfile.h"
#include "LED.h"
#include "Menu.h"
#include "Config.h"

extern char currentMenu;
extern char currentOption;
extern char LEDFlag;
extern char SoundFlag;

uint8 pit_state = 0;
extern uint8 exti_state;
uint8 Key_Value=KEY_NONE;



int main (void)
{
    clock_init(SYSTEM_CLOCK_120M);      // 初始化芯片时钟 工作频率为 120MHz
    debug_init();                       // 务必保留，本函数用于初始化MPU 时钟 调试串口

    // 此处编写用户代码 例如外设初始化代码等

    LED_Init();
    pwm_init(PWM_CH1, 2000, 0);                                                // 初始化 PWM 通道 频率 2KHz 初始占空比 0%
    pit_ms_init(PIT_CH, 1000);                                                  // 初始化 PIT_CH0 为周期中断 1000ms 周期

    interrupt_set_priority(PIT_PRIORITY, 0);                                    // 设置 PIT1 对周期中断的中断优先级为 0

    adc_init(ADC_CHANNEL1, ADC_12BIT);                                          // 初始化对应 ADC 通道为对应精度

    //屏幕初始化
    tft180_set_dir(TFT180_PORTAIT);
    tft180_set_font(TFT180_8X16_FONT);
    tft180_set_color(RGB565_RED, RGB565_BLACK);
    tft180_init();

    if(flash_check(FLASH_SECTION_INDEX, FLASH_PAGE_INDEX))                      // 判断是否有数据
    {
        flash_erase_sector(FLASH_SECTION_INDEX, FLASH_PAGE_INDEX);              // 擦除这一页
    }
    flash_buffer_clear();                                                       // 清空缓冲区
    flash_union_buffer[0].float_type  = 3.141592;                              // 向缓冲区第 0 个位置写入 float  数据
    flash_write_page_from_buffer(FLASH_SECTION_INDEX, FLASH_PAGE_INDEX);        // 向指定 Flash 扇区的页码写入缓冲区数据
    flash_read_page_to_buffer(FLASH_SECTION_INDEX, FLASH_PAGE_INDEX);           // 将数据从 flash 读取到缓冲区
//    tft180_show_float(0, 32, flash_union_buffer[0].float_type, 1, 6);

    exti_init(KEY_IN1, EXTI_TRIGGER_FALLING);                                      // 初始化 KEY1 为外部中断输入 下降沿触发
    exti_init(KEY_IN2, EXTI_TRIGGER_FALLING);                                      // 初始化 KEY2 为外部中断输入 下降沿触发
    exti_init(KEY_IN3, EXTI_TRIGGER_FALLING);                                      // 初始化 KEY3 为外部中断输入 下降沿触发

    interrupt_set_priority(KEY1_EXTI, (0<<5) || 1);                             // 设置 KEY1 对应外部中断的中断抢占优先级0，子优先级1
    interrupt_set_priority(KEY2_EXTI, (0<<5) || 1);                             // 设置 KEY2 对应外部中断的中断抢占优先级0，子优先级1
    interrupt_set_priority(KEY3_EXTI, (0<<5) || 1);                             // 设置 KEY3 对应外部中断的中断抢占优先级0，子优先级1


    // 此处编写用户代码 例如外设初始化代码等

   while(1)
   {
        // 此处编写需要循环执行的代码

//        LED_blink();
//        sound();
//        tft180_show_string(0,0,"Hello World!");
//        tft180_show_string(0,16,"ADC:");
//        tft180_show_uint(32,16,adc_convert(ADC_CHANNEL1),4);
//
//        tft180_show_uint(0,48,gpio_get_level(D8),1);
//        tft180_show_uint(0,64,gpio_get_level(B12),1);
//        tft180_show_uint(0,80,gpio_get_level(B14),1);
        Key_Value=gpio_get_level(KEY_IN1)+2*gpio_get_level(KEY_IN2)+4*gpio_get_level(KEY_IN3);

        DisplayMenu();
        DisplayOption();
        if(exti_state)
        {
            exti_state=0;
            exti_disable(D8);
            exti_disable(B12);
            exti_disable(B14);
            Key_Value=gpio_get_level(KEY_IN1)+2*gpio_get_level(KEY_IN2)+4*gpio_get_level(KEY_IN3);


            if(Key_Value==KEY_MID)
            {
                tft180_clear();

                if(currentMenu==0)
                {
                    currentMenu=1;
                    tft180_clear();
                }
                if(currentMenu==2)
                {
                    if(currentOption==0)
                    {
                        if(LEDFlag)
                        {
                            LEDFlag=0;
                        }
                        else
                        {
                            LEDFlag=1;
                        }
                    }
                    if(currentOption==1)
                    {
                        if(SoundFlag)
                        {
                            SoundFlag=0;
                        }
                        else
                        {
                            SoundFlag=1;
                        }
                    }
                }
            }
            if(Key_Value==KEY_MID&&currentOption==1)
            {
                currentMenu=2;
                tft180_clear();

            }
            if(Key_Value==KEY_LEFT)
            {
                currentMenu=0;
                tft180_clear();

            }

            if(Key_Value==KEY_UP)
            {
                currentOption--;
                tft180_clear();

                if(currentOption==-1)
                {
                    currentOption=1;
                }
            }
            if(Key_Value==KEY_DOWN)
            {
                currentOption++;
                tft180_clear();

                if(currentOption==2)
                {
                    currentOption=0;
                }
            }

        }
        if(Key_Value==KEY_NONE)
        {
            exti_enable(D8);
            exti_enable(B12);
            exti_enable(B14);
        }

        // 此处编写需要循环执行的代码
    }
}



