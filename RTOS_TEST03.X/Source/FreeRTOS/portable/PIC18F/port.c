
/*
 * FreeRTOS Kernel V10.5.1
 * Copyright (C) 2021 Amazon.com, Inc. or its affiliates.  All Rights Reserved.
 *
 * SPDX-License-Identifier: MIT
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
Changes between V1.2.4 and V1.2.5

	+ Introduced portGLOBAL_INTERRUPT_FLAG definition to test the global 
	  interrupt flag setting.  Using the two bits defined within
	  portINITAL_INTERRUPT_STATE was causing the w register to get clobbered
	  before the test was performed.

Changes from V1.2.5

	+ Set the interrupt vector address to 0x08.  Previously it was at the
	  incorrect address for compatibility mode of 0x18.

Changes from V2.1.1

	+ PCLATU and PCLATH are now saved as part of the context.  This allows
	  function pointers to be used within tasks.  Thanks to Javier Espeche
	  for the enhancement. 

Changes from V2.3.1

	+ TABLAT is now saved as part of the task context.
	
Changes from V3.2.0

	+ TBLPTRU is now initialised to zero as the MPLAB compiler expects this
	  value and does not write to the register.
*/

/* Scheduler include files. */
#include "FreeRTOS.h"
#include "task.h"

/* MPLAB library include file. */
#include "timers.h"

#include "rtc_main.h"
RTC_DATA RTCdt;

/*-----------------------------------------------------------
 * Implementation of functions defined in portable.h for the PIC port.
 *----------------------------------------------------------*/

/* Hardware setup for tick. */
#define portTIMER_FOSC_SCALE			( ( uint32_t ) 4 )

/* Initial interrupt enable state for newly created tasks.  This value is
copied into INTCON when a task switches in for the first time. */
#define portINITAL_INTERRUPT_STATE			0xc0

/* Just the bit within INTCON for the global interrupt flag. */
#define portGLOBAL_INTERRUPT_FLAG			0x80

/* Constant used for context switch macro when we require the interrupt 
enable state to be unchanged when the interrupted task is switched back in. */
#define portINTERRUPTS_UNCHANGED			0x00

/* Some memory areas get saved as part of the task context.  These memory
area's get used by the compiler for temporary storage, especially when 
performing mathematical operations, or when using 32bit data types.  This
constant defines the size of memory area which must be saved. */
#define portCOMPILER_MANAGED_MEMORY_SIZE	( ( uint8_t ) 0x13 )

/* We require the address of the pxCurrentTCB variable, but don't want to know
any details of its type. */
typedef void TCB_t;
extern volatile TCB_t * volatile pxCurrentTCB;

/* IO port constants. */
#define portBIT_SET		( ( uint8_t ) 1 )
#define portBIT_CLEAR	( ( uint8_t ) 0 )

/*
 * The serial port ISR's are defined in serial.c, but are called from portable
 * as they use the same vector as the tick ISR.
 */
void vSerialTxISR( void );
void vSerialRxISR( void );

/*
 * Perform hardware setup to enable ticks.
 */
static void prvSetupTimerInterrupt( void );

/* 
 * ISR to maintain the tick, and perform tick context switches if the
 * preemptive scheduler is being used.
 */
static void prvTickISR( void );
static void timer0_ISR(void);
static void timer1_ISR(void);

/*
 * ISR placed on the low priority vector.  This calls the appropriate ISR for
 * the actual interrupt.
 */
static void prvLowInterrupt( void );



//==============================================================================
//  Prototype
//==============================================================================

