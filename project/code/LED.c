#include "zf_common_headfile.h"
#define LED1_PIN        (A11)

void LED_Init()
{
    gpio_init(LED1_PIN, GPO, 0, GPO_PUSH_PULL);     // ��ʼ��GPIO A11Ϊ������� Ĭ������͵�ƽ
}

void LED_blink()
{
    gpio_set_level(LED1_PIN, 1);                // �������ŵ�ƽΪ�ߵ�ƽ
    system_delay_ms(100);
    gpio_set_level(LED1_PIN, 0);                // �������ŵ�ƽΪ�͵�ƽ
    system_delay_ms(100);
}
