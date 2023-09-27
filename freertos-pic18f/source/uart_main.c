#include "FreeRTOS.h"		

//#include <xc.h>		
//#include "semphr.h"

#include <stdio.h>
//#include <stdbool.h>
#include <stdarg.h>
#include <ctype.h>
#include <string.h>


//==============================================================================
//
//==============================================================================

typedef struct{
    uint8_t BRGHx;
    uint8_t SPBRGHx;
    uint8_t SPBRGx;
} UART_SET_DATA;



void putch(unsigned char c);
int getch(void);
void Set_UasrtBauRaite(UART_SET_DATA *dt);
void putstring(uint8_t *string);

const char ConvC[]= { '0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f' };



//extern QueueHandle_t   Mutex;

//==============================================================================
//
//==============================================================================
void Set_UasrtBauRaite(UART_SET_DATA *dt)
{
    uint16_t l_buf;
    
    dt->BRGHx = 0;
    dt->SPBRGHx = 0;
    
    l_buf = _XTAL_FREQ/(64*UART_BAUDRATE) - 1;
    dt->SPBRGx = (uint8_t)l_buf;
}                    
                    




void putch(uint8_t c)
{
    while (!UART_TXSTA_TRMT); // 送信バッファが空になるまで待機
    UART_TXREG = c; // データを送信
}

void putstring(uint8_t *string)
{
    while(*string != '\0'){
        putch(*string);
        string++;
    }
}


//==============================================================================
//
//==============================================================================

//unsigned char getch(void)
int getch(void)
{
    // while(!RCIF);
    
    if(!UART_RCIF){
        return (char)0;
        
    }
    else{
        return (int) UART_RCREG; // 受信データを返す
    }        
}

    
//==============================================================================
//
//==============================================================================
void uart_init(void)
{
    UART_SET_DATA dt;
    
#ifndef ___UART_CH1

    // Unlock Registers
    EECON2 = 0x55;
    EECON2 = 0xAA;
    PPSCONbits.IOLOCK = 0;


    // Configure Input Functions
    RPINR16 = 22; // Assign RX2 To Pin RP22 PD5
    
    // Configure Output Functions
    RPOR23 = 0x06; // Assign TX2 To Pin RP23 PD6


    // Lock Registers
    EECON2 = 0x55;
    EECON2 = 0xAA;
    PPSCONbits.IOLOCK = 1;

#endif
    
        UART_TXPORT = 0;        // TX1ピンを出力に設定
        UART_RXPORT = 1;        // RX1ピンを入力に設定
        
        // UART1モジュールの設定
        UART_TXSTA = 0;
        UART_TXSTA_TXEN = 1;    // 送信有効化
        UART_TXSTA_BRGH = 0;

        UART_RCSTA = 0;
        UART_RCSTA_SPEN = 1;
        UART_RCSTA_CREN = 1;    // 受信有効化
        
        UART_BAUDCON = 0;
        UART_BAUDCON_BRG16 = 0; // ボーレートの設定による   0:8bit,1:16bit
        
        Set_UasrtBauRaite(&dt);
        UART_SPBRGH = dt.SPBRGHx;
        UART_SPBRG  = dt.SPBRGx;
        UART_TXSTA_BRGH = dt.BRGHx;
        
    
}


//==============================================================================
//
//==============================================================================

uint8_t *my_putint(int num, uint8_t *buf)
{
    int temp;
    int keta;
    

	if (num < 0) {
        *buf = '-';
        buf++;
        num = -num;
    }
    temp = num;
    keta = 1;
    

    while (num / 10 != 0) {
        num = num / 10;
        keta *= 10;
    }
    num = temp;

    for( ; keta>0; keta/=10 ){
        num = num / keta;
        *buf = '0' + num;
        buf++;
        *buf = '\0';
        num = temp - (keta * num);
        temp = num;
    }
            
    return buf;
}
//==============================================================================
//
//==============================================================================

uint8_t *my_putfloat(double num, int precision, uint8_t *buf)
{
	int dt;
	double fracPart,dtf;
	int intPart;
	int digit;
    int count;

	intPart = (int)num;
    buf = my_putint(intPart, buf);
    *buf = '.';
    buf ++;

    fracPart = num - intPart;

    if (fracPart < 0) {
        fracPart = -fracPart;
    }

    count = 0;
    while (count < precision) {
        fracPart *= 10;
        digit = (int)fracPart;

        *buf = '0' + digit;
        buf ++;

        fracPart -= digit;
        count++;
    }

    *buf = '\0';

    return buf;

}
//=============================================================================
//
//
//=============================================================================

uint8_t *my_putchar(char c, uint8_t *buf )
{
	//SKprintf("_putchar c=%x, buf=%p\r\n",c,buf);
	*buf = c;
	buf ++;
	return buf ;
}

//=============================================================================
//
//
//=============================================================================
uint8_t *my_puts(char* str, uint8_t *buf )
{
	uint8_t *buf2;

	buf2=buf;

	//SKprintf("_puts str=%s, buf=%p\r\n",str,buf);
    while ( *str != '\0' ) {
        buf = my_putchar(*str, buf);
        str++;
    }
    *buf='\0';
	//SKprintf("_puts str=%s  %p\r\n",buf2, buf);
	return buf ;
}



//=============================================================================
//
//
//=============================================================================