void Wait(uint16_t num);
void putch(unsigned char c);




    
/* 
 * Macro that pushes all the registers that make up the context of a task onto
 * the stack, then saves the new top of stack into the TCB.
 * 
 * If this is called from an ISR then the interrupt enable bits must have been 
 * set for the ISR to ever get called.  Therefore we want to save the INTCON
 * register with the enable bits forced to be set - and ucForcedInterruptFlags 
 * must contain these bit settings.  This means the interrupts will again be
 * enabled when the interrupted task is switched back in.
 *
 * If this is called from a manual context switch (i.e. from a call to yield),
 * then we want to save the INTCON so it is restored with its current state,
 * and ucForcedInterruptFlags must be 0.  This allows a yield from within
 * a critical section.
 *
 * The compiler uses some locations at the bottom of the memory for temporary
 * storage during math and other computations.  This is especially true if
 * 32bit data types are utilised (as they are by the scheduler).  The .tmpdata
 * and MATH_DATA sections have to be stored in there entirety as part of a task
 * context.  This macro stores from data address 0x00 to 
 * portCOMPILER_MANAGED_MEMORY_SIZE.  This is sufficient for the demo 
 * applications but you should check the map file for your project to ensure 
 * this is sufficient for your needs.  It is not clear whether this size is 
 * fixed for all compilations or has the potential to be program specific.
 * 
 * タスクのコンテキストを構成するすべてのレジスタをスタックにプッシュし、新しい
 * スタックのトップを TCB に保存するマクロ。
 * 
 * これが ISR から呼び出される場合は、ISR が呼び出されるように割り込みイネーブル 
 * ビットが設定されている必要があります。 したがって、強制的に設定されたイネーブル 
 * ビットを使用して INTCON レジスタを保存する必要があり、ucForcedInterruptFlags 
 * にはこれらのビット設定が含まれている必要があります。 これは、中断されたタスクが
 * 再び切り替えられると、割り込みが再び有効になることを意味します。
 * 
 * これが手動のコンテキスト切り替え (つまり、yield の呼び出し) から呼び出された場合、
 * 現在の状態で復元されるように INTCON を保存する必要があり、ucForcedInterruptFlags 
 * は 0 でなければなりません。これにより、クリティカル セクション内からの yield が
 * 可能になります。 
 * 
 * コンパイラは、数学やその他の計算中に一時記憶域としてメモリの下部にあるいくつかの
 * 場所を使用します。 これは、(スケジューラによって) 32 ビット データ型が使用される
 * 場合に特に当てはまります。 .tmpdata セクションと MATH_DATA セクションは、タスク 
 * コンテキストの一部として完全にそこに保存する必要があります。 このマクロはデータ
 * アドレス 0x00 から portCOMPILER_MANAGED_MEMORY_SIZE までを格納します。 
 * デモ アプリケーションにはこれで十分ですが、プロジェクトのマップ ファイルをチェック
 * して、これがニーズに十分であることを確認する必要があります。 このサイズがすべての
 * コンパイルで固定されているのか、それともプログラム固有のサイズになる可能性があるの
 * かは不明です。
 */
#define	portSAVE_CONTEXT( ucForcedInterruptFlags )								\
{																				\
		/* Save the status and WREG registers first, as these will get modified	 by the operations below. */	\
		asm("MOVFF	WREG, PREINC1");											\
		asm("MOVFF   STATUS, PREINC1");											\
		/* Save the INTCON register with the appropriate bits forced if necessary - as described above. */		\
		asm("MOVFF	INTCON, WREG");												\
		/*asm("IORLW	(ucForcedInterruptFlags)");	*/								\
		asm("MOVFF	WREG, PREINC1");											\
																				\
	portDISABLE_INTERRUPTS();													\
																				\
                                                                                \
		/* Store the necessary registers to the stack. */						\
		asm("MOVFF	BSR, PREINC1");												\
		asm("MOVFF	FSR2L, PREINC1");											\
		asm("MOVFF	FSR2H, PREINC1");											\
		asm("MOVFF	FSR0L, PREINC1");											\
		asm("MOVFF	FSR0H, PREINC1");											\
		asm("MOVFF	TABLAT, PREINC1");											\
		asm("MOVFF	TBLPTRU, PREINC1");                                         \
		asm("MOVFF	TBLPTRH, PREINC1");											\
		asm("MOVFF	TBLPTRL, PREINC1");											\
		asm("MOVFF	PRODH, PREINC1");											\
		asm("MOVFF	PRODL, PREINC1");											\
		asm("MOVFF	PCLATU, PREINC1");											\
		asm("MOVFF	PCLATH, PREINC1");											\
		/* Store the .tempdata and MATH_DATA areas as described above. */		\
		asm("CLRF	FSR0L, 0");													\
		asm("CLRF	FSR0H, 0");													\
		asm("MOVFF	POSTINC0, PREINC1");										\
		asm("MOVFF	POSTINC0, PREINC1");										\
		asm("MOVFF	POSTINC0, PREINC1");										\
		asm("MOVFF	POSTINC0, PREINC1");										\
		asm("MOVFF	POSTINC0, PREINC1");										\
		asm("MOVFF	POSTINC0, PREINC1");										\
		asm("MOVFF	POSTINC0, PREINC1");										\
		asm("MOVFF	POSTINC0, PREINC1");										\
        asm("MOVFF	POSTINC0, PREINC1");										\
		asm("MOVFF	POSTINC0, PREINC1");										\
		asm("MOVFF	POSTINC0, PREINC1");										\
		asm("MOVFF	POSTINC0, PREINC1");										\
		asm("MOVFF	POSTINC0, PREINC1");										\
		asm("MOVFF	POSTINC0, PREINC1");										\
		asm("MOVFF	POSTINC0, PREINC1");										\
		asm("MOVFF	POSTINC0, PREINC1");										\
		asm("MOVFF	POSTINC0, PREINC1");										\
		asm("MOVFF	POSTINC0, PREINC1");										\
		asm("MOVFF	POSTINC0, PREINC1");										\
		asm("MOVFF	INDF0, PREINC1");											\
		asm("MOVFF	FSR0L, PREINC1");											\
		asm("MOVFF	FSR0H, PREINC1");											\
        /* Store the hardware stack pointer in a temp register before we modify it. */			\
		asm("MOVFF	STKPTR, FSR0L");											\
                                                                                \
																				\
		/* Store each address from the hardware stack. */						\
		while( STKPTR > ( uint8_t ) 0 )                                         \
		{																		\
                                                                                \
				asm("MOVFF	TOSL, PREINC1");									\
				asm("MOVFF	TOSH, PREINC1");									\
				asm("MOVFF	TOSU, PREINC1");									\
				asm("POP");														\
                                                                                \
		}																		\
																				\
		/* Store the number of addresses on the hardware stack (from the temporary register). */	\
		asm("MOVFF	FSR0L, PREINC1");											\
		asm("MOVF	PREINC1, 1, 0");                                            \
                                                                                \
																				\
	/* Save the new top of the software stack in the TCB. */					\
                                                                                \
		asm("MOVFF	(_pxCurrentTCB), FSR0L");									\
		asm("MOVFF	(_pxCurrentTCB + 1), FSR0H");								\
		asm("MOVFF	FSR1L, POSTINC0");											\
		asm("MOVFF	FSR1H, POSTINC0");											\
                                                                                \
}	
/*-----------------------------------------------------------*/

