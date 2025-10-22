/*********************************************************************************************************************
* CH32V307VCT6 Opensourec Library ����CH32V307VCT6 ��Դ�⣩��һ�����ڹٷ� SDK �ӿڵĵ�������Դ��
* Copyright (c) 2022 SEEKFREE ��ɿƼ�
*
* ���ļ���CH32V307VCT6 ��Դ���һ����
*
* CH32V307VCT6 ��Դ�� ��������
* �����Ը��������������ᷢ���� GPL��GNU General Public License���� GNUͨ�ù������֤��������
* �� GPL �ĵ�3�棨�� GPL3.0������ѡ��ģ��κκ����İ汾�����·�����/���޸���
*
* ����Դ��ķ�����ϣ�����ܷ������ã�����δ�������κεı�֤
* ����û�������������Ի��ʺ��ض���;�ı�֤
* ����ϸ����μ� GPL
*
* ��Ӧ�����յ�����Դ���ͬʱ�յ�һ�� GPL �ĸ���
* ���û�У������<https://www.gnu.org/licenses/>
*
* ����ע����
* ����Դ��ʹ�� GPL3.0 ��Դ���֤Э�� �����������Ϊ���İ汾
* �������Ӣ�İ��� libraries/doc �ļ����µ� GPL3_permission_statement.txt �ļ���
* ���֤������ libraries �ļ����� �����ļ����µ� LICENSE �ļ�
* ��ӭ��λʹ�ò����������� ���޸�����ʱ���뱣����ɿƼ��İ�Ȩ����������������
*
* �ļ�����          main
* ��˾����          �ɶ���ɿƼ����޹�˾
* �汾��Ϣ          �鿴 libraries/doc �ļ����� version �ļ� �汾˵��
* ��������          MounRiver Studio V1.8.1
* ����ƽ̨          CH32V307VCT6
* ��������          https://seekfree.taobao.com/
*
* �޸ļ�¼
* ����                                      ����                             ��ע
* 2022-09-15        ��W            first version
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
    clock_init(SYSTEM_CLOCK_120M);      // ��ʼ��оƬʱ�� ����Ƶ��Ϊ 120MHz
    debug_init();                       // ��ر��������������ڳ�ʼ��MPU ʱ�� ���Դ���

    // �˴���д�û����� ���������ʼ�������

    LED_Init();
    pwm_init(PWM_CH1, 2000, 0);                                                // ��ʼ�� PWM ͨ�� Ƶ�� 2KHz ��ʼռ�ձ� 0%
    pit_ms_init(PIT_CH, 1000);                                                  // ��ʼ�� PIT_CH0 Ϊ�����ж� 1000ms ����

    interrupt_set_priority(PIT_PRIORITY, 0);                                    // ���� PIT1 �������жϵ��ж����ȼ�Ϊ 0

    adc_init(ADC_CHANNEL1, ADC_12BIT);                                          // ��ʼ����Ӧ ADC ͨ��Ϊ��Ӧ����

    //��Ļ��ʼ��
    tft180_set_dir(TFT180_PORTAIT);
    tft180_set_font(TFT180_8X16_FONT);
    tft180_set_color(RGB565_RED, RGB565_BLACK);
    tft180_init();

    if(flash_check(FLASH_SECTION_INDEX, FLASH_PAGE_INDEX))                      // �ж��Ƿ�������
    {
        flash_erase_sector(FLASH_SECTION_INDEX, FLASH_PAGE_INDEX);              // ������һҳ
    }
    flash_buffer_clear();                                                       // ��ջ�����
    flash_union_buffer[0].float_type  = 3.141592;                              // �򻺳����� 0 ��λ��д�� float  ����
    flash_write_page_from_buffer(FLASH_SECTION_INDEX, FLASH_PAGE_INDEX);        // ��ָ�� Flash ������ҳ��д�뻺��������
    flash_read_page_to_buffer(FLASH_SECTION_INDEX, FLASH_PAGE_INDEX);           // �����ݴ� flash ��ȡ��������
//    tft180_show_float(0, 32, flash_union_buffer[0].float_type, 1, 6);

    exti_init(KEY_IN1, EXTI_TRIGGER_FALLING);                                      // ��ʼ�� KEY1 Ϊ�ⲿ�ж����� �½��ش���
    exti_init(KEY_IN2, EXTI_TRIGGER_FALLING);                                      // ��ʼ�� KEY2 Ϊ�ⲿ�ж����� �½��ش���
    exti_init(KEY_IN3, EXTI_TRIGGER_FALLING);                                      // ��ʼ�� KEY3 Ϊ�ⲿ�ж����� �½��ش���

    interrupt_set_priority(KEY1_EXTI, (0<<5) || 1);                             // ���� KEY1 ��Ӧ�ⲿ�жϵ��ж���ռ���ȼ�0�������ȼ�1
    interrupt_set_priority(KEY2_EXTI, (0<<5) || 1);                             // ���� KEY2 ��Ӧ�ⲿ�жϵ��ж���ռ���ȼ�0�������ȼ�1
    interrupt_set_priority(KEY3_EXTI, (0<<5) || 1);                             // ���� KEY3 ��Ӧ�ⲿ�жϵ��ж���ռ���ȼ�0�������ȼ�1


    // �˴���д�û����� ���������ʼ�������

   while(1)
   {
        // �˴���д��Ҫѭ��ִ�еĴ���

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

        // �˴���д��Ҫѭ��ִ�еĴ���
    }
}



