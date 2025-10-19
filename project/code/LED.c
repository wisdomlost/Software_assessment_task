#include "zf_common_headfile.h"
#define LED1_PIN        (A11)

void LED_Init()
{
    gpio_init(LED1_PIN, GPO, 0, GPO_PUSH_PULL);     // 初始化GPIO A11为推挽输出 默认输出低电平
}

void LED_blink()
{
    gpio_set_level(LED1_PIN, 1);                // 设置引脚电平为高电平
    system_delay_ms(100);
    gpio_set_level(LED1_PIN, 0);                // 设置引脚电平为低电平
    system_delay_ms(100);
}
