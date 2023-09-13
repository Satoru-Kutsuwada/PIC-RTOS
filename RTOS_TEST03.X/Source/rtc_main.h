/* 
 * File:   rtc_main.h
 * Author: nosak
 *
 * Created on 2023/09/11, 8:08
 */

#ifndef RTC_MAIN_H
#define	RTC_MAIN_H

#ifdef	__cplusplus
extern "C" {
#endif

typedef struct{
    uint8_t year;
    uint8_t month;
    uint8_t day;
    uint8_t wday;
    uint8_t hour;
    uint8_t min;
    uint8_t sec;
    uint16_t msec;
    uint8_t usec;
} RTC_DATA ;





#ifdef	__cplusplus
}
#endif

#endif	/* RTC_MAIN_H */