uint8_t *my_putshex(uint16_t dt, uint8_t flg, uint8_t *buf )
{
	uint8_t	sw;

	switch(flg){
	case 4:
		*buf = ConvC[( dt >> 12 ) & 0x0f ];
		buf ++;
		*buf = ConvC[( dt >> 8 ) & 0x0f ];
		buf ++;
		*buf = ConvC[( dt >> 4 ) & 0x0f ];
		buf ++;
		*buf = ConvC[ dt  & 0x0f ];
		buf ++;
		break;

	case 2:
		*buf = ConvC[( dt >> 4 ) & 0x0f ];
		buf ++;
		*buf = ConvC[ dt  & 0x0f ];
		buf ++;
		break;
	case 0:
		sw = 0;
		if(( sw == 1) || (( dt >> 12 ) & 0x0f ) != 0 ){
			*buf = ConvC[( dt >> 12 ) & 0x0f ];
			buf ++;
			sw = 1;
		}
		if(( sw == 1) || (( dt >> 8 ) & 0x0f ) != 0 ){
			*buf = ConvC[( dt >> 8 ) & 0x0f ];
			buf ++;
			sw = 1;
		}
		if(( sw == 1) || (( dt >> 4 ) & 0x0f ) != 0 ){
			*buf = ConvC[( dt >> 4 ) & 0x0f ];
			buf ++;
			sw = 1;
		}

		*buf = ConvC[ dt & 0x0f ];
		buf ++;
       *buf = '\0';

		break;
	}
	return buf ;
}
//=============================================================================
//
//
//=============================================================================

//char	loginfo_buf[64];


uint8_t *my_putshex32(long dt, uint8_t *buf )
{
	uint8_t	sw;
    uint8_t	i;
    
    sw = 0;
    
    for( i=28; i > 0; i-=4){
        if(( sw == 1) || (( dt >> i ) & 0x0f ) != 0 ){
            *buf = ConvC[( dt >> i ) & 0x0f ];
            buf ++;
            sw = 1;
        }
    }
    *buf = ConvC[ dt & 0x0f ];
    buf ++;
    *buf = '\0';
    
    
	return buf ;
}
void debu_uint2a(uint8_t ch,uint16_t dt)
{
    uint8_t	i;
    
    putch(ch);
    for( i=12; i > 0; i-=4){
        putch(ConvC[( dt >> i ) & 0x0f ]);
    }
    putch(ConvC[( dt >> i ) & 0x0f ]);
    putch('\r');
    putch('\n');
    
}

uint8_t printbuf[128];
//=============================================================================
//
//
//=============================================================================
void Xprintf(const char *string, ...)
{
	va_list     ap;
	uint8_t        *buffer,*Malloc_buf;
    int         intvalue;
    char        *charvalue;
    char        ch;
    uint16_t    uintvalue;
    long    uint32value;
    double      floatvalue;

    Malloc_buf = ( uint8_t * ) printbuf;
    //Malloc_buf = ( char * ) pvPortMalloc( 64 );
    buffer = Malloc_buf;
    if(Malloc_buf != NULL){ 
        va_start(ap, string);

        while (*string != '\0') {
            if (*string == '%') {
                string++; // Move past '%'
                switch (*string ){
                    case  'c':
                        ch = va_arg(ap, char);
                        //printf("intvaluee=%d\r\n",intvalue);
                        buffer = my_putchar(ch, buffer );
                        break;
                    case  'd':
                        intvalue = va_arg(ap, int);
                        //printf("intvaluee=%d\r\n",intvalue);
                        buffer = my_putint(intvalue, buffer);
                        break;
                    case  'f':
                        floatvalue = va_arg(ap, double);
                        buffer = my_putfloat(floatvalue, 2, buffer );
                        break;
                    case  's':
                        charvalue = va_arg(ap, char*);
                        buffer = my_puts(charvalue, buffer );
                        break;
                    case  'x':
                        uintvalue = (uint16_t)va_arg(ap, int);
                        //printf("uintvalue=%x\r\n",uintvalue);
                        buffer = my_putshex(uintvalue, 0, buffer );
                        break;
                    case  'p':
                        uint32value = (long)va_arg(ap, long);
                        //uintvalue = (uint16_t)(uint32value >> 16);
                        //debu_uint2a('@',uintvalue);
                        //uintvalue = (uint16_t)uint32value;
                        //debu_uint2a('*',uintvalue);
                        buffer = my_putshex32((long)uint32value,  buffer );
                        break;
                    default:
                        buffer = my_putchar('%', buffer );
                        buffer = my_putchar(*string, buffer );
                        break;
                }
            }
            else {
                buffer = my_putchar(*string, buffer );
            }
            string++;
        }

        *buffer = '\0';

        putstring(Malloc_buf);
        va_end(ap);
        
        //vPortFree(Malloc_buf);
    }
}


void ram_message_send2(static char *text,uint16_t ine);

//=============================================================================
//
//
//=============================================================================
void Yprintf(uint8_t *buffer, static char rom *string, ...)
{
	va_list     ap;
    uint16_t    uintValue;
    uint8_t     *buftmp;

    buftmp = buffer;
    va_start(ap, string);

    while (*string != '\0') {
        if (*string == '%') {
            string++; // Move past '%'
            switch (*string ){
                case  'd':
                    uintValue = va_arg(ap, int);
                    //printf("intvaluee=%d\r\n",intvalue);
                    buffer = my_putint((int)uintValue, buffer);
                    break;
                case  'x':
                    uintValue = (uint16_t)va_arg(ap, int);
                    //printf("uintvalue=%x\r\n",uintvalue);
                    buffer = my_putshex(uintValue, 0, buffer );
                    break;
                default:
                    buffer = my_putchar('%', buffer );
                    buffer = my_putchar(*string, buffer );
                    break;
            }
        }
        else {
            buffer = my_putchar(*string, buffer );
        }
        string++;
    }

    *buffer = '\0';

    va_end(ap);
  
    ram_message_send2(buftmp,__LINE__);
    

}
