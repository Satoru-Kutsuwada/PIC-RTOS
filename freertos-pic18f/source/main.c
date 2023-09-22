/* ---------- デバイス依存コード ---------- */
#if defined(PIC18F)


#pragma config CFGPLLEN = ON
#pragma config WDTEN = OFF          //WDT disabled (enabled by SWDTEN bit)
#pragma config PLLDIV = 4           //Divide by 4 (16 MHz oscillator input)
#pragma config STVREN = OFF          //stack overflow/underflow reset enabled
#pragma config XINST = OFF          //Extended instruction set disabled
//#pragma config DEBUG   = ON


/*******************************************************************************
 * < CONFIG1H >
 ******************************************************************************/
#pragma config CPUDIV = OSC1        //No CPU system clock divide
#pragma config CP0 = OFF            //Program memory is not code-protected

/*******************************************************************************
 * < CONFIG2L >
 ******************************************************************************/
//#pragma config FOSC    = HSPLL_HS  // 外部クロック(クリスタル)を使用し、PLLを有効にする設定
//#pragma config SOSCSEL = 0
//#pragma config CLKOEC  = 0	

#pragma config OSC = HSPLL          //HS oscillator, PLL enabled, HSPLL used by USB
#pragma config FCMEN = OFF          //Fail-Safe Clock Monitor disabled
#pragma config IESO = OFF           //Two-Speed Start-up disabled

/*******************************************************************************
 * < CONFIG2H >
 ******************************************************************************/
//#pragma config WDTPS = 0x0f    // Watchdog Timer Postscale Select (1:32768)
#pragma config WDTPS = 32768        //1:32768
/*******************************************************************************
 * < CONFIG3L >
 ******************************************************************************/

#pragma config DSBOREN = OFF        //Zero-Power BOR disabled in Deep Sleep
#pragma config DSWDTEN = OFF        //Disabled
#pragma config DSWDTPS = 8192       //1:8,192 (8.5 seconds)
#pragma config DSWDTOSC = INTOSCREF //DSWDT uses INTOSC/INTRC as clock
//#pragma config RTCOSC = T1OSCREF    //RTCC uses T1OSC/T1CKI as clock
#pragma config RTCOSC = INTOSCREF


/*******************************************************************************
 * < CONFIG3H >
 ******************************************************************************/

//#pragma config MSSPMSK = 0
//#pragma config ADCSEL  = 0

#pragma config IOL1WAY = OFF        //IOLOCK bit can be set and cleared

/*******************************************************************************
 * < CONFIG4L >
 ******************************************************************************/
#pragma config WPCFG = OFF          //Write/Erase last page protect Disabled
#pragma config WPFP = PAGE_1        //Write Protect Program Flash Page 0

/*******************************************************************************
 * < CONFIG4H>
 ******************************************************************************/
//#pragma config LS48MHZ = 1
#pragma config WPEND = PAGE_0       //Start protection at page 0
#pragma config WPDIS = OFF          //WPFP[5:0], WPEND, and WPCFG bits ignored


/** CONFIGURATION Bits **********************************************/
#pragma config MSSP7B_EN = MSK7     //7 Bit address masking


    #include "FreeRTOS.h"
    #include "task.h"
    #include "queue.h"
#include <stdarg.h>
    #include <stdio.h>

    /* PIC18Fのメイン関数名はmain() */
    #define MAIN main
    /* タスクスケジューラを開始するAPI関数 */
    #define START_SCHEDULER() vTaskStartScheduler()


void uart_init(void);
void putstring(uint8_t *string);
int getch(void);
void putch(uint8_t c);

#elif defined(ESP32)
    #include "freertos/FreeRTOS.h"
    #include "freertos/task.h"
    #include "freertos/queue.h"
    #include "driver/gpio.h"

    /* ESP32のメイン関数名はapp_main() */
    #define MAIN app_main
    /* ESP32ではapp_main()呼び出し前にタスクスケジューラが
       開始済みのため、ユーザー・アプリケーション側では実行不要 */
    #define START_SCHEDULER()
#endif

