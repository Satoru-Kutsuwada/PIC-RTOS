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
 * Instead of the normal single demo application, the PIC18F demo is split
 * into several smaller programs of which this is the first.  This enables the
 * demo's to be executed on the RAM limited 40 pin devices.  The 64 and 80 pin
 * devices require a more costly development platform and are not so readily
 * available.
 *
 * The RTOSDemo1 project is configured for a PIC18F452 device.  Main1.c starts 5
 * tasks (including the idle task).
 *
 * The first task runs at the idle priority.  It repeatedly performs a 32bit
 * calculation and checks it's result against the expected value.  This checks
 * that the temporary storage utilised by the compiler to hold intermediate
 * results does not get corrupted when the task gets switched in and out.  See
 * demo/common/minimal/integer.c for more information.
 *
 * The second and third tasks pass an incrementing value between each other on
 * a message queue.  See demo/common/minimal/PollQ.c for more information.
 *
 * Main1.c also creates a check task.  This periodically checks that all the
 * other tasks are still running and have not experienced any unexpected
 * results.  If all the other tasks are executing correctly an LED is flashed
 * once every mainCHECK_PERIOD milliseconds.  If any of the tasks have not
 * executed, or report and error, the frequency of the LED flash will increase
 * to mainERROR_FLASH_RATE.
 *
 * On entry to main an 'X' is transmitted.  Monitoring the serial port using a
 * dumb terminal allows for verification that the device is not continuously
 * being reset (no more than one 'X' should be transmitted).
 *
 * https://www.FreeRTOS.org contains important information on the use of the
 * PIC18F port.
 */

/*
Changes from V2.0.0

	+ Delay periods are now specified using variables and constants of
	  TickType_t rather than unsigned long.
*/

/* Scheduler include files. */
#include "FreeRTOS.h"
#include "FreeRTOSConfig.h"
#include "task.h"
#include "semphr.h"
//#include "pic18f47j53.h"
/* Demo app include files. */
#include "PollQ.h"
#include "integer.h"
#include "partest.h"
#include "serial.h"


#include <stdarg.h>





#pragma config CFGPLLEN = ON
#pragma config WDTEN = OFF          //WDT disabled (enabled by SWDTEN bit)
#pragma config PLLDIV = 4           //Divide by 4 (16 MHz oscillator input)
#pragma config STVREN = OFF          //stack overflow/underflow reset enabled
#pragma config XINST = OFF          //Extended instruction set disabled
//#pragma config DEBUG   = ON


/*******************************************************************************
 * < CONFIG1H >
 * 
 * CPDIVV (システムクロック分周設定):
 * OSC1_PLL1: システムクロックは分周されたPLLクロックの1/1の周波数になります。
 * 
 * CP0 (コードプロテクト0):
 * 1 (有効): コードメモリのセクション0（通常は0x0000〜0x7FFFの範囲）を読み取り保護します。
 * この領域のコードがプログラマブルデバイスの読み込み操作から保護され、改ざんを防ぎます。
 * ただし、書き込み操作には影響しません。
 * 
 ******************************************************************************/
#pragma config CPUDIV = OSC1        //No CPU system clock divide
#pragma config CP0 = OFF            //Program memory is not code-protected

/*******************************************************************************
 * < CONFIG2L >
 * 
 * FOSC (オシレータ設定):
 * HSPLL_HS: 外部クロック(クリスタル)を使用し、PLL (位相ロックループ) を有効にします。
 * PLLは、クロック信号を増幅および周波数変換するために使用され、高速な動作を実現します。
 * 
 * SOSCSEL (セカンダリオシレータ選択):
 * 0: セカンダリオシレータは選択されていません。マイクロコントローラは、主に外部クロック(クリスタル)を使用して動作します。
 * 
 * CLKOEC (クロック出力イネーブル):
 * 0: マイクロコントローラから外部にクロック信号を出力する機能は使用されません。
 * 
 * FCMEN (クロック監視と切り替えイネーブル):
 * 0: クロック監視と自動切り替え機能は無効になっています。
 *    この機能を有効にすると、外部クロックの異常な動作を監視し、自動的に内部オシレータに切り替えることができます。
 * 
 * IESO (内部/外部スイッチオーバー):
 * 0: 内部/外部クロックのスイッチオーバー機能は無効になっています。
 *    この機能を有効にすると、内部オシレータと外部クロックの切り替えを制御できます。
 * 
 ******************************************************************************/
