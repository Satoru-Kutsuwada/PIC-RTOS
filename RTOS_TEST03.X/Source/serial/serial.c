/*
 * FreeRTOS V202212.01
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
 * https://www.FreeRTOS.org
 * https://github.com/FreeRTOS
 *
 */

/*
Changes from V1.2.5

	+  Clear overrun errors in the Rx ISR.  Overrun errors prevent any further
	   characters being received.

Changes from V2.0.0

	+ Use TickType_t in place of unsigned pdLONG for delay periods.
	+ cQueueReieveFromISR() used in place of xQueueReceive() in ISR.
*/

/* BASIC INTERRUPT DRIVEN SERIAL PORT DRIVER. */

/* Scheduler header files. */
#include "FreeRTOS.h"
#include "task.h"
#include "serial.h"
#include "queue.h"

/*
 * Prototypes for ISR's.  The PIC architecture means that these functions
 * have to be called from port.c.  The prototypes are not however included
 * in the header as the header is common to all ports.
 */
void vSerialTxISR( void );
void vSerialRxISR( void );


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++





/* Hardware pin definitions. */
#define serTX_PIN	UART_TXPORT
#define serRX_PIN	UART_RXPORT

/* Bit/register definitions. */
#define serINPUT				( 1 )
#define serOUTPUT				( 0 )
#define serTX_ENABLE			( ( unsigned short ) 1 )
#define serRX_ENABLE			( ( unsigned short ) 1 )
#define serHIGH_SPEED			( ( unsigned short ) 1 )
#define serCONTINUOUS_RX		( ( unsigned short ) 1 )
#define serCLEAR_OVERRUN		( ( unsigned short ) 0 )
#define serINTERRUPT_ENABLED 	( ( unsigned short ) 1 )
#define serINTERRUPT_DISABLED 	( ( unsigned short ) 0 )

/* All ISR's use the PIC18 low priority interrupt. */
#define							serLOW_PRIORITY ( 0 )

/*-----------------------------------------------------------*/

/* Queues to interface between comms API and interrupt routines. */
static QueueHandle_t xRxedChars;
static QueueHandle_t xCharsForTx;

/*-----------------------------------------------------------*/

xComPortHandle xSerialPortInitMinimal( unsigned long ulWantedBaud, unsigned portBASE_TYPE uxQueueLength )
{
unsigned long ulBaud;

	/* ????????????????????
        SPBRG = ( (FOSC / ????????) / 16 ) - 1 */
	ulBaud = configCPU_CLOCK_HZ / ulWantedBaud;
	ulBaud /= ( unsigned long ) 16;
	ulBaud -= ( unsigned long ) 1;

	/* ISR ?????????????????????????? */
	xRxedChars = xQueueCreate( uxQueueLength, ( unsigned portBASE_TYPE ) sizeof( char ) );
	xCharsForTx = xQueueCreate( uxQueueLength, ( unsigned portBASE_TYPE ) sizeof( char ) );

	portENTER_CRITICAL();
	{
		/* ?????????????????????????????????????? */
		TXSTA = ( unsigned short ) 0;
		RCSTA = ( unsigned short ) 0;

		/* ????????????????? ??? ?????????????? */
		SPBRG = ( unsigned char ) ulBaud;

		/* IO ??????????? USART IO ???????? */
		serTX_PIN = serOUTPUT;
		serRX_PIN = serINPUT;


		/* ?????????????????????????????????? */
		UART_TXIP = serLOW_PRIORITY;
		UART_RCIP = serLOW_PRIORITY;

		/* ???????????????*/
		UART_TXSTA_BRGH = serHIGH_SPEED;
		UART_TXSTA_TXEN = serTX_ENABLE;

		/* Rx ????????????? */
		UART_RCSTA_SPEN  = serRX_ENABLE;
		UART_RCSTA_CREN = serCONTINUOUS_RX;

		/* ??? Rx ????????????????????????? Tx ????????????? */
		UART_RCIE = serINTERRUPT_ENABLED;
	}
	portEXIT_CRITICAL();

	/* ????????????????? ???????? COM ???????????? 
     * ?????????????????????????? NULL ??????????? */
	return NULL;
}
/*-----------------------------------------------------------*/

xComPortHandle xSerialPortInit( eCOMPort ePort, eBaud eWantedBaud, eParity eWantedParity, eDataBits eWantedDataBits, eStopBits eWantedStopBits, unsigned portBASE_TYPE uxBufferLength )
{
	/* ????????????????????
        ???? xSerialPortInitMinimal() ?????????? */
}
/*-----------------------------------------------------------*/

signed portBASE_TYPE xSerialGetChar( xComPortHandle pxPort,signed char * pcRxedChar,TickType_t xBlockTime )
{
	/* ????????????????? ???????????????? 
     * xBlockTime ????????????????? false ??????*/
	if( xQueueReceive( xRxedChars, pcRxedChar, xBlockTime ) )
	{
		return pdTRUE;
	}
	else
	{
		return pdFALSE;
	}
}
/*-----------------------------------------------------------*/
signed portBASE_TYPE xSerialPutChar( xComPortHandle pxPort, signed char cOutChar, TickType_t xBlockTime )
{
	/* ???????????? Tx ???????????? false ?????? */
	if( xQueueSend( xCharsForTx, ( const void * ) &cOutChar, xBlockTime ) != pdPASS )
	{
		return pdFAIL;
	}

	/* ??????????? - ????????????? 1 ?????????????????? */
	PIE1bits.TXIE = serINTERRUPT_ENABLED;

	return pdPASS;
}
/*-----------------------------------------------------------*/

void vSerialClose( xComPortHandle xPort )
{
	/* ????????????????? ??????????????????????????????????????? */
}
/*-----------------------------------------------------------*/

#pragma interruptlow vSerialRxISR save=PRODH, PRODL, TABLAT, section(".tmpdata")
void vSerialRxISR( void )
{
char cChar;
portBASE_TYPE xHigherPriorityTaskWoken = pdFALSE;

	/* ???????????Rxed ????????????????? 
     * ???????????????????????????????????????
     * ??????????????????????*/
	cChar = RCREG;

	/* ??????????????????????*/
	if( RCSTAbits.OERR )
	{
		UART_RCSTA_CREN  = serCLEAR_OVERRUN;
		UART_RCSTA_CREN  = serCONTINUOUS_RX;
	}

	xQueueSendFromISR( xRxedChars, ( const void * ) &cChar, &xHigherPriorityTaskWoken );

	if( xHigherPriorityTaskWoken )
	{
		taskYIELD();
	}
}
/*-----------------------------------------------------------*/

#pragma interruptlow vSerialTxISR save=PRODH, PRODL, TABLAT, section(".tmpdata")
void vSerialTxISR( void )
{
char cChar, cTaskWoken = pdFALSE;

	if( xQueueReceiveFromISR( xCharsForTx, &cChar, &cTaskWoken ) == pdTRUE )
	{
		/* Tx ?????????????????? */
		TXREG = cChar;
	}
	else
	{
		/* ?????????????????????*/
		PIE1bits.TXIE = serINTERRUPT_DISABLED;
	}
}



