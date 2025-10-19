#include "LED.h"

#define LED1_PIN        (A11)
#define LED2_PIN        (A12)

#include "zf_common_headfile.h"

void LED_Init()
{
    // 初始化GPIO为推挽输出 默认输出低电平
    gpio_init(LED1_PIN, GPO, 0, GPO_PUSH_PULL);
    gpio_init(LED2_PIN, GPO, 0, GPO_PUSH_PULL);
}

void LED_blink()
{
    gpio_set_level(LED1_PIN, 1);                // 设置引脚电平为高电平
    system_delay_ms(100);
    gpio_set_level(LED1_PIN, 0);                // 设置引脚电平为低电平
    system_delay_ms(100);

    gpio_set_level(LED2_PIN, 1);                // 设置引脚电平为高电平
    system_delay_ms(100);
    gpio_set_level(LED2_PIN, 0);                // 设置引脚电平为低电平
    system_delay_ms(100);
}