//#pragma config FOSC    = HSPLL_HS  // 外部クロック(クリスタル)を使用し、PLLを有効にする設定
//#pragma config SOSCSEL = 0
//#pragma config CLKOEC  = 0	

#pragma config OSC = HSPLL          //HS oscillator, PLL enabled, HSPLL used by USB
#pragma config FCMEN = OFF          //Fail-Safe Clock Monitor disabled
#pragma config IESO = OFF           //Two-Speed Start-up disabled

/*******************************************************************************
 * < CONFIG2H >
 * 
 * WDTPS (ウォッチドッグタイマポストスケール選択):
 * 0x0F: ウォッチドッグタイマのポストスケール値が0x0Fに設定されています。
 * この設定では、ウォッチドッグタイマが1:32768のポストスケールで動作します。
 * 
 ******************************************************************************/
//#pragma config WDTPS = 0x0f    // Watchdog Timer Postscale Select (1:32768)
#pragma config WDTPS = 32768        //1:32768
/*******************************************************************************
 * < CONFIG3L >
 * 
 * DSWDTPS<3:0> (ディープスリープウォッチドッグタイマポストスケールセレクト):
 * このビットフィールドは、ディープスリープモードでのウォッチドッグタイマのポストスケール値を設定します。
 * 推奨設定は、一般的な設定は、長いポストスケール値を選択することです。
 * 
 * DSWDTEN (ディープスリープウォッチドッグタイマイネーブル):
 * このビットは、ディープスリープモードでのウォッチドッグタイマの動作を有効または無効にします。
 * 推奨設定は、ウォッチドッグタイマの使用が必要な場合は有効にし、必要ない場合は無効にします。
 * 
 * DSBOREN (ディープスリープブラウンアウトリセットイネーブル):
 * このビットは、ディープスリープモードでのブラウンアウトリセット（電源降下時のリセット）の動作を有効または無効にします。
 * 推奨設定は、ブラウンアウトリセットの使用が必要な場合は有効にし、必要ない場合は無効にします。
 * 
 * RTCOSC (リアルタイムクロックソースセレクト):
 * このビットは、リアルタイムクロック（RTC）のソースを選択します。
 * 推奨設定は、内部オシレータを使用する場合は、内部オシレータを選択します。外部クリスタルを使用する場合は、外部クリスタルを選択します。
 * 
 * DSWDTOSC (ディープスリープウォッチドッグタイマクロスオシレータセレクト):
 * このビットは、ディープスリープモードでのウォッチドッグタイマのクロスオシレータのソースを選択します。
 * 推奨設定は、内部オシレータを使用する場合は、内部オシレータを選択します。外部クリスタルを使用する場合は、外部クリスタルを選択します。
 * 
 ******************************************************************************/

#pragma config DSBOREN = OFF        //Zero-Power BOR disabled in Deep Sleep
#pragma config DSWDTEN = OFF        //Disabled
#pragma config DSWDTPS = 8192       //1:8,192 (8.5 seconds)
#pragma config DSWDTOSC = INTOSCREF //DSWDT uses INTOSC/INTRC as clock
//#pragma config RTCOSC = T1OSCREF    //RTCC uses T1OSC/T1CKI as clock
#pragma config RTCOSC = INTOSCREF


/*******************************************************************************
 * < CONFIG3H >
 * 
 * MSSPMSK:
 * このビットフィールドは、MSSP（Master Synchronous Serial Port）モジュールのマスク機能を制御します。
 * マスク機能により、特定のビット位置の送信や受信を無効化することができます。
 * 
 * ADCSEL:
 * A/Dコンバータの変換モードを選択します。10ビット変換モードと12ビット変換モードの
 * 2つのオプションがあります。選択したモードに応じて、A/Dコンバータのビット数と変換の精度が異なります。
 * 
 * IOL1WAY:
 * このビットは、ピンのI/Oレジスタの一度だけの書き込み有効化を制御します
 * 有効な場合、I/Oレジスタは一度だけ書き込みが許可され、その後は変更できなくなります。
 * 
 ******************************************************************************/

//#pragma config MSSPMSK = 0
//#pragma config ADCSEL  = 0

#pragma config IOL1WAY = OFF        //IOLOCK bit can be set and cleared