/*
 * This is the reverse of portSAVE_CONTEXT.  See portSAVE_CONTEXT for more
 * details.
 */
#define portRESTORE_CONTEXT_ISR()           \
{                                       \
		/* Set FSR0 to point to pxCurrentTCB->pxTopOfStack. */					\
		asm("MOVFF	(_pxCurrentTCB), FSR0L");									\
		asm("MOVFF	(_pxCurrentTCB + 1), FSR0H");								\
																				\
		/* De-reference FSR0 to set the address it holds into FSR1. (i.e. *( pxCurrentTCB->pxTopOfStack ) ). */		\
		asm("MOVFF	POSTINC0, FSR1L");											\
		asm("MOVFF	POSTINC0, FSR1H");											\
																				\
		/* How many return addresses are there on the hardware stack?  Discard the first byte as we are pointing to the next free space. */			\
		asm("MOVFF	POSTDEC1, FSR0L");											\
		asm("MOVFF	POSTDEC1, FSR0L");											\
                                                                                \
	/* Fill the hardware stack from our software stack. */						\
	STKPTR = 0;																	\
																				\
	while( STKPTR < FSR0L )														\
	{																			\
                                                                                \
			asm("PUSH");														\
			asm("MOVF	POSTDEC1, 0, 0");										\
			asm("MOVWF	TOSU, 0");												\
			asm("MOVF	POSTDEC1, 0, 0");										\
			asm("MOVWF	TOSH, 0");												\
			asm("MOVF	POSTDEC1, 0, 0");										\
			asm("MOVWF	TOSL, 0");												\
                                                                                \
	}																			\
																				\
                      \
		/* Restore the .tmpdata and MATH_DATA memory. */						\
		asm("MOVFF	POSTDEC1, FSR0H");											\
		asm("MOVFF	POSTDEC1, FSR0L");											\
		asm("MOVFF	POSTDEC1, POSTDEC0");										\
		asm("MOVFF	POSTDEC1, POSTDEC0");										\
		asm("MOVFF	POSTDEC1, POSTDEC0");										\
		asm("MOVFF	POSTDEC1, POSTDEC0");										\
		asm("MOVFF	POSTDEC1, POSTDEC0");										\
		asm("MOVFF	POSTDEC1, POSTDEC0");										\
		asm("MOVFF	POSTDEC1, POSTDEC0");										\
		asm("MOVFF	POSTDEC1, POSTDEC0");										\
		asm("MOVFF	POSTDEC1, POSTDEC0");										\
		asm("MOVFF	POSTDEC1, POSTDEC0");										\
		asm("MOVFF	POSTDEC1, POSTDEC0");										\
		asm("MOVFF	POSTDEC1, POSTDEC0");										\
		asm("MOVFF	POSTDEC1, POSTDEC0");										\
		asm("MOVFF	POSTDEC1, POSTDEC0");										\
		asm("MOVFF	POSTDEC1, POSTDEC0");										\
		asm("MOVFF	POSTDEC1, POSTDEC0");										\
		asm("MOVFF	POSTDEC1, POSTDEC0");										\
		asm("MOVFF	POSTDEC1, POSTDEC0");										\
		asm("MOVFF	POSTDEC1, POSTDEC0");										\
		asm("MOVFF	POSTDEC1, INDF0");											\
		/* Restore the other registers forming the tasks context. */			\
		asm("MOVFF	POSTDEC1, PCLATH");											\
		asm("MOVFF	POSTDEC1, PCLATU");											\
		asm("MOVFF	POSTDEC1, PRODL");											\
		asm("MOVFF	POSTDEC1, PRODH");											\
		asm("MOVFF	POSTDEC1, TBLPTRL");										\
		asm("MOVFF	POSTDEC1, TBLPTRH");										\
		asm("MOVFF	POSTDEC1, TBLPTRU");										\
		asm("MOVFF	POSTDEC1, TABLAT");											\
		asm("MOVFF	POSTDEC1, FSR0H");											\
		asm("MOVFF	POSTDEC1, FSR0L");											\
		asm("MOVFF	POSTDEC1, FSR2H");											\
		asm("MOVFF	POSTDEC1, FSR2L");											\
		asm("MOVFF	POSTDEC1, BSR");											\
		/* The next byte is the INTCON register.  Read this into WREG as some manipulation is required. */		\
		asm("MOVFF	POSTDEC1, WREG");											\
                                                                                \
																				\
	/* From the INTCON register, only the interrupt enable bits form part of the tasks context.  It is perfectly legitimate for another task to have modified any other bits.  We therefore only restore the top two bits.	 */	\
	                                                                            \
			asm("MOVFF	POSTDEC1, STATUS");                                     \
			asm("MOVFF	POSTDEC1, WREG");										\
			/* Return enabling interrupts. */									\
            mDEBUG_INT2A2('S','T','5',STKPTR);      \
			asm("RETFIE	0");													\
                                                                                \
																				\
}

