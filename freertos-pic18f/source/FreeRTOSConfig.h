/*
 * FreeRTOS V202012.00
 * Copyright (C) 2020 Amazon.com, Inc. or its affiliates.  All Rights Reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in
 * the Software without restriction, including without limitation the rights to
 * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 * the Software, and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 * FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 * COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 * IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 * http://www.FreeRTOS.org
 * http://aws.amazon.com/freertos
 *
 * 1 tab == 4 spaces!
 */

#ifndef FREERTOS_CONFIG_H
#define FREERTOS_CONFIG_H

#include <p18cxxx.h>

#define _XTAL_FREQ  (( unsigned long ) 48000000) 
#define UART_BAUDRATE   ( ( unsigned long ) 57600 ) 
/*-----------------------------------------------------------
 * Application specific definitions.
 *
 * These definitions should be adjusted for your particular hardware and
 * application requirements.
 *
 * THESE PARAMETERS ARE DESCRIBED WITHIN THE 'CONFIGURATION' SECTION OF THE
 * FreeRTOS API DOCUMENTATION AVAILABLE ON THE FreeRTOS.org WEB SITE. 
 *
 * See http://www.freertos.org/a00110.html
 *----------------------------------------------------------*/

#define configUSE_PREEMPTION			1
#define configUSE_IDLE_HOOK				0
#define configUSE_TICK_HOOK				0
#define configTICK_RATE_HZ				( ( TickType_t ) 100 )
#define configCPU_CLOCK_HZ				(_XTAL_FREQ )
#define configMAX_PRIORITIES			( 4 )
#define configMINIMAL_STACK_SIZE		( 160 )
#define configTOTAL_HEAP_SIZE			( ( size_t ) 1024 )
#define configMAX_TASK_NAME_LEN			( 4 )
#define configUSE_TRACE_FACILITY		0
#define configUSE_16_BIT_TICKS			1
#define configIDLE_SHOULD_YIELD			1

/* Co-routine definitions. */
#define configUSE_CO_ROUTINES 		0
#define configMAX_CO_ROUTINE_PRIORITIES ( 2 )

/* Set the following definitions to 1 to include the API function, or zero
to exclude the API function. */

#define INCLUDE_vTaskPrioritySet		0
#define INCLUDE_uxTaskPriorityGet		0
#define INCLUDE_vTaskDelete				1
#define INCLUDE_vTaskCleanUpResources	0
#define INCLUDE_vTaskSuspend			1
#define INCLUDE_vTaskDelayUntil			1
#define INCLUDE_vTaskDelay				1

//=============================================================================
// UART
//=============================================================================
//#define ___UART_CH1


#ifdef ___UART_CH1
    
// PORT ??
#define UART_TXPORT        TRISCbits.TRISC6
#define UART_RXPORT        TRISCbits.TRISC7
    
// UART1????????
#define UART_TXSTA             TXSTA1
#define UART_TXSTA_TXEN        TXSTA1bits.TXEN
#define UART_TXSTA_BRGH        TXSTA1bits.BRGH
#define UART_TXSTA_TRMT        TXSTA1bits.TRMT
#define UART_RCSTA              RCSTA1
#define UART_RCSTA_SPEN        RCSTA1bits.SPEN
#define UART_RCSTA_CREN        RCSTA1bits.CREN
#define UART_BAUDCON            BAUDCON1
#define UART_BAUDCON_BRG16      BAUDCON1bits.BRG16
#define UART_SPBRGH             SPBRGH1
#define UART_SPBRG              SPBRG1
#define UART_TXREG              TXREG1
#define UART_RCREG              RCREG1

// ???????????
#define UART_RCIF              PIR1bits.RC1IF
#define UART_RCIE              PIE1bits.RC1IE
#define UART_RCIP              IPR1bits.RC1IP
#define UART_TXIF              PIR1bits.TX1IF
#define UART_TXIE              PIE1bits.TX1IE
#define UART_TXIP              IPR1bits.TX1IP

#else

// PORT ??
#define UART_TXPORT        TRISDbits.TRISD6
#define UART_RXPORT        TRISDbits.TRISD5
    
// UART2????????
#define UART_TXSTA             TXSTA2
#define UART_TXSTA_TXEN        TXSTA2bits.TXEN
#define UART_TXSTA_BRGH        TXSTA2bits.BRGH
#define UART_TXSTA_TRMT        TXSTA2bits.TRMT
#define UART_RCSTA              RCSTA2
#define UART_RCSTA_SPEN        RCSTA2bits.SPEN
#define UART_RCSTA_CREN        RCSTA2bits.CREN
#define UART_BAUDCON            BAUDCON2
#define UART_BAUDCON_BRG16      BAUDCON2bits.BRG16
#define UART_SPBRGH             SPBRGH2
#define UART_SPBRG              SPBRG2
#define UART_TXREG              TXREG2
#define UART_RCREG              RCREG2

// ???????????
#define UART_RCIF              PIR3bits.RC2IF
#define UART_RCIE              PIE3bits.RC2IE
#define UART_RCIP              IPR3bits.RC2IP
#define UART_TXIF              PIR3bits.TX2IF
#define UART_TXIE              PIE3bits.TX2IE
#define UART_TXIP              IPR3bits.TX2IP


#endif  // ___UART_CH1

//=============================================================================
// COMPARE
//=============================================================================

#define ___COMPARE_ECCP1
//#define ___COMPARE_CCP4

#ifdef  ___COMPARE_ECCP1

// ECCP1/2/3 CONTROL
#define CCPCON              CCP1CON
#define CCPCON_CCPM0        CCP1CONbits.CCP1M0
#define CCPCON_CCPM1        CCP1CONbits.CCP1M1
#define CCPCON_CCPM2        CCP1CONbits.CCP1M2
#define CCPCON_CCPM3        CCP1CONbits.CCP1M3

// TIMER SELECT REGISTER 
#define CCPTMR              CCPTMRS0
#define CCPTMR_SEL0         CCPTMRS0bits.C1TSEL0
#define CCPTMR_SEL1         CCPTMRS0bits.C1TSEL1
#define CCPTMR_SEL2         CCPTMRS0bits.C1TSEL2

// COUNTER
#define CCPRL               CCPR1L 
#define CCPRH               CCPR1H 


// interruput
#define CCPTMR_ISRIP        IPR1bits.CCP1IP
#define CCPTMR_ISRIE        PIE1bits.CCP1IE
#define CCPTMR_ISRIF        PIR1bits.CCP1IF

#endif

#ifdef  ___COMPARE_CCP4

// ECCP1/2/3 CONTROL
#define CCPCON              CCP4CON
#define CCPCON_CCPM0        CCP4CONbits.CCP4M0
#define CCPCON_CCPM1        CCP4CONbits.CCP4M1
#define CCPCON_CCPM2        CCP4CONbits.CCP4M2
#define CCPCON_CCPM3        CCP4CONbits.CCP4M3

// TIMER SELECT REGISTER 
#define CCPTMR              CCPTMRS1
#define CCPTMR_SEL0         CCPTMRS1bits.C4TSEL0
#define CCPTMR_SEL1         CCPTMRS1bits.C4TSEL1

// COUNTER
#define CCPRL               CCPR4L 
#define CCPRH               CCPR4H 

// interruput
#define CCPTMR_ISRIP        IPR4bits.CCP4IP
#define CCPTMR_ISRIE        PIE4bits.CCP4IE
#define CCPTMR_ISRIF        PIR4bits.CCP4IFF

#endif



#endif /* FREERTOS_CONFIG_H */