/*******************************************************************************
 * < CONFIG4L >
 * 
 * WPCFG (Write/Erase Protect Configuration Region Select bit):
 * 1 = 設定ワードページは、WPENDとWPFP<5:0>の設定に関係なく、消去/書き込み保護されません。
 * 0 = 設定ワードページは、WPENDとWPFP<5:0>の設定に関係なく消去/書き込み保護されます。
 * 
 * WPFP<6:0> (Write/Erase Protect Page Start/End Location bits):
 * これらのビットは、WPENDビットと組み合わせて、フラッシュメモリのどのページが書き込み/消去保護されるかを定義します。
 * 7ビット（WPFP<6:0>）は、フラッシュメモリのページの開始位置と終了位置を指定します。
 * 
 ******************************************************************************/
#pragma config WPCFG = OFF          //Write/Erase last page protect Disabled
#pragma config WPFP = PAGE_1        //Write Protect Program Flash Page 0

/*******************************************************************************
 * < CONFIG4H>
 * 
 * LS48MHZ (Low-Speed USB Clock Selection):
 * このビットは、低速USBクロックの選択に関連しています。
 * プロジェクトが48 MHzのシステムクロックを使用し、低速USBクロックを生成する場合は1を選択します。
 * 1 = 48 MHzのシステムクロックが使用され、低速USBクロックは8分周で生成されます。
 * 0 = 24 MHzのシステムクロックが使用され、低速USBクロックは4分周で生成されます。
 * 
 * WPEND (Write-Protect Disable bit):
 * このビットは、フラッシュメモリの特定のページを書き込み/消去保護するかどうかを制御します。
 * 1 = フラッシュページ、WPFP<6:0>から（設定ワードページまで）は書き込み/消去保護されます。
 * 0 = フラッシュページ0からWPFP<6:0>までが書き込み/消去保護されます。
 * 
 * WPDIS (Write-Protect Disable bit):
 * このビットは、フラッシュメモリの書き込み/消去保護を無効にするかどうかを制御します。
 * 1 = WPFP<5:0>、WPEND、WPCFGビットが無視され、すべてのフラッシュメモリが消去または書き込み可能になります。
 * 0 = WPFP<5:0>、WPEND、WPCFGビットが有効であり、選択された範囲に対して消去/書き込み保護が有効です。
 * 
 ******************************************************************************/
//#pragma config LS48MHZ = 1
#pragma config WPEND = PAGE_0       //Start protection at page 0
#pragma config WPDIS = OFF          //WPFP[5:0], WPEND, and WPCFG bits ignored



/** CONFIGURATION Bits **********************************************/
#pragma config MSSP7B_EN = MSK7     //7 Bit address masking

//===========================================================================
// #define
//===========================================================================
#ifdef ___NOP
    /* PIC18Fのメイン関数名はmain() */
    #define MAIN main
    /* タスクスケジューラを開始するAPI関数 */
    #define START_SCHEDULER() vTaskStartScheduler()
#endif
//===========================================================================
// Prototype
//===========================================================================



/* The period between executions of the check task before and after an error
has been discovered.  If an error has been discovered the check task runs
more frequently - increasing the LED flash rate. */
#define mainNO_ERROR_CHECK_PERIOD		( ( TickType_t ) 1000 / portTICK_PERIOD_MS )
#define mainERROR_CHECK_PERIOD			( ( TickType_t ) 100 / portTICK_PERIOD_MS )

/* Priority definitions for some of the tasks.  Other tasks just use the idle
priority. */
#define mainQUEUE_POLL_PRIORITY			( tskIDLE_PRIORITY + 2 )
#define mainCHECK_TASK_PRIORITY			( tskIDLE_PRIORITY + 3 )

/* The LED that is flashed by the check task. */
#define mainCHECK_TASK_LED				( 0 )

/* Constants required for the communications.  Only one character is ever
transmitted. */


#define mainCOMMS_QUEUE_LENGTH			( 5 )
#define mainNO_BLOCK					( ( TickType_t ) 0 )
#define mainBAUD_RATE					UART_BAUDRATE

//==============================================================================
// TIMER0 100usec
// 
//==============================================================================
#define TIMER0_100usec 0xFB60
#define TIMER1_10msec 0x15A0

void Timer0_init(void)
{
    T0CON = 0;
    T0CONbits.TMR0ON = 1;       // タイマー0を有効にする
    T0CONbits.T08BIT = 0;       // 16 ビット タイマー
    T0CONbits.PSA    = 1;       // Timer0 プリスケーラーは割り当てない
    
    TMR0H = TIMER0_100usec >> 8;
    TMR0L = TIMER0_100usec & 0x00ff;
            
    
     //==============================
    // TIMER0
    //==============================
    INTCONbits.TMR0IF = 0;    
    INTCONbits.TMR0IE = 1;
}