/*
 * これは portSAVE_CONTEXT の逆です。 詳細については、「portSAVE_CONTEXT」を参照してください。
 */
#define portRESTORE_CONTEXT2()													\
{																				\
	asm(																		\
		/* FSR0 が pxCurrentTCB->pxTopOfStack を指すように設定します。 */					\
		"MOVFF	(_pxCurrentTCB), FSR0L;"											\
		"MOVFF	(_pxCurrentTCB + 1), FSR0H;"										\
																				\
		/* FSR0 を逆参照して、FSR0 が保持するアドレスを FSR1 に設定します。
         (つまり *( pxCurrentTCB->pxTopOfStack ) )。 */							\
		"MOVFF	POSTINC0, FSR1L;"												\
		"MOVFF	POSTINC0, FSR1H;"												\
																				\
		/* ハードウェア スタックにはリターン アドレスがいくつありますか?   */      \
		/* 次の空き領域を指しているため、最初のバイトを破棄します。 */	\
		"MOVFF	POSTDEC1, FSR0L;"												\
		"MOVFF	POSTDEC1, FSR0L"												\
	);	 																		\
																				\
	/* ソフトウェア スタックからハードウェア スタックを埋めます。 */				\
	STKPTR = 0;																	\
																				\
	while( STKPTR < FSR0L )														\
	{																			\
		asm("PUSH"); 																\
		asm("MOVF	POSTDEC1, 0, 0"); 											\
		asm("MOVWF	TOSU, 0"); 													\
		asm("MOVF	POSTDEC1, 0, 0"); 											\
		asm("MOVWF	TOSH, 0"); 													\
		asm("MOVF	POSTDEC1, 0, 0"); 											\
		asm("MOVWF	TOSL, 0"); 													\
		                                                                     \
	}																			\
																				\
	asm(																		\
		/* .tmpdata および MATH_DATA メモリを復元します。*/						\
		"MOVFF	POSTDEC1, FSR0H;"												\
		"MOVFF	POSTDEC1, FSR0L;"												\
		"MOVFF	POSTDEC1, POSTDEC0;"												\
		"MOVFF	POSTDEC1, POSTDEC0;"												\
		"MOVFF	POSTDEC1, POSTDEC0;"												\
		"MOVFF	POSTDEC1, POSTDEC0;"												\
		"MOVFF	POSTDEC1, POSTDEC0;"												\
		"MOVFF	POSTDEC1, POSTDEC0;"												\
		"MOVFF	POSTDEC1, POSTDEC0;"												\
		"MOVFF	POSTDEC1, POSTDEC0;"												\
		"MOVFF	POSTDEC1, POSTDEC0;"												\
		"MOVFF	POSTDEC1, POSTDEC0;"												\
		"MOVFF	POSTDEC1, POSTDEC0;"												\
		"MOVFF	POSTDEC1, POSTDEC0;"												\
		"MOVFF	POSTDEC1, POSTDEC0;"												\
		"MOVFF	POSTDEC1, POSTDEC0;"												\
		"MOVFF	POSTDEC1, POSTDEC0;"												\
		"MOVFF	POSTDEC1, POSTDEC0;"												\
		"MOVFF	POSTDEC1, POSTDEC0;"												\
		"MOVFF	POSTDEC1, POSTDEC0;"												\
		"MOVFF	POSTDEC1, POSTDEC0;"												\
		"MOVFF	POSTDEC1, INDF0;"												\
		/*タスクコンテキストを形成する他のレジスタを復元します。 */			\
		"MOVFF	POSTDEC1, PCLATH;"												\
		"MOVFF	POSTDEC1, PCLATU;"												\
		"MOVFF	POSTDEC1, PRODL;"												\
		"MOVFF	POSTDEC1, PRODH;"												\
		"MOVFF	POSTDEC1, TBLPTRL;"												\
		"MOVFF	POSTDEC1, TBLPTRH;"												\
		"MOVFF	POSTDEC1, TBLPTRU;"												\
		"MOVFF	POSTDEC1, TABLAT;"												\
		"MOVFF	POSTDEC1, FSR0H;"												\
		"MOVFF	POSTDEC1, FSR0L;"												\
		"MOVFF	POSTDEC1, FSR2H;"												\
		"MOVFF	POSTDEC1, FSR2L;"												\
		"MOVFF	POSTDEC1, BSR;"													\
		/* 次のバイトは INTCON レジスタです。 多少の操作が必要なため、これを WREG に読み込みます。 */									\
		"MOVFF	POSTDEC1, WREG"													\
	);                                                                          \
																				\
	/* INTCON レジスタからは、割り込みイネーブル ビットのみがタスク コンテキストの一部を形成します。 別のタスクが他のビットを変更することは完全に正当です。 したがって、上位 2 ビットのみを復元します。.*/                            \
																				\
    asm("MOVFF	POSTDEC1, STATUS");											\
    asm("MOVFF	POSTDEC1, WREG");												\
        /*割り込みを行わずに戻ります。 コンテキストが重要な領域から保存された可能性があります。 */								\
    asm("RETURN	0");															\
}
/*-----------------------------------------------------------*/


