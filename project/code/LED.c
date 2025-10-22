#include "LED.h"



#include "zf_common_headfile.h"
#include "Config.h"

void LED_Init()
{
    // ��ʼ��GPIOΪ������� Ĭ������͵�ƽ
    gpio_init(LED1_PIN, GPO, 0, GPO_PUSH_PULL);
    gpio_init(LED2_PIN, GPO, 0, GPO_PUSH_PULL);
}

void LED_blink()
{
    gpio_set_level(LED1_PIN, 1);                // �������ŵ�ƽΪ�ߵ�ƽ
    system_delay_ms(100);
    gpio_set_level(LED1_PIN, 0);                // �������ŵ�ƽΪ�͵�ƽ
    system_delay_ms(100);

//    gpio_set_level(LED2_PIN, 1);                // �������ŵ�ƽΪ�ߵ�ƽ
//    system_delay_ms(100);
//    gpio_set_level(LED2_PIN, 0);                // �������ŵ�ƽΪ�͵�ƽ
//    system_delay_ms(100);
}