//==============================================================================
// TIMER0 10msec
// 
//==============================================================================


void Timer1_init(void)
{
    T1CON = 0;
    
    /***************************************************************************
     * 10 = Timer1 クロック ソースは T1OSC または T1CKI ピンです
     * 01 = Timer1 のクロック ソースはシステム クロック (FOSC)(1)
     * 00 = Timer1 のクロック ソースは命令クロック (FOSC/4)
     **************************************************************************/ 
    T1CONbits.TMR1CS0 = 0;
    T1CONbits.TMR1CS1 = 0;
    
    /**************************************************************************
     * 11 = 1:8 プリスケール値
     * 10 = 1:4 プリスケール値
     * 01 = 1:2 プリスケール値
     * 00 = 1:1 プリスケール値
     **************************************************************************/ 
    T1CONbits.T1CKPS0 = 1;
    T1CONbits.T1CKPS1 = 0;

    /***************************************************************************
     * 1 = 1 回の 16 ビット操作で Timer1 のレジスタ読み取り/書き込みを有効にします。
     * 0 = 2 つの 8 ビット操作で Timer1 のレジスタ読み取り/書き込みを有効にし
     **************************************************************************/ 
    T1CONbits.RD16 = 1;

    /***************************************************************************
     * 1 = タイマー 1 を有効にする
     * 0 = タイマー 1 を停止します
     **************************************************************************/ 
    T1CONbits.TMR1ON = 1;
        
    TMR1H = TIMER1_10msec >> 8;
    TMR1L = TIMER1_10msec & 0x00ff;
            
    
     //==============================
    // TIMER1
    //==============================
    PIR1bits.TMR1IF = 0;
    PIE1bits.TMR1IE = 1;    //Timer1 Int
}
//==============================================================================
// 
//==============================================================================
typedef struct tskTaskControlBlock       /* The old naming convention is used to prevent breaking kernel aware debuggers. */
{
    volatile StackType_t * pxTopOfStack; /*< Points to the location of the last item placed on the tasks stack.  THIS MUST BE THE FIRST MEMBER OF THE TCB STRUCT. */

    #if ( portUSING_MPU_WRAPPERS == 1 )
        xMPU_SETTINGS xMPUSettings; /*< The MPU settings are defined as part of the port layer.  THIS MUST BE THE SECOND MEMBER OF THE TCB STRUCT. */
    #endif

    ListItem_t xStateListItem;                  /*< The list that the state list item of a task is reference from denotes the state of that task (Ready, Blocked, Suspended ). */
    ListItem_t xEventListItem;                  /*< Used to reference a task from an event list. */
    UBaseType_t uxPriority;                     /*< The priority of the task.  0 is the lowest priority. */
    StackType_t * pxStack;                      /*< Points to the start of the stack. */
    char pcTaskName[ configMAX_TASK_NAME_LEN ]; /*< Descriptive name given to the task when created.  Facilitates debugging only. */ /*lint !e971 Unqualified char types are allowed for strings and single characters only. */

    #if ( ( portSTACK_GROWTH > 0 ) || ( configRECORD_STACK_HIGH_ADDRESS == 1 ) )
        StackType_t * pxEndOfStack; /*< Points to the highest valid address for the stack. */
    #endif

    #if ( portCRITICAL_NESTING_IN_TCB == 1 )
        UBaseType_t uxCriticalNesting; /*< Holds the critical section nesting depth for ports that do not maintain their own count in the port layer. */
    #endif

    #if ( configUSE_TRACE_FACILITY == 1 )
        UBaseType_t uxTCBNumber;  /*< Stores a number that increments each time a TCB is created.  It allows debuggers to determine when a task has been deleted and then recreated. */
        UBaseType_t uxTaskNumber; /*< Stores a number specifically for use by third party trace code. */
    #endif

    #if ( configUSE_MUTEXES == 1 )
        UBaseType_t uxBasePriority; /*< The priority last assigned to the task - used by the priority inheritance mechanism. */
        UBaseType_t uxMutexesHeld;
    #endif

    #if ( configUSE_APPLICATION_TASK_TAG == 1 )
        TaskHookFunction_t pxTaskTag;
    #endif

    #if ( configNUM_THREAD_LOCAL_STORAGE_POINTERS > 0 )
        void * pvThreadLocalStoragePointers[ configNUM_THREAD_LOCAL_STORAGE_POINTERS ];
    #endif

    #if ( configGENERATE_RUN_TIME_STATS == 1 )
        configRUN_TIME_COUNTER_TYPE ulRunTimeCounter; /*< Stores the amount of time the task has spent in the Running state. */
    #endif

    #if ( ( configUSE_NEWLIB_REENTRANT == 1 ) || ( configUSE_C_RUNTIME_TLS_SUPPORT == 1 ) )
        configTLS_BLOCK_TYPE xTLSBlock; /*< Memory block used as Thread Local Storage (TLS) Block for the task. */
    #endif

    #if ( configUSE_TASK_NOTIFICATIONS == 1 )
        volatile uint32_t ulNotifiedValue[ configTASK_NOTIFICATION_ARRAY_ENTRIES ];
        volatile uint8_t ucNotifyState[ configTASK_NOTIFICATION_ARRAY_ENTRIES ];
    #endif

    /* See the comments in FreeRTOS.h with the definition of
     * tskSTATIC_AND_DYNAMIC_ALLOCATION_POSSIBLE. */
    #if ( tskSTATIC_AND_DYNAMIC_ALLOCATION_POSSIBLE != 0 ) /*lint !e731 !e9029 Macro has been consolidated for readability reasons. */
        uint8_t ucStaticallyAllocated;                     /*< Set to pdTRUE if the task is a statically allocated to ensure no attempt is made to free the memory. */
    #endif

    #if ( INCLUDE_xTaskAbortDelay == 1 )
        uint8_t ucDelayAborted;
    #endif

    #if ( configUSE_POSIX_ERRNO == 1 )
        int iTaskErrno;
    #endif
} ___tskTCB;
___tskTCB   *tcb;
typedef void TCB_t;
extern volatile TCB_t * volatile pxCurrentTCB;