/* 
 * See header file for description. 
 */
StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters )
{
uint32_t ulAddress;
uint8_t ucBlock;

	/* Place a few bytes of known values on the bottom of the stack. 
	This is just useful for debugging. */

	*pxTopOfStack = 0x11;
	pxTopOfStack++;
	*pxTopOfStack = 0x22;
	pxTopOfStack++;
	*pxTopOfStack = 0x33;
	pxTopOfStack++;


	/* Simulate how the stack would look after a call to vPortYield() generated
	by the compiler. 

	First store the function parameters.  This is where the task will expect to
	find them when it starts running. */
	ulAddress = ( uint32_t ) pvParameters;
	*pxTopOfStack = ( StackType_t ) ( ulAddress & ( uint32_t ) 0x00ff );
	pxTopOfStack++;

	ulAddress >>= 8;
	*pxTopOfStack = ( StackType_t ) ( ulAddress & ( uint32_t ) 0x00ff );
	pxTopOfStack++;

	/* Next we just leave a space.  When a context is saved the stack pointer
	is incremented before it is used so as not to corrupt whatever the stack
	pointer is actually pointing to.  This is especially necessary during 
	function epilogue code generated by the compiler. */
	*pxTopOfStack = 0x44;
	pxTopOfStack++;

	/* Next are all the registers that form part of the task context. */
	
	*pxTopOfStack = ( StackType_t ) 0x66; /* WREG. */
	pxTopOfStack++;

	*pxTopOfStack = ( StackType_t ) 0xcc; /* Status. */
	pxTopOfStack++;

	/* INTCON is saved with interrupts enabled. */
	*pxTopOfStack = ( StackType_t ) portINITAL_INTERRUPT_STATE; /* INTCON */
	pxTopOfStack++;

	*pxTopOfStack = ( StackType_t ) 0x11; /* BSR. */
	pxTopOfStack++;

	*pxTopOfStack = ( StackType_t ) 0x22; /* FSR2L. */
	pxTopOfStack++;

	*pxTopOfStack = ( StackType_t ) 0x33; /* FSR2H. */
	pxTopOfStack++;

	*pxTopOfStack = ( StackType_t ) 0x44; /* FSR0L. */
	pxTopOfStack++;

	*pxTopOfStack = ( StackType_t ) 0x55; /* FSR0H. */
	pxTopOfStack++;

	*pxTopOfStack = ( StackType_t ) 0x66; /* TABLAT. */
	pxTopOfStack++;

	*pxTopOfStack = ( StackType_t ) 0x00; /* TBLPTRU. */
	pxTopOfStack++;

	*pxTopOfStack = ( StackType_t ) 0x88; /* TBLPTRUH. */
	pxTopOfStack++;

	*pxTopOfStack = ( StackType_t ) 0x99; /* TBLPTRUL. */
	pxTopOfStack++;

	*pxTopOfStack = ( StackType_t ) 0xaa; /* PRODH. */
	pxTopOfStack++;

	*pxTopOfStack = ( StackType_t ) 0xbb; /* PRODL. */
	pxTopOfStack++;

	*pxTopOfStack = ( StackType_t ) 0x00; /* PCLATU. */
	pxTopOfStack++;

	*pxTopOfStack = ( StackType_t ) 0x00; /* PCLATH. */
	pxTopOfStack++;

	/* Next the .tmpdata and MATH_DATA sections. */
	for( ucBlock = 0; ucBlock <= portCOMPILER_MANAGED_MEMORY_SIZE; ucBlock++ )
	{
		*pxTopOfStack = ( StackType_t ) ucBlock;
		*pxTopOfStack++;
	}

	/* Store the top of the global data section. */
	*pxTopOfStack = ( StackType_t ) portCOMPILER_MANAGED_MEMORY_SIZE; /* Low. */
	pxTopOfStack++;

	*pxTopOfStack = ( StackType_t ) 0x00; /* High. */
	pxTopOfStack++;

	/* The only function return address so far is the address of the 
	task. */
	ulAddress = ( uint32_t ) pxCode;

	/* TOS low. */
	*pxTopOfStack = ( StackType_t ) ( ulAddress & ( uint32_t ) 0x00ff );
	pxTopOfStack++;
	ulAddress >>= 8;

	/* TOS high. */
	*pxTopOfStack = ( StackType_t ) ( ulAddress & ( uint32_t ) 0x00ff );
	pxTopOfStack++;
	ulAddress >>= 8;

	/* TOS even higher. */
	*pxTopOfStack = ( StackType_t ) ( ulAddress & ( uint32_t ) 0x00ff );
	pxTopOfStack++;

	/* Store the number of return addresses on the hardware stack - so far only
	the address of the task entry point. */
	*pxTopOfStack = ( StackType_t ) 1;
	pxTopOfStack++;

	return pxTopOfStack;
}
/*-----------------------------------------------------------*/

