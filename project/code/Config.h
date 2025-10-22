/*
 * Config.h
 *
 *  Created on: Oct 22, 2025
 *      Author: wisdomlost
 */

#ifndef CONFIG_H_
#define CONFIG_H_

#define LED1_PIN        (A11)
#define LED2_PIN        (A12)
#define PWM_CH1                 (TIM1_PWM_MAP0_CH1_A8)
#define PIT_CH                  (TIM2_PIT )                                      // ʹ�õ������жϱ�� ����޸� ��Ҫͬ����Ӧ�޸������жϱ���� isr.c �еĵ���
#define PIT_PRIORITY            (TIM2_IRQn)                                      // ��Ӧ�����жϵ��жϱ��
#define ADC_CHANNEL1            (ADC1_IN7_A7)
#define FLASH_SECTION_INDEX       (63)                                          // �洢�����õ����� ������һ������
#define FLASH_PAGE_INDEX          (3)                                           // �洢�����õ�ҳ�� ������һ��ҳ��
#define KEY_1                       3
#define KEY_2                       0
#define KEY_UP                      5
#define KEY_DOWN                    4
#define KEY_LEFT                    2
#define KEY_RIGHT                   6
#define KEY_MID                     1
#define KEY_NONE                    7
#define KEY_IN1                     D8
#define KEY_IN2                     B12
#define KEY_IN3                     B14
#define KEY1_EXTI               (EXTI9_5_IRQn)                                  // ��Ӧ�ⲿ�жϵ��жϱ��
#define KEY2_EXTI               (EXTI15_10_IRQn)                                  // ��Ӧ�ⲿ�жϵ��жϱ��
#define KEY3_EXTI               (EXTI15_10_IRQn)                                  // ��Ӧ�ⲿ�жϵ��жϱ��


#endif /* CONFIG_H_ */