/*
 * The task function for the "Check" task.
 */
static void task001( void *pvParameters );
static void task002( void *pvParameters );

/*
 * Checks the unique counts of other tasks to ensure they are still operational.
 * Returns pdTRUE if an error is detected, otherwise pdFALSE.
 */
static portBASE_TYPE prvCheckOtherTasksAreStillRunning( void );

//==============================================================================
//  Prototype
//==============================================================================
void uart_init(void);

extern uint16_t timer_cnt;
extern uint16_t timer_cnt_buf;

void putstring(char *c);
void pxReadyTasksLists_info(void);
void prvIdleTask_entry(void);
     
//QueueHandle_t   Mutex;

//==============================================================================
// Waite time = num x 10ms
//==============================================================================
void Wait(uint16_t num)
{
     int i ;

     for (i=0 ; i < num ; i++) {
          __delay_ms(10) ;
     }
}

//==============================================================================
//
//==============================================================================



/* Creates the tasks, then starts the scheduler. */
void main( void )
{
    BaseType_t Status;
    char *Malloc_buf;
            
    
#ifdef ___NOP 
	/* 必要なハードウェアの初期化 */
	vParTestInitialise();
	vPortInitialiseBlocks();

	/* Send a character so we have some visible feedback of a reset. */
	xSerialPortInitMinimal( mainBAUD_RATE, mainCOMMS_QUEUE_LENGTH );
	xSerialPutChar( NULL, 'X', mainNO_BLOCK );

	/* Start the standard demo tasks found in the demo\common directory. */


#endif  // ___NOP    

    PLLEN  = 1 ;             // 内部クロックをPLLに通し48MHzとする
    FSEN   = 1 ;             // USBクロック使用時は48MHzとする
    RBPU   = 0 ;             // RBポートのプルアップを有効(全PORTBがプルアップ)
    OSCCON = 0b01110000 ;    // 内部OscでPLLからのクロックを使う(48MHz)
    ANCON0 = 0b00011111 ;    // AN0-4アナログは使用しない、デジタルI/Oに割当
    ANCON1 = 0b00011111 ;    // AN8-12アナログは使用しない、デジタルI/Oに割当
    TRISA  = 0b00000000 ;    // RA0-RA7全て出力に設定(RA4は無)
    TRISB  = 0b00110000 ;    // RB4/5(I2C)で入力、他は全て出力に設定
    TRISC  = 0b00000000 ;    // RC0-RVC7全て出力に設定(RC3は無)(RC4/5はINのみ)
    TRISD  = 0b00001111 ; 
    PORTA  = 0b00000000 ;    // 出力ピンの初期化(全てLOWにする)
    PORTB  = 0b00000000 ;    // 出力ピンの初期化(全てLOWにする)
    PORTC  = 0b00000000 ;    // 出力ピンの初期化(全てLOWにする)
    PORTD  = 0b00000000 ;    // 出力ピンの初期化(全てLOWにする)

    TRISAbits.TRISA0 = 0;   // LED1
    TRISAbits.TRISA1 = 0;   // LED2
    TRISAbits.TRISA2 = 0;   // Timer0 確認用
    TRISBbits.TRISB2 = 0;   // Timer1 確認用
    LATAbits.LATA0 = 1;
    LATAbits.LATA1 = 1;
    
    TRISDbits.TRISD3 = 1;   // Button 1
    TRISDbits.TRISD2 = 1;   // Button 2
    Wait(10);
    uart_init();
    
    putstring("\r\n");
    putstring("******************\r\n");
    putstring("*** UART START ***\r\n");
    putstring("******************\r\n");
    //printf("UART START\r\n");

    //Timer0_init();
    //Timer1_init();
#ifdef ___NOP    
    
    TMR3H = ( uint8_t ) 0x00;
	TMR3L = ( uint8_t ) 0x00;
    CCPRL = 0xe0;
    CCPRH = 0x2e;
    CCPCON = 0b00001011;
    CCPTMR = 0b00000001;
    T3CON  = 0b00001011;
    INTCONbits.GIE_GIEH = 1;
    INTCONbits.PEIE_GIEL = 1;
    
    RCONbits.IPEN = 1;
    CCPTMR_ISRIP = 1;    // Timer1 Priority High
	CCPTMR_ISRIF = 0;        
	CCPTMR_ISRIE = 1;		/*< Interrupt enable. */

    Xprintf("INTCON=%x,RCON=%x\r\n",INTCON,RCON);
    
    int ch;
    while(1){
        if( timer_cnt!=timer_cnt_buf ){
            timer_cnt_buf = timer_cnt;
            Xprintf("timer_cnt=%d\r\n",timer_cnt);
        }
        
        ch =  getch();
        if( ch != 0){
            Xprintf("ch=%x\r\n",ch);
           
        }
        
    }
#endif  // ___NOP    

    
   // Mutex = xSemaphoreCreateMutex();
    //if( Mutex != NULL ){
        //vStartIntegerMathTasks( tskIDLE_PRIORITY );
        //vStartPolledQueueTasks( mainQUEUE_POLL_PRIORITY );
        /* Start the check task defined in this file. */

    
    //M_PRINTF_D(task001=,*func_table[0]);
    //M_PRINTF_D(task001=,&task001);
    //M_PRINTF_D(task001=,(uint32_t)task001);
    
    
            
            
        Status = xTaskCreate( task001, "U01", configMINIMAL_STACK_SIZE*2, NULL,1, NULL );

        pxReadyTasksLists_info();
        vTaskList(0);
        Status = xTaskCreate( task002, "U02", configMINIMAL_STACK_SIZE*2, NULL,2, NULL );
        Xprintf("main1.c %d Status=%d\r\n",__LINE__,Status);
        /* Start the scheduler.  Will never return here. */
        
        pxReadyTasksLists_info();
        vTaskList(0);
        
        vTaskStartScheduler();
    //}
    
    while(1){
        
    }
     task001(0);   
     task002(0);   
     prvIdleTask_entry();
}
/*-----------------------------------------------------------*/
void task002( void *pvParameters )
{
    //Xprintf("task002() START\r\n");
    M_PRINTF_B(task002 -------------------,1);   
    
	/* Cycle for ever, delaying then checking all the other tasks are still
	operating without error. */
	for( ;; )
	{
        Xprintf("task002() Loop\r\n");
        vTaskDelay( 10 );
    }
}

void task001( void *pvParameters )
{
    M_PRINTF_B(task001 -------------------,1);   

	for( ;; )
	{
        Xprintf("task001() Loop\r\n");
        vTaskDelay( 100 );
    }

}
/*-----------------------------------------------------------*/

static portBASE_TYPE prvCheckOtherTasksAreStillRunning( void )
{
portBASE_TYPE xErrorHasOccurred = pdFALSE;

	if( xAreIntegerMathsTaskStillRunning() != pdTRUE )
	{
		xErrorHasOccurred = pdTRUE;
	}

	if( xArePollingQueuesStillRunning() != pdTRUE )
	{
		xErrorHasOccurred = pdTRUE;
	}

	return xErrorHasOccurred;
}
/*-----------------------------------------------------------*/