BaseType_t xPortStartScheduler( void )
{
    //uint32_t dt; 
    Xprintf("xPortStartScheduler(001) \r\n");
	/* ISR がプリエンプティブ スケジューラを使用しているティックのタイマーをセットアップします。*/
	prvSetupTimerInterrupt(); 

    //dt = (uint32_t)pxCurrentTCB;
    //pxCurrentTCB;
    //Xprintf("pxCurrentTCB=%p\r\n",(uint32_t)pxCurrentTCB);
	
    Xprintf("xPortStartScheduler(002) \r\n");
    
    
	/* 実行する最初のタスクのコンテキストを復元します。 */
	portRESTORE_CONTEXT2();
    

    //Xprintf("xPortStartScheduler(003) \r\n");
	/* ここに来るべきではない。 コンパイラの警告を停止するには、関数名を使用します。 */
	( void ) prvLowInterrupt;
	( void ) prvTickISR;
    //Xprintf("xPortStartScheduler(003) \r\n");

	return pdTRUE;
}
/*-----------------------------------------------------------*/

void vPortEndScheduler( void )
{
	/* It is unlikely that the scheduler for the PIC port will get stopped
	once running.  If required disable the tick interrupt here, then return 
	to xPortStartScheduler(). */
}
/*-----------------------------------------------------------*/

/*
 * Manual context switch.  This is similar to the tick context switch,
 * but does not increment the tick count.  It must be identical to the
 * tick context switch in how it stores the stack of a task.
 */
void vPortYield( void )
{
	/* This can get called with interrupts either enabled or disabled.  We
	will save the INTCON register with the interrupt enable bits unmodified. */
	portSAVE_CONTEXT( portINTERRUPTS_UNCHANGED );

	/* Switch to the highest priority task that is ready to run. */
	vTaskSwitchContext();

	/* Start executing the task we have just switched to. */
	portRESTORE_CONTEXT2();
}
/*-----------------------------------------------------------*/