#ifdef ___NOP
/* デバイスを初期化する。 */
void vDeviceInitialize(void)
{
    /* LED用のGPIOを出力モードにして初期値を0とする。*/
#if defined(ESP32)
    gpio_config_t conf;
    conf.intr_type = GPIO_INTR_DISABLE;
    conf.mode = GPIO_MODE_OUTPUT;
    conf.pin_bit_mask = (1ULL << GPIO_NUM_0)
                        | (1ULL << GPIO_NUM_2)
                        | (1ULL << GPIO_NUM_4);
    conf.pull_down_en = 0;
    conf.pull_up_en = 0;
    gpio_config(&conf);
    gpio_set_level(GPIO_NUM_0, 0);
    gpio_set_level(GPIO_NUM_2, 0);
    gpio_set_level(GPIO_NUM_4, 0);
#elif defined(PIC18F)
    /* LEDが接続しているポートDの0〜3を出力モードに設定 */
    TRISD &= 0xf0;
    PORTD &= 0xf0;
#endif
}

/* LEDの点灯状態を設定する。 1:点灯、0:消灯 */
void vSetLedStatus(UBaseType_t uNum, BaseType_t xState)
{
#if defined(ESP32)
    static int led[3] = {GPIO_NUM_0, GPIO_NUM_2, GPIO_NUM_4};
    gpio_set_level(led[uNum], xState);
#elif defined(PIC18F)
    if (uNum == 0) {
        LATDbits.LATD0 = xState;
    }
    else if (uNum == 1) {
        LATDbits.LATD1 = xState;
    }
#endif
}

/* ---------- デバイス非依存コード ---------- */
#define QUEUE_LENGTH 2
QueueHandle_t xQueue;

/* LEDをトグルする。 */
void vToggleLed(UBaseType_t uNum)
{
    static BaseType_t xState = 0;
    vSetLedStatus(uNum, xState);
    xState = !xState;
}

/* 一定時間だけワンショットでLEDを点灯させるタスク */
void vFlashTask(void *pvParameters)
{
    TickType_t xPeriod = (TickType_t)pvParameters;
    vSetLedStatus(1, 1);
    /* (引数の数値+1)*10ミリ秒だけLEDを1回点灯し、タスクを終了する。 */
    vTaskDelay((xPeriod % 10 + 1) * 100 / portTICK_PERIOD_MS);
    vSetLedStatus(1, 0);
    vTaskDelete(NULL);
}
#endif
void char_print( static uint8_t *st1)
{
    while(*st1 != '\0'){
           putch(*st1);
           st1++;
     }        
     
}
/* 受信用タスク */
void vTask001(void *pvParameters) 
{
    
uint8_t cstring[]="vTask001\r\n";
char_print(cstring);

        
    while(1) {
        vTaskDelay(10);
    }
}

/* メッセージ送信用タスク */
void vTask002(void *pvParameters)
{
uint8_t cstring[]="vTask002\r\n";
char_print(cstring);

    while(1) {
        vTaskDelay(10);
    }
}

/* LED点滅タスク */
void vTask003(void *pvParameters)
{
uint8_t cstring[]="vTask003\r\n";
char_print(cstring);
    while (1) {
        vTaskDelay(10);
    }
}

//==============================================================================
// Waite time = num x 10ms
//==============================================================================
void Wait(uint16_t num)
{
     int i ;

     for (i=0 ; i < num ; i++) {
        
     }
}


//==============================================================================
// main
//==============================================================================
void MAIN(void)
{
    int ch;
    uint8_t     temp[] = "*** UART START ***\r\n\0";
    
    //PLLEN  = 1 ;             // 内部クロックをPLLに通し48MHzとする
    //FSEN   = 1 ;             // USBクロック使用時は48MHzとする
    UCFGbits.FSEN = 1;
    //RBPU   = 0 ;             // RBポートのプルアップを有効(全PORTBがプルアップ)
    INTCON2bits.RBPU = 0;
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
    LATAbits.LATA1 =1;
    
    TRISDbits.TRISD3 = 1;   // Button 1
    TRISDbits.TRISD2 = 1;   // Button 2
    Wait(10000);
    uart_init();
    Wait(10000);
    putch('\r');
    putch('\n');
    

    char_print(temp);
      
    
   

    xTaskCreate(vTask001, "U01", configMINIMAL_STACK_SIZE + 10, NULL, 3, NULL);
    xTaskCreate(vTask002, "U02", configMINIMAL_STACK_SIZE + 10, NULL, 2, NULL);
    xTaskCreate(vTask003, "U03", configMINIMAL_STACK_SIZE + 10, NULL, 1, NULL);
    START_SCHEDULER();
    
    vTask001(0);
    vTask002(0);
    vTask003(0);
}
