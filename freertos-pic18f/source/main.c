/* ---------- デバイス依存コード ---------- */


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


/** CONFIGURATION Bits *********************************************************/
#pragma config MSSP7B_EN = MSK7     //7 Bit address masking


//==============================================================================
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "rtc_main.h"
#include <stdarg.h>
#include <stdio.h>

//==============================================================================
/* PIC18Fのメイン関数名はmain() */
#define MAIN main
/* タスクスケジューラを開始するAPI関数 */
#define START_SCHEDULER() vTaskStartScheduler()


//==============================================================================
void uart_init(void);
void putstring(uint8_t *string);
int getch(void);
void putch(uint8_t c);
 int getch(void);
 void Yprintf(uint8_t *buffer, static char rom *string, ...);
//==============================================================================
#define QUEUE_LENGTH 4
QueueHandle_t xQueue;


//==============================================================================
RTC_DATA RTCdt;
RTC_DATA getRTCdt;
uint16_t    timer_cnt;
#define     MESG_BUF_MAX    30
uint8_t     message_buf1[MESG_BUF_MAX];
uint8_t     message_buf2[MESG_BUF_MAX];

    

void Xprintf(const char *string, ...);
//=============================================================================
//
//=============================================================================
void rtc_display(void)
{
#ifdef ___NOP
    uint8_t temp[]=" Time %d.%d.%d\r\n";
    getRTCdt = RTCdt;
    
    Xprintf(temp, getRTCdt.sec, getRTCdt.msec, getRTCdt.usec);
#endif
    uint8_t temp[]=" Time \r\n";
    Xprintf(temp);
    
}
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
//=============================================================================
//
//=============================================================================
void ram_char_print( static char *text)
{
    while(*text != '\0'){
        while (!UART_TXSTA_TRMT); // 送信バッファが空になるまで待機
        UART_TXREG = *text; // データを送信
        text++;
    }             
}
//=============================================================================
//
//=============================================================================
void rom_char_print( static char rom *text )
{
    while(*text != '\0'){
        while (!UART_TXSTA_TRMT); // 送信バッファが空になるまで待機
        UART_TXREG = *text; // データを送信
        text++;
    }             
}
//=============================================================================
//
//=============================================================================
extern const char ConvC[];

void rom_print_data( static char rom *text, uint16_t dt1, uint16_t dt2)
{
    uint16_t    data[2];
    uint16_t    tmp;
    int          i=0;
    int          j;

    data[0] = dt1;
    data[1] = dt2;
    
    
    while(*text != '\0'){
        if( *text == '%' ){
            text++;
            switch(*text){
            case 'd':
                j = (int)data[i];
                if( j < 0){
                    j *= -1;
                }
 
                if(j>=10000)
                    tmp = 5;
                else if(j>=1000)
                    tmp = 4;
                else if(j>=100)
                    tmp = 3;
                else if(j>=10)
                    tmp = 2;
                else
                    tmp = 1;
                
                switch(tmp){
                case 5:
                    tmp = j/10000;
                    j = j - (tmp*10000);
                    while (!UART_TXSTA_TRMT);
                    UART_TXREG = ConvC[tmp];
                case 4:
                    tmp = j/1000;
                    j = j - (tmp*1000);
                    while (!UART_TXSTA_TRMT);
                    UART_TXREG = ConvC[tmp];
                case 3:
                    tmp = j/100;
                    j = j - (tmp*100);
                    while (!UART_TXSTA_TRMT);
                    UART_TXREG = ConvC[tmp];
                case 2:
                    tmp = j/10;
                    j = j - (tmp*10);
                    while (!UART_TXSTA_TRMT);
                    UART_TXREG = ConvC[tmp];
                case 1:
                    tmp = j;
                    while (!UART_TXSTA_TRMT);
                    UART_TXREG = ConvC[tmp];
                }
                i++;
                text++;
                break;
            case 'x':
                for(j=12; j>0; j=j-4){
                    tmp = (data[i] >> j) & 0x0f;
                    while (!UART_TXSTA_TRMT); // 送信バッファが空になるまで待機
                    UART_TXREG = ConvC[tmp];
                }
                    tmp = data[i] & 0x0f;
                    while (!UART_TXSTA_TRMT); // 送信バッファが空になるまで待機
                    UART_TXREG = ConvC[tmp];
                
                i++;
                text++;
                break;
            default:
                while (!UART_TXSTA_TRMT); // 送信バッファが空になるまで待機
                UART_TXREG = '%';

                while (!UART_TXSTA_TRMT); // 送信バッファが空になるまで待機
                UART_TXREG = *text; // データを送信
                text++;
                break;
            }
        }
        else{
            while (!UART_TXSTA_TRMT); // 送信バッファが空になるまで待機
            UART_TXREG = *text; // データを送信
            text++;
        }
    }             
}