/*
 * Vector for ISR.  Nothing here must alter any registers!
 */
#ifdef ___NOP
void __interrupt(high_priority) high_isr(void) 
{   
    Xprintf("prvLowInterrupt\r\n");
    if( PIR1bits.CCP1IF ){		
		asm( "goto _prvTickISR" );
	}
}
#endif




#ifdef ___NOP
#pragma code high_vector=0x08
static void prvLowInterrupt( void )
{
	/* Was the interrupt the tick? */
	//if( PIR1bits.CCP1IF ){		
    if( CCPTMR_ISRIF ){        

		asm( "goto prvTickISR" );
	}
    
    if( INTCONbits.TMR0IF ){
        asm( "goto timer0_ISR" );
	}
    
    if( PIR1bits.TMR1IF ){        // 割込みフラグをクリア
        asm( "goto timer1_ISR");
    }
    
    
	/* Was the interrupt a byte being received? */
//	if( PIR1bits.RCIF ){
//		asm( "goto vSerialRxISR" );
//	}

	/* Was the interrupt the Tx register becoming empty? */
//	if( PIR1bits.TXIF ){
//		if( PIE1bits.TXIE {
//			asm( "goto vSerialTxISR" );
//		}
//	}
}
#pragma code
#endif  // ___NOP


#define TIMER0_100usec 0xFB60
#define TIMER1_10msec 0x15A0
uint16_t timer_cnt;
uint16_t timer_cnt_buf;


#ifdef ___NOP


    



/*-----------------------------------------------------------*/

/*
 * ティックの ISR
 * これにより、ティック数が増加し、プリエンプティブ スケジューラを使用している場合は、
 * コンテキストの切り替えが実行されます。 これは、タスクのコンテキストを保存する方法
 * において、手動コンテキスト切り替えと同じである必要があります。 
 */
static void prvTickISR( void )
{
	/* ISR を起動するには割り込みが有効になっている必要があるため、割り込みを有効に
     * してコンテキストを保存する必要があります。 */
	portSAVE_CONTEXT( portGLOBAL_INTERRUPT_FLAG );
	// PIR1bits.CCP1IF = 0;
    CCPTMR_ISRIF = 0;        

    //Xprintf("prvTickISR()\r\n");

	/* ティック数を維持します。 */
	if( xTaskIncrementTick() != pdFALSE )
	{
        //Xprintf("prvTickISR(1)\r\n");
		/* 実行準備ができている最も優先度の高いタスクに切り替えます。 */
		vTaskSwitchContext();
	}

	portRESTORE_CONTEXT_ISR();
}
/*-----------------------------------------------------------*/

static void prvTickISR( void )
{
    CCPTMR_ISRIF = 0;    
    timer_cnt++;
    
}
static void timer0_ISR(void)
{
    INTCONbits.TMR0IF = 0;      // 割込みフラグをクリア
    // タイマー値再設定
    TMR0H = TIMER0_100usec >> 8;
    TMR0L = TIMER0_100usec & 0x00ff;
    timer_cnt++;
    
}
static void timer1_ISR(void)
{
    PIR1bits.TMR1IF = 0;        // 割込みフラグをクリア
    TMR1H = TIMER1_10msec >> 8;
    TMR1L = TIMER1_10msec & 0x00ff;
    timer_cnt++;
    
}
#endif  // ___NOP



void __interrupt(high_priority) high_isr(void) 
{ 
    if( CCPTMR_ISRIF ){
        mPUTCH('\r');
        mPUTCH('\n');
        mDEBUG_INT2A2('S','T','1',STKPTR);
        /* ISR を起動するには割り込みが有効になっている必要があるため、割り込みを有効に
         * してコンテキストを保存する必要があります。 */
        portSAVE_CONTEXT( portGLOBAL_INTERRUPT_FLAG );
        mDEBUG_INT2A2('S','T','2',STKPTR);

        // PIR1bits.CCP1IF = 0;
        CCPTMR_ISRIF = 0;        
        //putch('C');

        /* ティック数を維持します。 */
        if( xTaskIncrementTick() != pdFALSE )
        {
            mDEBUG_INT2A2('S','T','3',STKPTR);
            //Xprintf("prvTickISR(1)\r\n");
            /* 実行準備ができている最も優先度の高いタスクに切り替えます。 */
            vTaskSwitchContext();
        }
        mDEBUG_INT2A2('S','T','4',STKPTR);
        portRESTORE_CONTEXT_ISR();
    }
    
    //==============================
    // TIMER0
    //==============================
    if( INTCONbits.TMR0IF ){
        INTCONbits.TMR0IF = 0;      // 割込みフラグをクリア
        //timer_cnt++;
        // タイマー値再設定
        TMR0H = TIMER0_100usec >> 8;
        TMR0L = TIMER0_100usec & 0x00ff;
        //putch('A');
        RTCdt.usec ++;
        if( RTCdt.usec > 10 ){
            RTCdt.usec = 0;
            RTCdt.msec ++;
            if( RTCdt.msec > 1000 ){
                RTCdt.msec = 0;
                RTCdt.sec ++;
                if( RTCdt.sec > 60 ){
                    RTCdt.sec = 0;
                    RTCdt.min ++;
                    if( RTCdt.min > 60 ){
                        RTCdt.min = 0;
                        RTCdt.hour ++;                
                    }
                }
            }
        }
    }    
}



