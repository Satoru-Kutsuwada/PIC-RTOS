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
 * Creates one or more tasks that repeatedly perform a set of integer
 * calculations.  The result of each run-time calculation is compared to the
 * known expected result - with a mismatch being indicative of an error in the
 * context switch mechanism.
 */

#include <stdlib.h>

/* Scheduler include files. */
#include "FreeRTOS.h"
#include "task.h"

/* Demo program include files. */
#include "integer.h"

/* The constants used in the calculation. */
#define intgCONST1             ( ( long ) 123 )
#define intgCONST2             ( ( long ) 234567 )
#define intgCONST3             ( ( long ) -3 )
#define intgCONST4             ( ( long ) 7 )
#define intgEXPECTED_ANSWER    ( ( ( intgCONST1 + intgCONST2 ) * intgCONST3 ) / intgCONST4 )

#define intgSTACK_SIZE         configMINIMAL_STACK_SIZE

/* これは最小バージョンであるため、タスクを 1 つだけ作成します。 */
#define intgNUMBER_OF_TASKS    ( 1 )

/* タスク関数。 32 ビット計算を繰り返し実行し、結果が期待される結果と比較してチェック
 * されます。 結果が正しくない場合は、コンテキストの切り替えによって何らかの破損が発生
 * した可能性があります。 */
static portTASK_FUNCTION_PROTO( vCompeteingIntMathTask, pvParameters );

/* 計算タスク内で true に設定され、タスクがまだ実行中であることを示す変数。 
 * チェック タスクは変数を false に戻し、次回呼び出されたときに変数がまだ false で
 * ある場合にエラーのフラグを立てます。 */
static BaseType_t xTaskCheck[ intgNUMBER_OF_TASKS ] = { ( BaseType_t ) pdFALSE };

//==============================================================================
//  Prototype
//==============================================================================


/*-----------------------------------------------------------*/

void vStartIntegerMathTasks( UBaseType_t uxPriority )
{
    short sTask;
    BaseType_t Status;

    for( sTask = 0; sTask < intgNUMBER_OF_TASKS; sTask++ )
    {
        Status = xTaskCreate( vCompeteingIntMathTask, "M02", intgSTACK_SIZE, ( void * ) &( xTaskCheck[ sTask ] ), uxPriority, ( TaskHandle_t * ) NULL );
         Xprintf("integer.c %d Status=%d\r\n",__LINE__,Status);
    }
}
/*-----------------------------------------------------------*/

static portTASK_FUNCTION( vCompeteingIntMathTask, pvParameters )
{
/* ???????????????????????????????????????
 * ?????????????? */
    volatile long lValue;
    short sError = pdFALSE;
    volatile BaseType_t * pxTaskHasExecuted;

    Xprintf("portTASK_FUNCTION() START\r\n");
    /* ????? true ????????????????????? 
     * ????????????????????????????????????? */
    pxTaskHasExecuted = ( volatile BaseType_t * ) pvParameters;

    /* ????????????????????? */
    for( ; ; )
    {
        /* ????????? ??????????????????????
         * ?????? ???? ??????????????????? */
        lValue = intgCONST1;
        lValue += intgCONST2;

        /* ???????????????????? */
        #if configUSE_PREEMPTION == 0
        {
            taskYIELD();
        }
        #endif

        /* ????????? */
        lValue *= intgCONST3;
        lValue /= intgCONST4;

        /* ???????????????????TaskHasExecuted ??????????
         * ???? ??????????????????????????? */
        if( lValue != intgEXPECTED_ANSWER ) /*lint !e774 volatile ??????????????????????????? */
        {
            sError = pdTRUE;
        }

        if( sError == pdFALSE )
        {
            /* ?????????????????????????????????
             * ???? ?????????????????????????? */
            portENTER_CRITICAL();
            *pxTaskHasExecuted = pdTRUE;
            portEXIT_CRITICAL();
        }

        /* ???????????????????? */
        #if configUSE_PREEMPTION == 0
        {
            taskYIELD();
        }
        #endif
    }
}
/*-----------------------------------------------------------*/

/* これは、作成されたすべてのタスクがまだ実行中であることを確認するために呼び出されます。*/
BaseType_t xAreIntegerMathsTaskStillRunning( void )
{
    BaseType_t xReturn = pdTRUE;
    short sTask;

    /* チェック変数が true に設定されていることを確認して、数学タスクがまだ実行中であることを確認します。 */
    for( sTask = 0; sTask < intgNUMBER_OF_TASKS; sTask++ )
    {
        if( xTaskCheck[ sTask ] == pdFALSE )
        {
            /* チェックはインクリメントされていないため、エラーが存在します。*/
            xReturn = pdFALSE;
        }

        /* チェック変数をリセットして、次回までに設定されているかどうかを確認できるようにします。 */
        xTaskCheck[ sTask ] = pdFALSE;
    }

    return xReturn;
}