typedef struct{
    void *malloc_pt;
}PRINT_MSG_FORM;

//=============================================================================
//
//=============================================================================
void rom_message_send(static char rom *text,uint8_t *buffer,uint16_t line)
{
    uint8_t i;
    PRINT_MSG_FORM pm_msg;
    BaseType_t  Status;
    
    //rom_char_print( "rom_message_send()\r\n\0" );
    
    for( i=0; i<MESG_BUF_MAX; i++ ){
        if( text[i] != '\0' ){
            buffer[i] = text[i];
        }
        else{
            buffer[i] = text[i];
            break;
        }
    }
    buffer[i] = '\0';
    
    
    pm_msg.malloc_pt = (void *)buffer;
    //rom_print_data( "rom_message_send(Line %d)\r\n", line, 0);
    
    Status = xQueueSend(xQueue, (void *)&pm_msg, 0);
    if( Status  != pdPASS ){
        rom_print_data( "Statust=%d(Line %d)\r\n", Status,line);
    }
}

void ram_message_send(static char *text,uint16_t line)
{
    PRINT_MSG_FORM pm_msg;
    BaseType_t  Status;

    pm_msg.malloc_pt = (void *)text;
    
    rom_print_data( "ram_message_send(Line %d)\r\n", line, 0);
    Status = xQueueSend(xQueue, (void *)&pm_msg, 0);
    if( Status  != pdPASS ){
        rom_print_data( "Statust=%d(Line %d)\r\n", Status,line);
    }
}

void ram_message_send2(static char *text,uint16_t line)
{
    PRINT_MSG_FORM pm_msg;
    BaseType_t  Status;

    pm_msg.malloc_pt = (void *)text;
    
    rom_print_data( "ram2_message_send(Line %d)\r\n", line, 0);
    Status = xQueueSend(xQueue, (void *)&pm_msg, 0);
    if( Status  != pdPASS ){
        rom_print_data( "Statust=%d(Line %d)\r\n", Status,line);
    }
}


//=============================================================================
//
//=============================================================================
void vTask001(void *pvParameters) 
{
    //rom_message_send("vTask001 START\r\n\0", message_buf1,__LINE__);
    rom_char_print("vTask001 START\r\n\0"); 
    while(1) {
        //timer_cnt = 12;
        rom_message_send("vTask001 Activ\r\n\0", message_buf1,__LINE__);
        vTaskDelay(250);
    }
}

int tsk02_ch;
    
//=============================================================================
//
//=============================================================================
void vTask002(void *pvParameters)
{
    //rom_message_send("vTask002 START\r\n\0", message_buf2,__LINE__);
    rom_char_print("vTask002 START\r\n\0"); 
    while(1) {
        
        //rom_print_data( "timer_cnt=%d\r\n", timer_cnt, 0);
        rom_message_send("vTask002 Activ\r\n\0", message_buf2,__LINE__);
        
#ifdef ___NOP
        tsk02_ch = getch();
        if( tsk02_ch != 0 ){
            putch(tsk02_ch);
        }
#endif
        vTaskDelay(100);
    }
}

       
//=============================================================================
//
//=============================================================================
void vTask003(void *pvParameters)
{
    int ch;
    PRINT_MSG_FORM  *pm_msg;
    uint8_t			msgQueBuf[sizeof(void *)];
    char            *print_mess;
    char            temp[]="%p,%p\r\n";
    
    
    rom_char_print("vTask003 START\r\n\0"); 

    while (1) {
        if(xQueueReceive(xQueue, msgQueBuf, portMAX_DELAY) == pdPASS ) {
            rom_char_print("Tsk03 MsgRcv\r\n");
            pm_msg = (PRINT_MSG_FORM *)msgQueBuf;
            print_mess = (char *)pm_msg->malloc_pt;
     
            ram_char_print(print_mess);
        }
        else{
            rom_char_print("Error vTask003\r\n\0");
        }

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
    int ch,i;
   
    
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
    
    rom_char_print("\r\n******************\r\n"); 
    rom_char_print("*** UART START ***\r\n"); 
    rom_char_print("******************\r\n"); 
    
    Wait(10000);
    //Timer0_init();
    //Timer1_init();
    rom_char_print("\r\n*** TMR0 START ***\r\n"); 
    
    xQueue = xQueueCreate(QUEUE_LENGTH, sizeof(void *));
    

    xTaskCreate(vTask001, "U01", configMINIMAL_STACK_SIZE + 10, NULL, 1, NULL);
    xTaskCreate(vTask002, "U02", configMINIMAL_STACK_SIZE + 10, NULL, 2, NULL);
    xTaskCreate(vTask003, "U03", configMINIMAL_STACK_SIZE + 10, NULL, 3, NULL);
    START_SCHEDULER();
    
    vTask001(0);
    vTask002(0);
    vTask003(0);
}