/*
 * 定期的なティックのタイマーを設定します。
 */
static void prvSetupTimerInterrupt( void )
{
    const uint32_t ulConstCompareValue = ( ( configCPU_CLOCK_HZ / portTIMER_FOSC_SCALE ) / configTICK_RATE_HZ );
    uint32_t ulCompareValue;
    //uint8_t ucByte;
    //uint16_t i;

	/* この関数を呼び出すと割り込みは無効になります。   
     * タイマ 1 のコンペアマッチを使用してティック割り込みを提供するように CCP1 
     * をセットアップします。*/

    /* タイムカウントをクリアしてからタイマーを設定してください。 */

    Xprintf("prvSetupTimerInterrupt()\r\n");

	TMR3H = ( uint8_t ) 0x00;
	TMR3L = ( uint8_t ) 0x00;

	/* コンペアマッチ値を設定します。 */
	ulCompareValue = ulConstCompareValue;
	CCPRL = ( uint8_t ) ( ulCompareValue & ( uint32_t ) 0xff );
	ulCompareValue >>= ( uint32_t ) 8;
	CCPRH = ( uint8_t ) ( ulCompareValue & ( uint32_t ) 0xff );	
    
    
    Xprintf("CCPR4=%x,%x\r\n",CCPR1H,CCPR1L);

    CCPCON = 0b00001011;
    CCPTMR = 0b00000001;

    T3CON  = 0b00001011;
    //T3GCON  = 0b00001011;     // 0x0b

    INTCONbits.GIE_GIEH = 1;
    INTCONbits.PEIE_GIEL = 1;
    RCONbits.IPEN = 1;
    Xprintf("prvSetupTimerInterrupt(2)\r\n");

    CCPTMR_ISRIP = 1;    // Timer1 Priority High
	CCPTMR_ISRIF = 0;        
	CCPTMR_ISRIE = 1;		/*< Interrupt enable. */

    Xprintf("prvSetupTimerInterrupt(3)\r\n");
 
    
    
#ifdef ___NOP
    
    /* 1011 = 比較モード。 特殊イベントのトリガー 
     * (ECCPx が TMR1 または TMR3 をリセット、A/D 変換を開始、CCPxIF ビットをセット)*/
    
	CCP1CONbits.CCP1M0 = portBIT_SET;	/*< Compare match mode. */
	CCP1CONbits.CCP1M1 = portBIT_SET;	/*< Compare match mode. */
	CCP1CONbits.CCP1M2 = portBIT_CLEAR;	/*< Compare match mode. */
	CCP1CONbits.CCP1M3 = portBIT_SET;	/*< Compare match mode. */

	/* グローバル割り込みビットのみを使用するので、ペリフェラル ビットを true に設定します。 */
	// INTCONbits.GIEL = portBIT_SET;
      
	/* ティックを生成するタイマーを設定するためのライブラリ関数を提供しました。 */
    
    T1CON = 0;
    T1CON = 0b10001011;     // 0x43
    T1CONbits.TMR1ON  = 1;          // タイマー 1 を有効にする
    T1CONbits.RD16    = 1;          // 6 ビット読み取り/書き込みモード有効
    T1CONbits.TMR1CS  = 0x01;       // ソースはシステム クロック (FOSC)(1)
    T1CONbits.T1CKPS  = 0x00;       //  1:1 プリスケール値
    T1CONbits.T1OSCEN = 0;          // Timer1 クリスタルドライバーはオフ
    T1CONbits.nT1SYNC = 0;          // Timer1 クリスタルドライバーはオフ
    
	//OpenTimer1( T1_16BIT_RW & T1_SOURCE_INT & T1_PS_1_1 & T1_CCP1_T3_CCP2 & T1_OSC1EN_OFF );
	//OpenTimer1( 0x63 );
#endif
}

