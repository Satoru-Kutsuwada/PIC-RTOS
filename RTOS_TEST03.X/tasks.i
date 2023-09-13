#line 1 "Source/FreeRTOS/tasks.c"
#line 1 "Source/FreeRTOS/tasks.c"

#line 27 "Source/FreeRTOS/tasks.c"
 

 
#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdlib.h"
 

#line 4 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdlib.h"

#line 6 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdlib.h"

#line 9 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdlib.h"
 
 

#line 16 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdlib.h"
 
double atof (const auto char *s);

#line 28 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdlib.h"
 
signed char atob (const auto char *s);


#line 39 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdlib.h"
 
int atoi (const auto char *s);

#line 47 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdlib.h"
 
long atol (const auto char *s);

#line 58 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdlib.h"
 
unsigned long atoul (const auto char *s);


#line 71 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdlib.h"
 
char *btoa (auto signed char value, auto char *s);

#line 83 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdlib.h"
 
char *itoa (auto int value, auto char *s);

#line 95 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdlib.h"
 
char *ltoa (auto long value, auto char *s);

#line 107 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdlib.h"
 
char *ultoa (auto unsigned long value, auto char *s);
 


#line 112 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdlib.h"
 
 

#line 116 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdlib.h"
 
#line 118 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdlib.h"


#line 124 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdlib.h"
 
int rand (void);

#line 136 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdlib.h"
 
void srand (auto unsigned int seed);
 
#line 140 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdlib.h"
#line 149 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdlib.h"

#line 151 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdlib.h"
#line 30 "Source/FreeRTOS/tasks.c"

#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"

#line 3 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"


#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"
 

#line 4 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"

typedef unsigned char wchar_t;


#line 10 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"
 
typedef signed short int ptrdiff_t;
typedef signed short int ptrdiffram_t;
typedef signed short long int ptrdiffrom_t;


#line 20 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"
 
typedef unsigned short int size_t;
typedef unsigned short int sizeram_t;
typedef unsigned short long int sizerom_t;


#line 34 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"
 
#line 36 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"


#line 41 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"
 
#line 43 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"

#line 45 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"
#line 5 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"

#line 7 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"


#line 20 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
#line 22 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"


#line 25 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
#line 27 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"

 

#line 39 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
void *memcpy (auto void *s1, auto const void *s2, auto size_t n);


#line 55 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
void *memmove (auto void *s1, auto const void *s2, auto size_t n);


#line 67 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
char *strcpy (auto char *s1, auto const char *s2);


#line 83 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
char *strncpy (auto char *s1, auto const char *s2, auto size_t n);


#line 97 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
char *strcat (auto char *s1, auto const char *s2);


#line 113 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
char *strncat (auto char *s1, auto const char *s2, auto size_t n);


#line 128 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
signed char memcmp (auto const void *s1, auto const void *s2, auto size_t n);


#line 141 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
signed char strcmp (auto const char *s1, auto const char *s2);


#line 147 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 


#line 161 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
signed char strncmp (auto const char *s1, auto const char *s2, auto size_t n);


#line 167 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 


#line 183 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
void *memchr (auto const void *s, auto unsigned char c, auto size_t n);


#line 199 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
char *strchr (auto const char *s, auto unsigned char c);


#line 210 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
size_t strcspn (auto const char *s1, auto const char *s2);


#line 222 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
char *strpbrk (auto const char *s1, auto const char *s2);


#line 238 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
char *strrchr (auto const char *s, auto unsigned char c);


#line 249 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
size_t strspn (auto const char *s1, auto const char *s2);


#line 262 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
char *strstr (auto const char *s1, auto const char *s2);


#line 305 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
char *strtok (auto char *s1, auto const char *s2);


#line 321 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
void *memset (auto void *s, auto unsigned char c, auto size_t n);


#line 339 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
#line 341 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"


#line 349 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
size_t strlen (auto const char *s);


#line 358 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
char *strupr (auto char *s);


#line 367 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
char *strlwr (auto char *s);



 

#line 379 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
far  rom void *memcpypgm (auto far  rom void *s1, auto const far  rom void *s2, auto sizerom_t n);


#line 389 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
void *memcpypgm2ram (auto void *s1, auto const far  rom void *s2, auto sizeram_t n);


#line 398 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
far  rom void *memcpyram2pgm (auto far  rom void *s1, auto const void *s2, auto sizeram_t n);


#line 407 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
far  rom void *memmovepgm (auto far  rom void *s1, auto const far  rom void *s2, auto sizerom_t n);


#line 417 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
void *memmovepgm2ram (auto void *s1, auto const far  rom void *s2, auto sizeram_t n);


#line 426 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
far  rom void *memmoveram2pgm (auto far  rom void *s1, auto const void *s2, auto sizeram_t n);


#line 434 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
far  rom char *strcpypgm (auto far  rom char *s1, auto const far  rom char *s2);


#line 443 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
char *strcpypgm2ram (auto char *s1, auto const far  rom char *s2);


#line 451 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
far  rom char *strcpyram2pgm (auto far  rom char *s1, auto const char *s2);


#line 460 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
far  rom char *strncpypgm (auto far  rom char *s1, auto const far  rom char *s2, auto sizerom_t n);


#line 470 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
char *strncpypgm2ram (auto char *s1, auto const far  rom char *s2, auto sizeram_t n);


#line 479 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
far  rom char *strncpyram2pgm (auto far  rom char *s1, auto const char *s2, auto sizeram_t n);


#line 487 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
far  rom char *strcatpgm (auto far  rom char *s1, auto const far  rom char *s2);


#line 496 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
char *strcatpgm2ram (auto char *s1, auto const far  rom char *s2);


#line 504 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
far  rom char *strcatram2pgm (auto far  rom char *s1, auto const char *s2);


#line 513 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
far  rom char *strncatpgm (auto far  rom char *s1, auto const far  rom char *s2, auto sizerom_t n);


#line 523 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
char *strncatpgm2ram (auto char *s1, auto const far  rom char *s2, auto sizeram_t n);


#line 532 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
far  rom char *strncatram2pgm (auto far  rom char *s1, auto const char *s2, auto sizeram_t n);


#line 541 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
signed char memcmppgm (auto far  rom void *s1, auto const far  rom void *s2, auto sizerom_t n);


#line 551 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
signed char memcmppgm2ram (auto void *s1, auto const far  rom void *s2, auto sizeram_t n);


#line 560 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
signed char memcmpram2pgm (auto far  rom void *s1, auto const void *s2, auto sizeram_t n);


#line 568 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
signed char strcmppgm (auto const far  rom char *s1, auto const far  rom char *s2);


#line 577 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
signed char strcmppgm2ram (auto const char *s1, auto const far  rom char *s2);


#line 585 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
signed char strcmpram2pgm (auto const far  rom char *s1, auto const char *s2);


#line 594 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
signed char strncmppgm (auto const far  rom char *s1, auto const far  rom char *s2, auto sizerom_t n);


#line 604 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
signed char strncmppgm2ram (auto char *s1, auto const far  rom char *s2, auto sizeram_t n);


#line 613 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
signed char strncmpram2pgm (auto far  rom char *s1, auto const char *s2, auto sizeram_t n);


#line 622 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
far  rom char *memchrpgm (auto const far  rom char *s, auto const unsigned char c, auto sizerom_t n);


#line 631 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
far  rom char *strchrpgm (auto const far  rom char *s, auto unsigned char c);


#line 639 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
sizerom_t strcspnpgm (auto const far  rom char *s1, auto const far  rom char *s2);


#line 647 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
sizerom_t strcspnpgmram (auto const far  rom char *s1, auto const char *s2);


#line 655 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
sizeram_t strcspnrampgm (auto const char *s1, auto const far  rom char *s2);


#line 663 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
far  rom char *strpbrkpgm (auto const far  rom char *s1, auto const far  rom char *s2);


#line 671 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
far  rom char *strpbrkpgmram (auto const far  rom char *s1, auto const char *s2);


#line 679 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
char *strpbrkrampgm (auto const char *s1, auto const far  rom char *s2);


#line 688 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
 


#line 696 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
sizerom_t strspnpgm (auto const far  rom char *s1, auto const far  rom char *s2);


#line 704 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
sizerom_t strspnpgmram (auto const far  rom char *s1, auto const char *s2);


#line 712 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
sizeram_t strspnrampgm (auto const char *s1, auto const far  rom char *s2);


#line 720 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
far  rom char *strstrpgm (auto const far  rom char *s1, auto const far  rom char *s2);


#line 729 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
far  rom char *strstrpgmram (auto const far  rom char *s1, auto const char *s2);


#line 737 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
char *strstrrampgm (auto const char *s1, auto const far  rom char *s2);


#line 745 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
far  rom char *strtokpgm (auto far  rom char *s1, auto const far  rom char *s2);


#line 754 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
char *strtokpgmram (auto char *s1, auto const far  rom char *s2);


#line 762 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
far  rom char *strtokrampgm (auto far  rom char *s1, auto const char *s2);


#line 771 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
far  rom void *memsetpgm (auto far  rom void *s, auto unsigned char c, auto sizerom_t n);


#line 778 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
far  rom char *struprpgm (auto far  rom char *s);


#line 785 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
far  rom char *strlwrpgm (auto far  rom char *s);


#line 792 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
 
sizerom_t strlenpgm (auto const far  rom char *s);

#line 796 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"

#line 798 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"

#line 805 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
#line 814 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"

#line 816 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/string.h"
#line 31 "Source/FreeRTOS/tasks.c"



#line 35 "Source/FreeRTOS/tasks.c"
 
#line 37 "Source/FreeRTOS/tasks.c"

 
#line 1 "Source/FreeRTOS/include/FreeRTOS.h"

#line 27 "Source/FreeRTOS/include/FreeRTOS.h"
 


#line 31 "Source/FreeRTOS/include/FreeRTOS.h"


#line 34 "Source/FreeRTOS/include/FreeRTOS.h"
 
#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"
 

#line 10 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"

#line 20 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"

#line 34 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"

#line 41 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"
#line 45 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"
#line 35 "Source/FreeRTOS/include/FreeRTOS.h"

#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdarg.h"
 


#line 5 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdarg.h"

typedef void* va_list;
#line 8 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdarg.h"
#line 9 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdarg.h"
#line 10 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdarg.h"
#line 11 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdarg.h"
#line 12 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdarg.h"
#line 36 "Source/FreeRTOS/include/FreeRTOS.h"


#line 49 "Source/FreeRTOS/include/FreeRTOS.h"
 
  

 
#line 56 "Source/FreeRTOS/include/FreeRTOS.h"
 

 
#line 1 "Source/FreeRTOSConfig.h"

#line 25 "Source/FreeRTOSConfig.h"
 


#line 29 "Source/FreeRTOSConfig.h"

#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"

#line 3 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"

#line 5 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 7 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 9 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 11 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 13 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 15 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 17 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 19 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 21 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 23 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 25 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 27 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 29 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 31 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 33 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 35 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 37 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 39 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 41 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 43 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 45 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 47 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 49 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 51 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 53 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 55 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 57 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 59 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 61 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 63 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 65 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 67 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 69 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 71 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 73 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 75 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 77 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 79 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 81 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 83 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 85 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 87 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 89 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 91 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 93 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 95 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 97 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 99 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 101 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 103 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 105 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 107 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 109 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 111 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 113 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 115 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 117 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 119 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 121 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 123 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 125 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 127 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 129 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 131 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 133 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 135 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 137 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 139 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 141 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 143 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 145 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 147 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 149 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 151 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 153 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 155 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 157 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 159 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 161 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 163 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 165 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 167 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 169 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 171 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 173 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 175 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 177 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 179 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 181 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 183 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 185 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 187 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 189 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 191 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 193 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 195 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 197 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 199 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 201 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 203 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 205 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 207 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 209 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 211 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 213 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 215 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 217 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 219 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 221 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 223 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 225 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 227 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 229 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 231 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 233 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 235 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 237 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 239 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 241 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 243 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 245 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 247 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 249 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 251 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 253 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 255 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 257 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 259 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 261 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 263 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18f47j53.h"

#line 33 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18f47j53.h"
 


#line 37 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18f47j53.h"

extern volatile far  unsigned char       ADCTRIG;
extern volatile far  union {
  struct {
    unsigned TRIGSEL:2;
  };
  struct {
    unsigned SRC0:1;
    unsigned SRC1:1;
  };
  struct {
    unsigned TRIGSEL0:1;
    unsigned TRIGSEL1:1;
  };
  struct {
    unsigned SRC:2;
  };
} ADCTRIGbits;
extern volatile far  unsigned char       PD0;
extern volatile far  union {
  struct {
    unsigned ADCMD:1;
    unsigned SPI1MD:1;
    unsigned SPI2MD:1;
    unsigned UART1MD:1;
    unsigned UART2MD:1;
    unsigned ECCP1MD:1;
    unsigned ECCP2MD:1;
    unsigned ECCP3MD:1;
  };
  struct {
    unsigned :1;
    unsigned PMDMSSP1:1;
    unsigned PMDMSSP2:1;
    unsigned PMDUART1:1;
    unsigned PMDUART2:1;
    unsigned PMDECCP1:1;
    unsigned PMDECCP2:1;
    unsigned PMDECCP3:1;
  };
  struct {
    unsigned PMDADC:1;
    unsigned PMDMSSP:2;
    unsigned PMDUART:2;
    unsigned PMDECCP:3;
  };
  struct {
    unsigned :1;
    unsigned SPIMD:2;
    unsigned UARTMD:2;
    unsigned ECCPMD:3;
  };
} PD0bits;
extern volatile far  unsigned char       PMDIS0;
extern volatile far  union {
  struct {
    unsigned ADCMD:1;
    unsigned SPI1MD:1;
    unsigned SPI2MD:1;
    unsigned UART1MD:1;
    unsigned UART2MD:1;
    unsigned ECCP1MD:1;
    unsigned ECCP2MD:1;
    unsigned ECCP3MD:1;
  };
  struct {
    unsigned :1;
    unsigned PMDMSSP1:1;
    unsigned PMDMSSP2:1;
    unsigned PMDUART1:1;
    unsigned PMDUART2:1;
    unsigned PMDECCP1:1;
    unsigned PMDECCP2:1;
    unsigned PMDECCP3:1;
  };
  struct {
    unsigned PMDADC:1;
    unsigned PMDMSSP:2;
    unsigned PMDUART:2;
    unsigned PMDECCP:3;
  };
  struct {
    unsigned :1;
    unsigned SPIMD:2;
    unsigned UARTMD:2;
    unsigned ECCPMD:3;
  };
} PMDIS0bits;
extern volatile far  unsigned char       PD1;
extern volatile far  union {
  struct {
    unsigned :1;
    unsigned TMR1MD:1;
    unsigned TMR2MD:1;
    unsigned TMR3MD:1;
    unsigned TMR4MD:1;
    unsigned RTCCMD:1;
    unsigned CTMUMD:1;
    unsigned PSPMD:1;
  };
  struct {
    unsigned :1;
    unsigned PMDTMR1:1;
    unsigned PMDTMR2:1;
    unsigned PMDTMR3:1;
    unsigned PMDTMR4:1;
  };
  struct {
    unsigned :1;
    unsigned PMDTMR:4;
    unsigned PMDRTCC:1;
    unsigned PMDCTMU:1;
    unsigned PMDPSP:1;
  };
  struct {
    unsigned :1;
    unsigned TMRMD:4;
  };
} PD1bits;
extern volatile far  unsigned char       PMDIS1;
extern volatile far  union {
  struct {
    unsigned :1;
    unsigned TMR1MD:1;
    unsigned TMR2MD:1;
    unsigned TMR3MD:1;
    unsigned TMR4MD:1;
    unsigned RTCCMD:1;
    unsigned CTMUMD:1;
    unsigned PSPMD:1;
  };
  struct {
    unsigned :1;
    unsigned PMDTMR1:1;
    unsigned PMDTMR2:1;
    unsigned PMDTMR3:1;
    unsigned PMDTMR4:1;
  };
  struct {
    unsigned :1;
    unsigned PMDTMR:4;
    unsigned PMDRTCC:1;
    unsigned PMDCTMU:1;
    unsigned PMDPSP:1;
  };
  struct {
    unsigned :1;
    unsigned TMRMD:4;
  };
} PMDIS1bits;
extern volatile far  unsigned char       PD2;
extern volatile far  union {
  struct {
    unsigned CMP1MD:1;
    unsigned CMP2MD:1;
    unsigned CMP3MD:1;
    unsigned TMR5MD:1;
    unsigned TMR6MD:1;
    unsigned :1;
    unsigned TMR8MD:1;
  };
  struct {
    unsigned PMDCMP1:1;
    unsigned PMDCMP2:1;
    unsigned PMDCMP3:1;
  };
  struct {
    unsigned PMDCMP:3;
    unsigned PMDTMR5:1;
    unsigned PMDTMR6:1;
    unsigned :1;
    unsigned PMDTMR8:1;
  };
  struct {
    unsigned CMPMD:3;
  };
} PD2bits;
extern volatile far  unsigned char       PMDIS2;
extern volatile far  union {
  struct {
    unsigned CMP1MD:1;
    unsigned CMP2MD:1;
    unsigned CMP3MD:1;
    unsigned TMR5MD:1;
    unsigned TMR6MD:1;
    unsigned :1;
    unsigned TMR8MD:1;
  };
  struct {
    unsigned PMDCMP1:1;
    unsigned PMDCMP2:1;
    unsigned PMDCMP3:1;
  };
  struct {
    unsigned PMDCMP:3;
    unsigned PMDTMR5:1;
    unsigned PMDTMR6:1;
    unsigned :1;
    unsigned PMDTMR8:1;
  };
  struct {
    unsigned CMPMD:3;
  };
} PMDIS2bits;
extern volatile far  unsigned char       PD3;
extern volatile far  union {
  struct {
    unsigned :1;
    unsigned CCP4MD:1;
    unsigned CCP5MD:1;
    unsigned CCP6MD:1;
    unsigned CCP7MD:1;
    unsigned CCP8MD:1;
    unsigned CCP9MD:1;
    unsigned CCP10MD:1;
  };
  struct {
    unsigned :1;
    unsigned PMDCCP4:1;
    unsigned PMDCCP5:1;
    unsigned PMDCCP6:1;
    unsigned PMDCCP7:1;
    unsigned PMDCCP8:1;
    unsigned PMDCCP9:1;
    unsigned PMDCCP10:1;
  };
  struct {
    unsigned :1;
    unsigned PMDCCP:7;
  };
  struct {
    unsigned :1;
    unsigned CCPMD:7;
  };
} PD3bits;
extern volatile far  unsigned char       PMDIS3;
extern volatile far  union {
  struct {
    unsigned :1;
    unsigned CCP4MD:1;
    unsigned CCP5MD:1;
    unsigned CCP6MD:1;
    unsigned CCP7MD:1;
    unsigned CCP8MD:1;
    unsigned CCP9MD:1;
    unsigned CCP10MD:1;
  };
  struct {
    unsigned :1;
    unsigned PMDCCP4:1;
    unsigned PMDCCP5:1;
    unsigned PMDCCP6:1;
    unsigned PMDCCP7:1;
    unsigned PMDCCP8:1;
    unsigned PMDCCP9:1;
    unsigned PMDCCP10:1;
  };
  struct {
    unsigned :1;
    unsigned PMDCCP:7;
  };
  struct {
    unsigned :1;
    unsigned CCPMD:7;
  };
} PMDIS3bits;
extern volatile far  unsigned char       PPSCON;
extern volatile far  struct {
  unsigned IOLOCK:1;
} PPSCONbits;
extern volatile far  unsigned char       RPOR0;
extern volatile far  unsigned char       RPOR1;
extern volatile far  unsigned char       RPOR2;
extern volatile far  unsigned char       RPOR3;
extern volatile far  unsigned char       RPOR4;
extern volatile far  unsigned char       RPOR5;
extern volatile far  unsigned char       RPOR6;
extern volatile far  unsigned char       RPOR7;
extern volatile far  unsigned char       RPOR8;
extern volatile far  unsigned char       RPOR9;
extern volatile far  unsigned char       RPOR10;
extern volatile far  unsigned char       RPOR11;
extern volatile far  unsigned char       RPOR12;
extern volatile far  unsigned char       RPOR13;
extern volatile far  unsigned char       RPOR17;
extern volatile far  unsigned char       RPOR18;
extern volatile far  unsigned char       RPOR19;
extern volatile far  unsigned char       RPOR20;
extern volatile far  unsigned char       RPOR21;
extern volatile far  unsigned char       RPOR22;
extern volatile far  unsigned char       RPOR23;
extern volatile far  unsigned char       RPOR24;
extern volatile far  unsigned char       RPINR1;
extern volatile far  unsigned char       RPINR2;
extern volatile far  unsigned char       RPINR3;
extern volatile far  unsigned char       RPINR4;
extern volatile far  unsigned char       RPINR6;
extern volatile far  unsigned char       RPINR15;
extern volatile far  unsigned char       RPINR7;
extern volatile far  unsigned char       RPINR8;
extern volatile far  unsigned char       RPINR9;
extern volatile far  unsigned char       RPINR12;
extern volatile far  unsigned char       RPINR13;
extern volatile far  unsigned char       RPINR14;
extern volatile far  unsigned char       RPINR16;
extern volatile far  unsigned char       RPINR17;
extern volatile far  unsigned char       RPINR21;
extern volatile far  unsigned char       RPINR22;
extern volatile far  unsigned char       RPINR23;
extern volatile far  unsigned char       RPINR24;
extern volatile far  unsigned char       CCP10CON;
extern volatile far  union {
  struct {
    unsigned CCP10M:4;
    unsigned DC10B:2;
  };
  struct {
    unsigned CCP10M0:1;
    unsigned CCP10M1:1;
    unsigned CCP10M2:1;
    unsigned CCP10M3:1;
    unsigned DC10B0:1;
    unsigned DC10B1:1;
  };
} CCP10CONbits;
extern volatile far  unsigned char       CCPR10L;
extern volatile far  unsigned char       CCPR10H;
extern volatile far  unsigned char       CCP9CON;
extern volatile far  union {
  struct {
    unsigned CCP9M:4;
    unsigned DC9B:2;
  };
  struct {
    unsigned CCP9M0:1;
    unsigned CCP9M1:1;
    unsigned CCP9M2:1;
    unsigned CCP9M3:1;
    unsigned DC9B0:1;
    unsigned DC9B1:1;
  };
} CCP9CONbits;
extern volatile far  unsigned char       CCPR9L;
extern volatile far  unsigned char       CCPR9H;
extern volatile far  unsigned char       CCP8CON;
extern volatile far  union {
  struct {
    unsigned CCP8M:4;
    unsigned DC8B:2;
  };
  struct {
    unsigned CCP8M0:1;
    unsigned CCP8M1:1;
    unsigned CCP8M2:1;
    unsigned CCP8M3:1;
    unsigned DC8B0:1;
    unsigned DC8B1:1;
  };
} CCP8CONbits;
extern volatile far  unsigned char       CCPR8L;
extern volatile far  unsigned char       CCPR8H;
extern volatile far  unsigned char       CCP7CON;
extern volatile far  union {
  struct {
    unsigned CCP7M:4;
    unsigned DC7B:2;
  };
  struct {
    unsigned CCP7M0:1;
    unsigned CCP7M1:1;
    unsigned CCP7M2:1;
    unsigned CCP7M3:1;
    unsigned DC7B0:1;
    unsigned DC7B1:1;
  };
} CCP7CONbits;
extern volatile far  unsigned char       CCPR7L;
extern volatile far  unsigned char       CCPR7H;
extern volatile far  unsigned char       CCP6CON;
extern volatile far  union {
  struct {
    unsigned CCP6M:4;
    unsigned DC6B:2;
  };
  struct {
    unsigned CCP6M0:1;
    unsigned CCP6M1:1;
    unsigned CCP6M2:1;
    unsigned CCP6M3:1;
    unsigned DC6B0:1;
    unsigned DC6B1:1;
  };
} CCP6CONbits;
extern volatile far  unsigned char       CCPR6L;
extern volatile far  unsigned char       CCPR6H;
extern volatile far  unsigned char       CCP5CON;
extern volatile far  union {
  struct {
    unsigned CCP5M:4;
    unsigned DC5B:2;
  };
  struct {
    unsigned CCP5M0:1;
    unsigned CCP5M1:1;
    unsigned CCP5M2:1;
    unsigned CCP5M3:1;
    unsigned DC5B0:1;
    unsigned DC5B1:1;
  };
} CCP5CONbits;
extern volatile far  unsigned char       CCPR5L;
extern volatile far  unsigned char       CCPR5H;
extern volatile far  unsigned char       CCP4CON;
extern volatile far  union {
  struct {
    unsigned CCP4M:4;
    unsigned DC4B:2;
  };
  struct {
    unsigned CCP4M0:1;
    unsigned CCP4M1:1;
    unsigned CCP4M2:1;
    unsigned CCP4M3:1;
    unsigned DC4B0:1;
    unsigned DC4B1:1;
  };
} CCP4CONbits;
extern volatile far  unsigned char       CCPR4L;
extern volatile far  unsigned char       CCPR4H;
extern volatile far  unsigned char       CCP3CON;
extern volatile far  union {
  struct {
    unsigned CCP3M:4;
    unsigned DC3B:2;
    unsigned P3M:2;
  };
  struct {
    unsigned CCP3M0:1;
    unsigned CCP3M1:1;
    unsigned CCP3M2:1;
    unsigned CCP3M3:1;
    unsigned DC3B0:1;
    unsigned DC3B1:1;
    unsigned P3M0:1;
    unsigned P3M1:1;
  };
} CCP3CONbits;
extern volatile far  unsigned char       CCPR3L;
extern volatile far  unsigned char       CCPR3H;
extern volatile far  unsigned char       ECCP3DEL;
extern volatile far  union {
  struct {
    unsigned P3DC:7;
    unsigned P3RSEN:1;
  };
  struct {
    unsigned P3DC0:1;
    unsigned P3DC1:1;
    unsigned P3DC2:1;
    unsigned P3DC3:1;
    unsigned P3DC4:1;
    unsigned P3DC5:1;
    unsigned P3DC6:1;
  };
} ECCP3DELbits;
extern volatile far  unsigned char       ECCP3AS;
extern volatile far  union {
  struct {
    unsigned PSS3BD:2;
    unsigned PSS3AC:2;
    unsigned ECCP3AS:3;
    unsigned ECCP3ASE:1;
  };
  struct {
    unsigned PSS3BD0:1;
    unsigned PSS3BD1:1;
    unsigned PSS3AC0:1;
    unsigned PSS3AC1:1;
    unsigned ECCP3AS0:1;
    unsigned ECCP3AS1:1;
    unsigned ECCP3AS2:1;
  };
} ECCP3ASbits;
extern volatile far  unsigned char       PSTR3CON;
extern volatile far  union {
  struct {
    unsigned STRA:1;
    unsigned STRB:1;
    unsigned STRC:1;
    unsigned STRD:1;
    unsigned STRSYNC:1;
    unsigned :1;
    unsigned CMPL:2;
  };
  struct {
    unsigned :6;
    unsigned CMPL0:1;
    unsigned CMPL1:1;
  };
} PSTR3CONbits;
extern volatile far  unsigned char       T8CON;
extern volatile far  union {
  struct {
    unsigned T8CKPS:2;
    unsigned TMR8ON:1;
    unsigned T8OUTPS:4;
  };
  struct {
    unsigned T8CKPS0:1;
    unsigned T8CKPS1:1;
    unsigned :1;
    unsigned T8OUTPS0:1;
    unsigned T8OUTPS1:1;
    unsigned T8OUTPS2:1;
    unsigned T8OUTPS3:1;
  };
} T8CONbits;
extern volatile far  unsigned char       PR8;
extern volatile far  unsigned char       TMR8;
extern volatile far  unsigned char       T6CON;
extern volatile far  union {
  struct {
    unsigned T6CKPS:2;
    unsigned TMR6ON:1;
    unsigned T6OUTPS:4;
  };
  struct {
    unsigned T6CKPS0:1;
    unsigned T6CKPS1:1;
    unsigned :1;
    unsigned T6OUTPS0:1;
    unsigned T6OUTPS1:1;
    unsigned T6OUTPS2:1;
    unsigned T6OUTPS3:1;
  };
} T6CONbits;
extern volatile far  unsigned char       PR6;
extern volatile far  unsigned char       TMR6;
extern volatile far  unsigned char       T5GCON;
extern volatile far  union {
  struct {
    unsigned T5GSS:2;
    unsigned T5GVAL:1;
    unsigned T5GGO_NOT_T5DONE:1;
    unsigned T5GSPM:1;
    unsigned T5GTM:1;
    unsigned T5GPOL:1;
    unsigned TMR5GE:1;
  };
  struct {
    unsigned T5GSS0:1;
    unsigned T5GSS1:1;
    unsigned :1;
    unsigned T5GGO:1;
  };
  struct {
    unsigned :3;
    unsigned NOT_T5DONE:1;
  };
  struct {
    unsigned :3;
    unsigned T5DONE:1;
  };
} T5GCONbits;
extern volatile far  unsigned char       T5CON;
extern volatile far  union {
  struct {
    unsigned TMR5ON:1;
    unsigned RD16:1;
    unsigned NOT_T5SYNC:1;
    unsigned T5OSCEN:1;
    unsigned T5CKPS:2;
    unsigned TMR5CS:2;
  };
  struct {
    unsigned :4;
    unsigned T5CKPS0:1;
    unsigned T5CKPS1:1;
    unsigned TMR5CS0:1;
    unsigned TMR5CS1:1;
  };
} T5CONbits;
extern volatile far  unsigned char       TMR5L;
extern volatile far  unsigned char       TMR5H;
extern volatile far  unsigned char       CM3CON;
extern volatile far  union {
  struct {
    unsigned CCH:2;
    unsigned CREF:1;
    unsigned EVPOL:2;
    unsigned CPOL:1;
    unsigned COE:1;
    unsigned CON:1;
  };
  struct {
    unsigned CCH0:1;
    unsigned CCH1:1;
    unsigned :1;
    unsigned EVPOL0:1;
    unsigned EVPOL1:1;
  };
} CM3CONbits;
extern volatile far  unsigned char       UEP0;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP0bits;
extern volatile far  unsigned char       UEP1;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP1bits;
extern volatile far  unsigned char       UEP2;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP2bits;
extern volatile far  unsigned char       UEP3;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP3bits;
extern volatile far  unsigned char       UEP4;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP4bits;
extern volatile far  unsigned char       UEP5;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP5bits;
extern volatile far  unsigned char       UEP6;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP6bits;
extern volatile far  unsigned char       UEP7;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP7bits;
extern volatile far  unsigned char       UEP8;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP8bits;
extern volatile far  unsigned char       UEP9;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP9bits;
extern volatile far  unsigned char       UEP10;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP10bits;
extern volatile far  unsigned char       UEP11;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP11bits;
extern volatile far  unsigned char       UEP12;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP12bits;
extern volatile far  unsigned char       UEP13;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP13bits;
extern volatile far  unsigned char       UEP14;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP14bits;
extern volatile far  unsigned char       UEP15;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP15bits;
extern volatile far  unsigned char       UIE;
extern volatile far  struct {
  unsigned URSTIE:1;
  unsigned UERRIE:1;
  unsigned ACTVIE:1;
  unsigned TRNIE:1;
  unsigned IDLEIE:1;
  unsigned STALLIE:1;
  unsigned SOFIE:1;
} UIEbits;
extern volatile far  unsigned char       UEIE;
extern volatile far  struct {
  unsigned PIDEE:1;
  unsigned CRC5EE:1;
  unsigned CRC16EE:1;
  unsigned DFN8EE:1;
  unsigned BTOEE:1;
  unsigned :2;
  unsigned BTSEE:1;
} UEIEbits;
extern volatile far  unsigned char       UADDR;
extern volatile far  union {
  struct {
    unsigned ADDR:7;
  };
  struct {
    unsigned ADDR0:1;
    unsigned ADDR1:1;
    unsigned ADDR2:1;
    unsigned ADDR3:1;
    unsigned ADDR4:1;
    unsigned ADDR5:1;
    unsigned ADDR6:1;
  };
} UADDRbits;
extern volatile far  unsigned char       UCFG;
extern volatile far  struct {
  unsigned PPB0:1;
  unsigned PPB1:1;
  unsigned FSEN:1;
  unsigned UTRDIS:1;
  unsigned UPUEN:1;
  unsigned :1;
  unsigned UOEMON:1;
  unsigned UTEYE:1;
} UCFGbits;
extern volatile far  unsigned char       RTCVALL;
extern volatile far  unsigned char       RTCVALH;
extern volatile far  unsigned char       PADCFG1;
extern volatile far  struct {
  unsigned PMPTTL:1;
  unsigned RTSECSEL0:1;
  unsigned RTSECSEL1:1;
} PADCFG1bits;
extern volatile far  unsigned char       REFOCON;
extern volatile far  union {
  struct {
    unsigned RODIV:4;
    unsigned ROSEL:1;
    unsigned ROSSLP:1;
    unsigned :1;
    unsigned ROON:1;
  };
  struct {
    unsigned RODIV0:1;
    unsigned RODIV1:1;
    unsigned RODIV2:1;
    unsigned RODIV3:1;
  };
} REFOCONbits;
extern volatile far  unsigned char       RTCCAL;
extern volatile far  union {
  struct {
    unsigned CAL:8;
  };
  struct {
    unsigned CAL0:1;
    unsigned CAL1:1;
    unsigned CAL2:1;
    unsigned CAL3:1;
    unsigned CAL4:1;
    unsigned CAL5:1;
    unsigned CAL6:1;
    unsigned CAL7:1;
  };
} RTCCALbits;
extern volatile far  unsigned char       RTCCFG;
extern volatile far  struct {
  unsigned RTCPTR0:1;
  unsigned RTCPTR1:1;
  unsigned RTCOE:1;
  unsigned HALFSEC:1;
  unsigned RTCSYNC:1;
  unsigned RTCWREN:1;
  unsigned :1;
  unsigned RTCEN:1;
} RTCCFGbits;
extern volatile far  unsigned char       ODCON3;
extern volatile far  struct {
  unsigned SPI1OD:1;
  unsigned SPI2OD:1;
} ODCON3bits;
extern volatile far  unsigned char       ODCON2;
extern volatile far  struct {
  unsigned U1OD:1;
  unsigned U2OD:1;
  unsigned CCP9OD:1;
  unsigned CCP10OD:1;
} ODCON2bits;
extern volatile far  unsigned char       ODCON1;
extern volatile far  struct {
  unsigned ECCP1OD:1;
  unsigned ECCP2OD:1;
  unsigned ECCP3OD:1;
  unsigned CCP4OD:1;
  unsigned CCP5OD:1;
  unsigned CCP6OD:1;
  unsigned CCP7OD:1;
  unsigned CCP8OD:1;
} ODCON1bits;
extern volatile far  unsigned char       ALRMVALL;
extern volatile far  unsigned char       ALRMVALH;
extern volatile far  unsigned char       ALRMRPT;
extern volatile far  union {
  struct {
    unsigned ARPT:8;
  };
  struct {
    unsigned ARPT0:1;
    unsigned ARPT1:1;
    unsigned ARPT2:1;
    unsigned ARPT3:1;
    unsigned ARPT4:1;
    unsigned ARPT5:1;
    unsigned ARPT6:1;
    unsigned ARPT7:1;
  };
} ALRMRPTbits;
extern volatile far  unsigned char       ALRMCFG;
extern volatile far  union {
  struct {
    unsigned ALRMPTR:2;
    unsigned AMASK:4;
    unsigned CHIME:1;
    unsigned ALRMEN:1;
  };
  struct {
    unsigned ALRMPTR0:1;
    unsigned ALRMPTR1:1;
    unsigned AMASK0:1;
    unsigned AMASK1:1;
    unsigned AMASK2:1;
    unsigned AMASK3:1;
  };
} ALRMCFGbits;
extern volatile far  unsigned char       ANCON0;
extern volatile far  struct {
  unsigned PCFG0:1;
  unsigned PCFG1:1;
  unsigned PCFG2:1;
  unsigned PCFG3:1;
  unsigned PCFG4:1;
  unsigned PCFG5:1;
  unsigned PCFG6:1;
  unsigned PCFG7:1;
} ANCON0bits;
extern volatile far  unsigned char       ANCON1;
extern volatile far  struct {
  unsigned PCFG8:1;
  unsigned PCFG9:1;
  unsigned PCFG10:1;
  unsigned PCFG11:1;
  unsigned PCFG12:1;
  unsigned :2;
  unsigned VBGEN:1;
} ANCON1bits;
extern volatile far  unsigned char       DSWAKEL;
extern volatile far  struct {
  unsigned DSPOR:1;
  unsigned :1;
  unsigned DSMCLR:1;
  unsigned DSRTC:1;
  unsigned DSWDT:1;
  unsigned DSULP:1;
  unsigned :1;
  unsigned DSFLT:1;
} DSWAKELbits;
extern volatile far  unsigned char       DSWAKEH;
extern volatile far  struct {
  unsigned DSINT0:1;
} DSWAKEHbits;
extern volatile far  unsigned char       DSCONL;
extern volatile far  struct {
  unsigned RELEASE:1;
  unsigned DSBOR:1;
  unsigned ULPWDIS:1;
} DSCONLbits;
extern volatile far  unsigned char       DSCONH;
extern volatile far  struct {
  unsigned RTCWDIS:1;
  unsigned DSULPEN:1;
  unsigned :5;
  unsigned DSEN:1;
} DSCONHbits;
extern volatile far  unsigned char       DSGPR0;
extern volatile far  unsigned char       DSGPR1;
extern volatile far  unsigned char       CCPTMRS2;
extern volatile far  union {
  struct {
    unsigned C8TSEL:2;
    unsigned C9TSEL0:1;
    unsigned :1;
    unsigned C10TSEL0:1;
  };
  struct {
    unsigned C8TSEL0:1;
    unsigned C8TSEL1:1;
  };
} CCPTMRS2bits;
extern volatile far  unsigned char       CCPTMRS1;
extern volatile far  union {
  struct {
    unsigned C4TSEL:2;
    unsigned C5TSEL0:1;
    unsigned :1;
    unsigned C6TSEL0:1;
    unsigned :1;
    unsigned C7TSEL:2;
  };
  struct {
    unsigned C4TSEL0:1;
    unsigned C4TSEL1:1;
    unsigned :4;
    unsigned C7TSEL0:1;
    unsigned C7TSEL1:1;
  };
} CCPTMRS1bits;
extern volatile far  unsigned char       CCPTMRS0;
extern volatile far  union {
  struct {
    unsigned C1TSEL:3;
    unsigned C2TSEL:3;
    unsigned C3TSEL:2;
  };
  struct {
    unsigned C1TSEL0:1;
    unsigned C1TSEL1:1;
    unsigned C1TSEL2:1;
    unsigned C2TSEL0:1;
    unsigned C2TSEL1:1;
    unsigned C2TSEL2:1;
    unsigned C3TSEL0:1;
    unsigned C3TSEL1:1;
  };
} CCPTMRS0bits;
extern volatile far  unsigned char       CVRCON;
extern volatile far  union {
  struct {
    unsigned CVR:4;
    unsigned CVRSS:1;
    unsigned CVRR:1;
    unsigned CVROE:1;
    unsigned CVREN:1;
  };
  struct {
    unsigned CVR0:1;
    unsigned CVR1:1;
    unsigned CVR2:1;
    unsigned CVR3:1;
  };
} CVRCONbits;
extern volatile far  unsigned char       PMSTATL;
extern volatile far  struct {
  unsigned OB0E:1;
  unsigned OB1E:1;
  unsigned OB2E:1;
  unsigned OB3E:1;
  unsigned :2;
  unsigned OBUF:1;
  unsigned OBE:1;
} PMSTATLbits;
extern volatile far  unsigned char       PMSTATH;
extern volatile far  struct {
  unsigned IB0F:1;
  unsigned IB1F:1;
  unsigned IB2F:1;
  unsigned IB3F:1;
  unsigned :2;
  unsigned IBOV:1;
  unsigned IBF:1;
} PMSTATHbits;
extern volatile far  unsigned char       PMEL;
extern volatile far  union {
  struct {
    unsigned PTENL:8;
  };
  struct {
    unsigned PTEN0:1;
    unsigned PTEN1:1;
    unsigned PTEN2:1;
    unsigned PTEN3:1;
    unsigned PTEN4:1;
    unsigned PTEN5:1;
    unsigned PTEN6:1;
    unsigned PTEN7:1;
  };
} PMELbits;
extern volatile far  unsigned char       PMEH;
extern volatile far  union {
  struct {
    unsigned PTENH:8;
  };
  struct {
    unsigned PTEN8:1;
    unsigned PTEN9:1;
    unsigned PTEN10:1;
    unsigned PTEN11:1;
    unsigned PTEN12:1;
    unsigned PTEN13:1;
    unsigned PTEN14:1;
    unsigned PTEN15:1;
  };
} PMEHbits;
extern volatile far  unsigned char       PMDIN2L;
extern volatile far  unsigned char       PMDIN2H;
extern volatile far  unsigned char       PMDOUT2L;
extern volatile far  unsigned char       PMDOUT2H;
extern volatile far  unsigned char       PMMODEL;
extern volatile far  union {
  struct {
    unsigned WAITE:2;
    unsigned WAITM:4;
    unsigned WAITB:2;
  };
  struct {
    unsigned WAITE0:1;
    unsigned WAITE1:1;
    unsigned WAITM0:1;
    unsigned WAITM1:1;
    unsigned WAITM2:1;
    unsigned WAITM3:1;
    unsigned WAITB0:1;
    unsigned WAITB1:1;
  };
} PMMODELbits;
extern volatile far  unsigned char       PMMODEH;
extern volatile far  struct {
  unsigned MODE0:1;
  unsigned MODE1:1;
  unsigned MODE16:1;
  unsigned INCM0:1;
  unsigned INCM1:1;
  unsigned IRQM0:1;
  unsigned IRQM1:1;
  unsigned BUSY:1;
} PMMODEHbits;
extern volatile far  unsigned char       PMCONL;
extern volatile far  struct {
  unsigned RDSP:1;
  unsigned WRSP:1;
  unsigned BEP:1;
  unsigned CS1P:1;
  unsigned Reserved:1;
  unsigned ALP:1;
  unsigned CSF0:1;
  unsigned CSF1:1;
} PMCONLbits;
extern volatile far  unsigned char       PMCONH;
extern volatile far  struct {
  unsigned PTRDEN:1;
  unsigned PTWREN:1;
  unsigned PTBEEN:1;
  unsigned ADRMUX0:1;
  unsigned ADRMUX1:1;
  unsigned PSIDL:1;
  unsigned :1;
  unsigned PMPEN:1;
} PMCONHbits;
extern volatile near unsigned            UFRM;
extern volatile near unsigned char       UFRML;
extern volatile near union {
  struct {
    unsigned FRM:8;
  };
  struct {
    unsigned FRM0:1;
    unsigned FRM1:1;
    unsigned FRM2:1;
    unsigned FRM3:1;
    unsigned FRM4:1;
    unsigned FRM5:1;
    unsigned FRM6:1;
    unsigned FRM7:1;
  };
} UFRMLbits;
extern volatile near unsigned char       UFRMH;
extern volatile near union {
  struct {
    unsigned FRM:3;
  };
  struct {
    unsigned FRM8:1;
    unsigned FRM9:1;
    unsigned FRM10:1;
  };
} UFRMHbits;
extern volatile near unsigned char       UIR;
extern volatile near struct {
  unsigned URSTIF:1;
  unsigned UERRIF:1;
  unsigned ACTVIF:1;
  unsigned TRNIF:1;
  unsigned IDLEIF:1;
  unsigned STALLIF:1;
  unsigned SOFIF:1;
} UIRbits;
extern volatile near unsigned char       UEIR;
extern volatile near struct {
  unsigned PIDEF:1;
  unsigned CRC5EF:1;
  unsigned CRC16EF:1;
  unsigned DFN8EF:1;
  unsigned BTOEF:1;
  unsigned :2;
  unsigned BTSEF:1;
} UEIRbits;
extern volatile near unsigned char       USTAT;
extern volatile near union {
  struct {
    unsigned :1;
    unsigned PPBI:1;
    unsigned DIR:1;
    unsigned ENDP:4;
  };
  struct {
    unsigned :3;
    unsigned ENDP0:1;
    unsigned ENDP1:1;
    unsigned ENDP2:1;
    unsigned ENDP3:1;
  };
} USTATbits;
extern volatile near unsigned char       UCON;
extern volatile near struct {
  unsigned :1;
  unsigned SUSPND:1;
  unsigned RESUME:1;
  unsigned USBEN:1;
  unsigned PKTDIS:1;
  unsigned SE0:1;
  unsigned PPBRST:1;
} UCONbits;
extern volatile near unsigned char       DMABCH;
extern volatile near struct {
  unsigned DMACNTHB:2;
} DMABCHbits;
extern volatile near unsigned char       DMABCL;
extern volatile near unsigned char       RXADDRH;
extern volatile near struct {
  unsigned DMARCVPTRHB:4;
} RXADDRHbits;
extern volatile near unsigned char       RXADDRL;
extern volatile near unsigned char       TXADDRH;
extern volatile near struct {
  unsigned DMATXPTRHB:4;
} TXADDRHbits;
extern volatile near unsigned char       TXADDRL;
extern volatile near unsigned char       PMDIN1L;
extern volatile near unsigned char       PMDIN1H;
extern volatile near unsigned char       PMADDRL;
extern volatile near unsigned char       PMDOUT1L;
extern volatile near unsigned char       PMADDRH;
extern volatile near struct {
  unsigned ADDRH:6;
  unsigned CS1:1;
} PMADDRHbits;
extern volatile near unsigned char       PMDOUT1H;
extern volatile near unsigned char       CMSTAT;
extern volatile near struct {
  unsigned COUT1:1;
  unsigned COUT2:1;
  unsigned COUT3:1;
} CMSTATbits;
extern volatile near unsigned char       CMSTATUS;
extern volatile near struct {
  unsigned COUT1:1;
  unsigned COUT2:1;
  unsigned COUT3:1;
} CMSTATUSbits;
extern volatile near unsigned char       SSP2CON2;
extern volatile near union {
  struct {
    unsigned SEN:1;
    unsigned RSEN:1;
    unsigned PEN:1;
    unsigned RCEN:1;
    unsigned ACKEN:1;
    unsigned ACKDT:1;
    unsigned ACKSTAT:1;
    unsigned GCEN:1;
  };
  struct {
    unsigned :1;
    unsigned ADMSK1:1;
    unsigned ADMSK2:1;
    unsigned ADMSK3:1;
    unsigned ADMSK4:1;
    unsigned ADMSK5:1;
  };
} SSP2CON2bits;
extern volatile near unsigned char       SSP2CON1;
extern volatile near union {
  struct {
    unsigned SSPM:4;
    unsigned CKP:1;
    unsigned SSPEN:1;
    unsigned SSPOV:1;
    unsigned WCOL:1;
  };
  struct {
    unsigned SSPM0:1;
    unsigned SSPM1:1;
    unsigned SSPM2:1;
    unsigned SSPM3:1;
  };
} SSP2CON1bits;
extern volatile near unsigned char       SSP2STAT;
extern volatile near struct {
  unsigned BF:1;
  unsigned UA:1;
  unsigned R_NOT_W:1;
  unsigned S:1;
  unsigned P:1;
  unsigned D_NOT_A:1;
  unsigned CKE:1;
  unsigned SMP:1;
} SSP2STATbits;
extern volatile near unsigned char       SSP2ADD;
extern volatile near unsigned char       SSP2MSK;
extern volatile near struct {
  unsigned MSK0:1;
  unsigned MSK1:1;
  unsigned MSK2:1;
  unsigned MSK3:1;
  unsigned MSK4:1;
  unsigned MSK5:1;
  unsigned MSK6:1;
  unsigned MSK7:1;
} SSP2MSKbits;
extern volatile near unsigned char       SSP2BUF;
extern volatile near unsigned char       T4CON;
extern volatile near union {
  struct {
    unsigned T4CKPS:2;
    unsigned TMR4ON:1;
    unsigned T4OUTPS:4;
  };
  struct {
    unsigned T4CKPS0:1;
    unsigned T4CKPS1:1;
    unsigned :1;
    unsigned T4OUTPS0:1;
    unsigned T4OUTPS1:1;
    unsigned T4OUTPS2:1;
    unsigned T4OUTPS3:1;
  };
} T4CONbits;
extern volatile near unsigned char       PR4;
extern volatile near unsigned char       TMR4;
extern volatile near unsigned char       T3CON;
extern volatile near union {
  struct {
    unsigned TMR3ON:1;
    unsigned RD16:1;
    unsigned NOT_T3SYNC:1;
    unsigned T3OSCEN:1;
    unsigned T3CKPS:2;
    unsigned TMR3CS:2;
  };
  struct {
    unsigned :4;
    unsigned T3CKPS0:1;
    unsigned T3CKPS1:1;
    unsigned TMR3CS0:1;
    unsigned TMR3CS1:1;
  };
} T3CONbits;
extern volatile near unsigned char       TMR3L;
extern volatile near unsigned char       TMR3H;
extern volatile near unsigned char       BAUDCON2;
extern volatile near struct {
  unsigned ABDEN:1;
  unsigned WUE:1;
  unsigned :1;
  unsigned BRG16:1;
  unsigned TXCKP:1;
  unsigned RXDTP:1;
  unsigned RCIDL:1;
  unsigned ABDOVF:1;
} BAUDCON2bits;
extern volatile near unsigned char       SPBRGH2;
extern volatile near unsigned char       BAUDCON;
extern volatile near struct {
  unsigned ABDEN:1;
  unsigned WUE:1;
  unsigned :1;
  unsigned BRG16:1;
  unsigned TXCKP:1;
  unsigned RXDTP:1;
  unsigned RCIDL:1;
  unsigned ABDOVF:1;
} BAUDCONbits;
extern volatile near unsigned char       BAUDCON1;
extern volatile near struct {
  unsigned ABDEN:1;
  unsigned WUE:1;
  unsigned :1;
  unsigned BRG16:1;
  unsigned TXCKP:1;
  unsigned RXDTP:1;
  unsigned RCIDL:1;
  unsigned ABDOVF:1;
} BAUDCON1bits;
extern volatile near unsigned char       BAUDCTL;
extern volatile near struct {
  unsigned ABDEN:1;
  unsigned WUE:1;
  unsigned :1;
  unsigned BRG16:1;
  unsigned TXCKP:1;
  unsigned RXDTP:1;
  unsigned RCIDL:1;
  unsigned ABDOVF:1;
} BAUDCTLbits;
extern volatile near unsigned char       SPBRGH;
extern volatile near unsigned char       SPBRGH1;
extern volatile near unsigned char       PORTA;
extern volatile near union {
  struct {
    unsigned RA0:1;
    unsigned RA1:1;
    unsigned RA2:1;
    unsigned RA3:1;
    unsigned :1;
    unsigned RA5:1;
    unsigned RA6:1;
    unsigned RA7:1;
  };
  struct {
    unsigned AN0:1;
    unsigned AN1:1;
    unsigned AN2:1;
    unsigned AN3:1;
    unsigned :1;
    unsigned AN4:1;
    unsigned OSC2:1;
    unsigned OSC1:1;
  };
  struct {
    unsigned C1INA:1;
    unsigned C2INA:1;
    unsigned VREF_MINUS:1;
    unsigned VREF_PLUS:1;
    unsigned :1;
    unsigned NOT_SS1:1;
    unsigned CLKO:1;
    unsigned CLKI:1;
  };
  struct {
    unsigned PMA6:1;
    unsigned PMA7:1;
    unsigned CVREF:1;
    unsigned C1INB:1;
    unsigned :1;
    unsigned HLVDIN:1;
  };
  struct {
    unsigned RP0:1;
    unsigned RP1:1;
    unsigned C2INB:1;
    unsigned :2;
    unsigned RCV:1;
  };
  struct {
    unsigned ULPWU:1;
    unsigned VBG:1;
    unsigned C1IND:1;
    unsigned :2;
    unsigned RP2:1;
  };
  struct {
    unsigned :2;
    unsigned C3INB:1;
    unsigned :2;
    unsigned C1INC:1;
  };
} PORTAbits;
extern volatile near unsigned char       PORTB;
extern volatile near union {
  struct {
    unsigned RB0:1;
    unsigned RB1:1;
    unsigned RB2:1;
    unsigned RB3:1;
    unsigned RB4:1;
    unsigned RB5:1;
    unsigned RB6:1;
    unsigned RB7:1;
  };
  struct {
    unsigned AN12:1;
    unsigned AN10:1;
    unsigned AN8:1;
    unsigned AN9:1;
    unsigned PMA1:1;
    unsigned PMA0:1;
    unsigned KBI2:1;
    unsigned KBI3:1;
  };
  struct {
    unsigned INT0:1;
    unsigned PMPBE:1;
    unsigned CTED1:1;
    unsigned CTED2:1;
    unsigned KBI0:1;
    unsigned KBI1:1;
    unsigned PGC:1;
    unsigned PGD:1;
  };
  struct {
    unsigned RP3:1;
    unsigned RTCC:1;
    unsigned PMA3:1;
    unsigned PMA2:1;
    unsigned SCK1:1;
    unsigned SDI1:1;
    unsigned RP9:1;
    unsigned RP10:1;
  };
  struct {
    unsigned :1;
    unsigned RP4:1;
    unsigned VMO:1;
    unsigned VPO:1;
    unsigned SCL1:1;
    unsigned SDA1:1;
  };
  struct {
    unsigned :2;
    unsigned REFO:1;
    unsigned RP6:1;
    unsigned RP7:1;
    unsigned RP8:1;
  };
  struct {
    unsigned :1;
    unsigned C3INC:1;
    unsigned RP5:1;
    unsigned C3INA:1;
    unsigned CCP4:1;
    unsigned CCP5:1;
    unsigned CCP6:1;
    unsigned CCP7:1;
  };
  struct {
    unsigned C3IND:1;
    unsigned PMBE:1;
    unsigned C2INC:1;
  };
} PORTBbits;
extern volatile near unsigned char       PORTC;
extern volatile near union {
  struct {
    unsigned RC0:1;
    unsigned RC1:1;
    unsigned RC2:1;
    unsigned :1;
    unsigned RC4:1;
    unsigned RC5:1;
    unsigned RC6:1;
    unsigned RC7:1;
  };
  struct {
    unsigned T1OSO:1;
    unsigned T1OSI:1;
    unsigned AN11:1;
    unsigned :1;
    unsigned D_MINUS:1;
    unsigned D_PLUS:1;
    unsigned PMA5:1;
    unsigned PMA4:1;
  };
  struct {
    unsigned T1CKI:1;
    unsigned NOT_UOE:1;
    unsigned CTPLS:1;
    unsigned :1;
    unsigned VM:1;
    unsigned VP:1;
    unsigned TX1:1;
    unsigned RX1:1;
  };
  struct {
    unsigned RP11:1;
    unsigned RP12:1;
    unsigned RP13:1;
    unsigned :3;
    unsigned CK1:1;
    unsigned DT1:1;
  };
  struct {
    unsigned :6;
    unsigned RP17:1;
    unsigned SDO1:1;
  };
  struct {
    unsigned :2;
    unsigned C2IND:1;
    unsigned :4;
    unsigned RP18:1;
  };
  struct {
    unsigned :1;
    unsigned CCP8:1;
    unsigned :4;
    unsigned CCP9:1;
    unsigned CCP10:1;
  };
} PORTCbits;
extern volatile near unsigned char       PORTD;
extern volatile near union {
  struct {
    unsigned RD0:1;
    unsigned RD1:1;
    unsigned RD2:1;
    unsigned RD3:1;
    unsigned RD4:1;
    unsigned RD5:1;
    unsigned RD6:1;
    unsigned RD7:1;
  };
  struct {
    unsigned PMD0:1;
    unsigned PMD1:1;
    unsigned PMD2:1;
    unsigned PMD3:1;
    unsigned PMD4:1;
    unsigned PMD5:1;
    unsigned PMD6:1;
    unsigned PMD7:1;
  };
  struct {
    unsigned SCL2:1;
    unsigned SDA2:1;
    unsigned RP19:1;
    unsigned RP20:1;
    unsigned RP21:1;
    unsigned RP22:1;
    unsigned RP23:1;
    unsigned RP24:1;
  };
} PORTDbits;
extern volatile near unsigned char       PORTE;
extern volatile near union {
  struct {
    unsigned RE0:1;
    unsigned RE1:1;
    unsigned RE2:1;
  };
  struct {
    unsigned AN5:1;
    unsigned AN6:1;
    unsigned AN7:1;
  };
  struct {
    unsigned PMPRD:1;
    unsigned PMPWR:1;
    unsigned PMPCS:1;
  };
  struct {
    unsigned PMRD:1;
    unsigned PMWR:1;
    unsigned PMCS:1;
  };
} PORTEbits;
extern volatile near unsigned char       HLVDCON;
extern volatile near union {
  struct {
    unsigned HLVDL:4;
    unsigned HLVDEN:1;
    unsigned IRVST:1;
    unsigned BGVST:1;
    unsigned VDIRMAG:1;
  };
  struct {
    unsigned HLVDL0:1;
    unsigned HLVDL1:1;
    unsigned HLVDL2:1;
    unsigned HLVDL3:1;
  };
} HLVDCONbits;
extern volatile near unsigned char       DMACON2;
extern volatile near union {
  struct {
    unsigned INTLVL:4;
    unsigned DLYCYC:4;
  };
  struct {
    unsigned INTLVL0:1;
    unsigned INTLVL1:1;
    unsigned INTLVL2:1;
    unsigned INTLVL3:1;
    unsigned DLYCYC0:1;
    unsigned DLYCYC1:1;
    unsigned DLYCYC2:1;
    unsigned DLYCYC3:1;
  };
} DMACON2bits;
extern volatile near unsigned char       OSCCON2;
extern volatile near struct {
  unsigned :2;
  unsigned PRISD:1;
  unsigned SOSCGO:1;
  unsigned SOSCDRV:1;
  unsigned :1;
  unsigned SOSCRUN:1;
} OSCCON2bits;
extern volatile near unsigned char       DMACON1;
extern volatile near struct {
  unsigned DMAEN:1;
  unsigned DLYINTEN:1;
  unsigned DUPLEX0:1;
  unsigned DUPLEX1:1;
  unsigned RXINC:1;
  unsigned TXINC:1;
  unsigned SSCON0:1;
  unsigned SSCON1:1;
} DMACON1bits;
extern volatile near unsigned char       LATA;
extern volatile near struct {
  unsigned LATA0:1;
  unsigned LATA1:1;
  unsigned LATA2:1;
  unsigned LATA3:1;
  unsigned :1;
  unsigned LATA5:1;
  unsigned LATA6:1;
  unsigned LATA7:1;
} LATAbits;
extern volatile near unsigned char       LATB;
extern volatile near struct {
  unsigned LATB0:1;
  unsigned LATB1:1;
  unsigned LATB2:1;
  unsigned LATB3:1;
  unsigned LATB4:1;
  unsigned LATB5:1;
  unsigned LATB6:1;
  unsigned LATB7:1;
} LATBbits;
extern volatile near unsigned char       LATC;
extern volatile near struct {
  unsigned LATC0:1;
  unsigned LATC1:1;
  unsigned LATC2:1;
  unsigned :3;
  unsigned LATC6:1;
  unsigned LATC7:1;
} LATCbits;
extern volatile near unsigned char       LATD;
extern volatile near struct {
  unsigned LATD0:1;
  unsigned LATD1:1;
  unsigned LATD2:1;
  unsigned LATD3:1;
  unsigned LATD4:1;
  unsigned LATD5:1;
  unsigned LATD6:1;
  unsigned LATD7:1;
} LATDbits;
extern volatile near unsigned char       LATE;
extern volatile near struct {
  unsigned LATE0:1;
  unsigned LATE1:1;
  unsigned LATE2:1;
} LATEbits;
extern volatile near unsigned char       PIE4;
extern volatile near struct {
  unsigned CCP3IE:1;
  unsigned CCP4IE:1;
  unsigned CCP5IE:1;
  unsigned CCP6IE:1;
  unsigned CCP7IE:1;
  unsigned CCP8IE:1;
  unsigned CCP9IE:1;
  unsigned CCP10IE:1;
} PIE4bits;
extern volatile near unsigned char       PIR4;
extern volatile near struct {
  unsigned CCP3IF:1;
  unsigned CCP4IF:1;
  unsigned CCP5IF:1;
  unsigned CCP6IF:1;
  unsigned CCP7IF:1;
  unsigned CCP8IF:1;
  unsigned CCP9IF:1;
  unsigned CCP10IF:1;
} PIR4bits;
extern volatile near unsigned char       IPR4;
extern volatile near struct {
  unsigned CCP3IP:1;
  unsigned CCP4IP:1;
  unsigned CCP5IP:1;
  unsigned CCP6IP:1;
  unsigned CCP7IP:1;
  unsigned CCP8IP:1;
  unsigned CCP9IP:1;
  unsigned CCP10IP:1;
} IPR4bits;
extern volatile near unsigned char       PIE5;
extern volatile near struct {
  unsigned TMR1GIE:1;
  unsigned TMR5GIE:1;
  unsigned TMR5IE:1;
  unsigned TMR6IE:1;
  unsigned TMR8IE:1;
  unsigned CM3IE:1;
} PIE5bits;
extern volatile near unsigned char       TRISA;
extern volatile near struct {
  unsigned TRISA0:1;
  unsigned TRISA1:1;
  unsigned TRISA2:1;
  unsigned TRISA3:1;
  unsigned :1;
  unsigned TRISA5:1;
  unsigned TRISA6:1;
  unsigned TRISA7:1;
} TRISAbits;
extern volatile near unsigned char       TRISB;
extern volatile near struct {
  unsigned TRISB0:1;
  unsigned TRISB1:1;
  unsigned TRISB2:1;
  unsigned TRISB3:1;
  unsigned TRISB4:1;
  unsigned TRISB5:1;
  unsigned TRISB6:1;
  unsigned TRISB7:1;
} TRISBbits;
extern volatile near unsigned char       TRISC;
extern volatile near struct {
  unsigned TRISC0:1;
  unsigned TRISC1:1;
  unsigned TRISC2:1;
  unsigned :3;
  unsigned TRISC6:1;
  unsigned TRISC7:1;
} TRISCbits;
extern volatile near unsigned char       TRISD;
extern volatile near struct {
  unsigned TRISD0:1;
  unsigned TRISD1:1;
  unsigned TRISD2:1;
  unsigned TRISD3:1;
  unsigned TRISD4:1;
  unsigned TRISD5:1;
  unsigned TRISD6:1;
  unsigned TRISD7:1;
} TRISDbits;
extern volatile near unsigned char       TRISE;
extern volatile near struct {
  unsigned TRISE0:1;
  unsigned TRISE1:1;
  unsigned TRISE2:1;
  unsigned :3;
  unsigned REPU:1;
  unsigned RDPU:1;
} TRISEbits;
extern volatile near unsigned char       T3GCON;
extern volatile near union {
  struct {
    unsigned T3GSS0:1;
    unsigned T3GSS1:1;
    unsigned T3GVAL:1;
    unsigned T3GGO_T3DONE:1;
    unsigned T3GSPM:1;
    unsigned T3GTM:1;
    unsigned T3GPOL:1;
    unsigned TMR3GE:1;
  };
  struct {
    unsigned :3;
    unsigned T3GGO:1;
  };
  struct {
    unsigned :3;
    unsigned NOT_T3DONE:1;
  };
} T3GCONbits;
extern volatile near unsigned char       PIR5;
extern volatile near struct {
  unsigned TMR1GIF:1;
  unsigned TMR5GIF:1;
  unsigned TMR5IF:1;
  unsigned TMR6IF:1;
  unsigned TMR8IF:1;
  unsigned CM3IF:1;
} PIR5bits;
extern volatile near unsigned char       IPR5;
extern volatile near struct {
  unsigned TMR1GIP:1;
  unsigned TMR5GIP:1;
  unsigned TMR5IP:1;
  unsigned TMR6IP:1;
  unsigned TMR8IP:1;
  unsigned CM3IP:1;
} IPR5bits;
extern volatile near unsigned char       T1GCON;
extern volatile near union {
  struct {
    unsigned T1GSS0:1;
    unsigned T1GSS1:1;
    unsigned T1GVAL:1;
    unsigned T1GGO_NOT_T1DONE:1;
    unsigned T1GSPM:1;
    unsigned T1GTM:1;
    unsigned T1GPOL:1;
    unsigned TMR1GE:1;
  };
  struct {
    unsigned :3;
    unsigned T1GGO:1;
  };
  struct {
    unsigned :3;
    unsigned NOT_T1DONE:1;
  };
  struct {
    unsigned :3;
    unsigned T1DONE:1;
  };
} T1GCONbits;
extern volatile near unsigned char       OSCTUNE;
extern volatile near union {
  struct {
    unsigned TUN:6;
    unsigned PLLEN:1;
    unsigned INTSRC:1;
  };
  struct {
    unsigned TUN0:1;
    unsigned TUN1:1;
    unsigned TUN2:1;
    unsigned TUN3:1;
    unsigned TUN4:1;
    unsigned TUN5:1;
  };
} OSCTUNEbits;
extern volatile near unsigned char       RCSTA2;
extern volatile near union {
  struct {
    unsigned RX9D:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned ADDEN:1;
    unsigned CREN:1;
    unsigned SREN:1;
    unsigned RX9:1;
    unsigned SPEN:1;
  };
  struct {
    unsigned RX9D2:1;
    unsigned OERR2:1;
    unsigned FERR2:1;
    unsigned ADDEN2:1;
    unsigned CREN2:1;
    unsigned SREN2:1;
    unsigned RX92:1;
    unsigned SPEN2:1;
  };
} RCSTA2bits;
extern volatile near unsigned char       PIE1;
extern volatile near union {
  struct {
    unsigned TMR1IE:1;
    unsigned TMR2IE:1;
    unsigned CCP1IE:1;
    unsigned SSP1IE:1;
    unsigned TX1IE:1;
    unsigned RC1IE:1;
    unsigned ADIE:1;
    unsigned PMPIE:1;
  };
  struct {
    unsigned :3;
    unsigned SSPIE:1;
    unsigned TXIE:1;
    unsigned RCIE:1;
  };
} PIE1bits;
extern volatile near unsigned char       PIR1;
extern volatile near union {
  struct {
    unsigned TMR1IF:1;
    unsigned TMR2IF:1;
    unsigned CCP1IF:1;
    unsigned SSP1IF:1;
    unsigned TX1IF:1;
    unsigned RC1IF:1;
    unsigned ADIF:1;
    unsigned PMPIF:1;
  };
  struct {
    unsigned :3;
    unsigned SSPIF:1;
    unsigned TXIF:1;
    unsigned RCIF:1;
  };
} PIR1bits;
extern volatile near unsigned char       IPR1;
extern volatile near union {
  struct {
    unsigned TMR1IP:1;
    unsigned TMR2IP:1;
    unsigned CCP1IP:1;
    unsigned SSP1IP:1;
    unsigned TX1IP:1;
    unsigned RC1IP:1;
    unsigned ADIP:1;
    unsigned PMPIP:1;
  };
  struct {
    unsigned :3;
    unsigned SSPIP:1;
    unsigned TXIP:1;
    unsigned RCIP:1;
  };
} IPR1bits;
extern volatile near unsigned char       PIE2;
extern volatile near union {
  struct {
    unsigned CCP2IE:1;
    unsigned TMR3IE:1;
    unsigned LVDIE:1;
    unsigned BCL1IE:1;
    unsigned USBIE:1;
    unsigned CM1IE:1;
    unsigned CM2IE:1;
    unsigned OSCFIE:1;
  };
  struct {
    unsigned :2;
    unsigned HLVDIE:1;
    unsigned BCLIE:1;
  };
} PIE2bits;
extern volatile near unsigned char       PIR2;
extern volatile near union {
  struct {
    unsigned CCP2IF:1;
    unsigned TMR3IF:1;
    unsigned LVDIF:1;
    unsigned BCL1IF:1;
    unsigned USBIF:1;
    unsigned CM1IF:1;
    unsigned CM2IF:1;
    unsigned OSCFIF:1;
  };
  struct {
    unsigned :2;
    unsigned HLVDIF:1;
    unsigned BCLIF:1;
  };
} PIR2bits;
extern volatile near unsigned char       IPR2;
extern volatile near union {
  struct {
    unsigned CCP2IP:1;
    unsigned TMR3IP:1;
    unsigned LVDIP:1;
    unsigned BCL1IP:1;
    unsigned USBIP:1;
    unsigned CM1IP:1;
    unsigned CM2IP:1;
    unsigned OSCFIP:1;
  };
  struct {
    unsigned :2;
    unsigned HLVDIP:1;
    unsigned BCLIP:1;
  };
} IPR2bits;
extern volatile near unsigned char       PIE3;
extern volatile near struct {
  unsigned RTCCIE:1;
  unsigned TMR3GIE:1;
  unsigned CTMUIE:1;
  unsigned TMR4IE:1;
  unsigned TX2IE:1;
  unsigned RC2IE:1;
  unsigned BCL2IE:1;
  unsigned SSP2IE:1;
} PIE3bits;
extern volatile near unsigned char       PIR3;
extern volatile near struct {
  unsigned RTCCIF:1;
  unsigned TMR3GIF:1;
  unsigned CTMUIF:1;
  unsigned TMR4IF:1;
  unsigned TX2IF:1;
  unsigned RC2IF:1;
  unsigned BCL2IF:1;
  unsigned SSP2IF:1;
} PIR3bits;
extern volatile near unsigned char       IPR3;
extern volatile near struct {
  unsigned RTCCIP:1;
  unsigned TMR3GIP:1;
  unsigned CTMUIP:1;
  unsigned TMR4IP:1;
  unsigned TX2IP:1;
  unsigned RC2IP:1;
  unsigned BCL2IP:1;
  unsigned SSP2IP:1;
} IPR3bits;
extern volatile near unsigned char       EECON1;
extern volatile near struct {
  unsigned :1;
  unsigned WR:1;
  unsigned WREN:1;
  unsigned WRERR:1;
  unsigned FREE:1;
  unsigned WPROG:1;
} EECON1bits;
extern volatile near unsigned char       EECON2;
extern volatile near unsigned char       TXSTA2;
extern volatile near union {
  struct {
    unsigned TX9D:1;
    unsigned TRMT:1;
    unsigned BRGH:1;
    unsigned SENDB:1;
    unsigned SYNC:1;
    unsigned TXEN:1;
    unsigned TX9:1;
    unsigned CSRC:1;
  };
  struct {
    unsigned TX9D2:1;
    unsigned TRMT2:1;
    unsigned BRGH2:1;
    unsigned SENDB2:1;
    unsigned SYNC2:1;
    unsigned TXEN2:1;
    unsigned TX92:1;
    unsigned CSRC2:1;
  };
} TXSTA2bits;
extern volatile near unsigned char       TXREG2;
extern volatile near unsigned char       RCREG2;
extern volatile near unsigned char       SPBRG2;
extern volatile near unsigned char       RCSTA;
extern volatile near union {
  struct {
    unsigned RX9D:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned ADDEN:1;
    unsigned CREN:1;
    unsigned SREN:1;
    unsigned RX9:1;
    unsigned SPEN:1;
  };
  struct {
    unsigned RCD8:1;
    unsigned :2;
    unsigned ADEN:1;
    unsigned :2;
    unsigned RC9:1;
  };
  struct {
    unsigned :6;
    unsigned NOT_RC8:1;
  };
  struct {
    unsigned :6;
    unsigned RC8_9:1;
  };
  struct {
    unsigned RX9D1:1;
    unsigned OERR1:1;
    unsigned FERR1:1;
    unsigned ADDEN1:1;
    unsigned CREN1:1;
    unsigned SREN1:1;
    unsigned RX91:1;
    unsigned SPEN1:1;
  };
} RCSTAbits;
extern volatile near unsigned char       RCSTA1;
extern volatile near union {
  struct {
    unsigned RX9D:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned ADDEN:1;
    unsigned CREN:1;
    unsigned SREN:1;
    unsigned RX9:1;
    unsigned SPEN:1;
  };
  struct {
    unsigned RCD8:1;
    unsigned :2;
    unsigned ADEN:1;
    unsigned :2;
    unsigned RC9:1;
  };
  struct {
    unsigned :6;
    unsigned NOT_RC8:1;
  };
  struct {
    unsigned :6;
    unsigned RC8_9:1;
  };
  struct {
    unsigned RX9D1:1;
    unsigned OERR1:1;
    unsigned FERR1:1;
    unsigned ADDEN1:1;
    unsigned CREN1:1;
    unsigned SREN1:1;
    unsigned RX91:1;
    unsigned SPEN1:1;
  };
} RCSTA1bits;
extern volatile near unsigned char       TXSTA;
extern volatile near union {
  struct {
    unsigned TX9D:1;
    unsigned TRMT:1;
    unsigned BRGH:1;
    unsigned SENDB:1;
    unsigned SYNC:1;
    unsigned TXEN:1;
    unsigned TX9:1;
    unsigned CSRC:1;
  };
  struct {
    unsigned TXD8:1;
    unsigned :5;
    unsigned TX8_9:1;
  };
  struct {
    unsigned :6;
    unsigned NOT_TX8:1;
  };
  struct {
    unsigned TX9D1:1;
    unsigned TRMT1:1;
    unsigned BRGH1:1;
    unsigned SENDB1:1;
    unsigned SYNC1:1;
    unsigned TXEN1:1;
    unsigned TX91:1;
    unsigned CSRC1:1;
  };
} TXSTAbits;
extern volatile near unsigned char       TXSTA1;
extern volatile near union {
  struct {
    unsigned TX9D:1;
    unsigned TRMT:1;
    unsigned BRGH:1;
    unsigned SENDB:1;
    unsigned SYNC:1;
    unsigned TXEN:1;
    unsigned TX9:1;
    unsigned CSRC:1;
  };
  struct {
    unsigned TXD8:1;
    unsigned :5;
    unsigned TX8_9:1;
  };
  struct {
    unsigned :6;
    unsigned NOT_TX8:1;
  };
  struct {
    unsigned TX9D1:1;
    unsigned TRMT1:1;
    unsigned BRGH1:1;
    unsigned SENDB1:1;
    unsigned SYNC1:1;
    unsigned TXEN1:1;
    unsigned TX91:1;
    unsigned CSRC1:1;
  };
} TXSTA1bits;
extern volatile near unsigned char       TXREG;
extern volatile near unsigned char       TXREG1;
extern volatile near unsigned char       RCREG;
extern volatile near unsigned char       RCREG1;
extern volatile near unsigned char       SPBRG;
extern volatile near unsigned char       SPBRG1;
extern volatile near unsigned char       CTMUICON;
extern volatile near union {
  struct {
    unsigned IRNG:2;
    unsigned ITRIM:6;
  };
  struct {
    unsigned IRNG0:1;
    unsigned IRNG1:1;
    unsigned ITRIM0:1;
    unsigned ITRIM1:1;
    unsigned ITRIM2:1;
    unsigned ITRIM3:1;
    unsigned ITRIM4:1;
    unsigned ITRIM5:1;
  };
} CTMUICONbits;
extern volatile near unsigned char       CTMUCONL;
extern volatile near struct {
  unsigned EDG1STAT:1;
  unsigned EDG2STAT:1;
  unsigned EDG1SEL0:1;
  unsigned EDG1SEL1:1;
  unsigned EDG1POL:1;
  unsigned EDG2SEL0:1;
  unsigned EDG2SEL1:1;
  unsigned EDG2POL:1;
} CTMUCONLbits;
extern volatile near unsigned char       CTMUCONH;
extern volatile near struct {
  unsigned CTTRIG:1;
  unsigned IDISSEN:1;
  unsigned EDGSEQEN:1;
  unsigned EDGEN:1;
  unsigned TGEN:1;
  unsigned CTMUSIDL:1;
  unsigned :1;
  unsigned CTMUEN:1;
} CTMUCONHbits;
extern volatile near unsigned char       CCP2CON;
extern volatile near union {
  struct {
    unsigned CCP2M:4;
    unsigned DC2B:2;
    unsigned P2M:2;
  };
  struct {
    unsigned CCP2M0:1;
    unsigned CCP2M1:1;
    unsigned CCP2M2:1;
    unsigned CCP2M3:1;
    unsigned DC2B0:1;
    unsigned DC2B1:1;
    unsigned P2M0:1;
    unsigned P2M1:1;
  };
  struct {
    unsigned :4;
    unsigned CCP2Y:1;
    unsigned CCP2X:1;
  };
} CCP2CONbits;
extern volatile near unsigned char       ECCP2CON;
extern volatile near union {
  struct {
    unsigned CCP2M:4;
    unsigned DC2B:2;
    unsigned P2M:2;
  };
  struct {
    unsigned CCP2M0:1;
    unsigned CCP2M1:1;
    unsigned CCP2M2:1;
    unsigned CCP2M3:1;
    unsigned DC2B0:1;
    unsigned DC2B1:1;
    unsigned P2M0:1;
    unsigned P2M1:1;
  };
  struct {
    unsigned :4;
    unsigned CCP2Y:1;
    unsigned CCP2X:1;
  };
} ECCP2CONbits;
extern volatile near unsigned            CCPR2;
extern volatile near unsigned char       CCPR2L;
extern volatile near unsigned char       CCPR2H;
extern volatile near unsigned char       ECCP2DEL;
extern volatile near union {
  struct {
    unsigned P2DC:7;
    unsigned P2RSEN:1;
  };
  struct {
    unsigned P2DC0:1;
    unsigned P2DC1:1;
    unsigned P2DC2:1;
    unsigned P2DC3:1;
    unsigned P2DC4:1;
    unsigned P2DC5:1;
    unsigned P2DC6:1;
  };
} ECCP2DELbits;
extern volatile near unsigned char       PWM2CON;
extern volatile near union {
  struct {
    unsigned P2DC:7;
    unsigned P2RSEN:1;
  };
  struct {
    unsigned P2DC0:1;
    unsigned P2DC1:1;
    unsigned P2DC2:1;
    unsigned P2DC3:1;
    unsigned P2DC4:1;
    unsigned P2DC5:1;
    unsigned P2DC6:1;
  };
} PWM2CONbits;
extern volatile near unsigned char       ECCP2AS;
extern volatile near union {
  struct {
    unsigned PSS2BD:2;
    unsigned PSS2AC:2;
    unsigned ECCP2AS:3;
    unsigned ECCP2ASE:1;
  };
  struct {
    unsigned PSS2BD0:1;
    unsigned PSS2BD1:1;
    unsigned PSS2AC0:1;
    unsigned PSS2AC1:1;
    unsigned ECCP2AS0:1;
    unsigned ECCP2AS1:1;
    unsigned ECCP2AS2:1;
  };
} ECCP2ASbits;
extern volatile near unsigned char       PSTR2CON;
extern volatile near union {
  struct {
    unsigned STRA:1;
    unsigned STRB:1;
    unsigned STRC:1;
    unsigned STRD:1;
    unsigned STRSYNC:1;
    unsigned :1;
    unsigned CMPL0:1;
    unsigned CMPL1:1;
  };
  struct {
    unsigned P2DC0:1;
    unsigned P2DC1:1;
    unsigned P2DC2:1;
    unsigned P2DC3:1;
    unsigned P2DC4:1;
    unsigned P2DC5:1;
    unsigned P2DC6:1;
  };
} PSTR2CONbits;
extern volatile near unsigned char       CCP1CON;
extern volatile near union {
  struct {
    unsigned CCP1M:4;
    unsigned DC1B:2;
    unsigned P1M:2;
  };
  struct {
    unsigned CCP1M0:1;
    unsigned CCP1M1:1;
    unsigned CCP1M2:1;
    unsigned CCP1M3:1;
    unsigned DC1B0:1;
    unsigned DC1B1:1;
    unsigned P1M0:1;
    unsigned P1M1:1;
  };
  struct {
    unsigned :4;
    unsigned CCP1Y:1;
    unsigned CCP1X:1;
  };
} CCP1CONbits;
extern volatile near unsigned char       ECCP1CON;
extern volatile near union {
  struct {
    unsigned CCP1M:4;
    unsigned DC1B:2;
    unsigned P1M:2;
  };
  struct {
    unsigned CCP1M0:1;
    unsigned CCP1M1:1;
    unsigned CCP1M2:1;
    unsigned CCP1M3:1;
    unsigned DC1B0:1;
    unsigned DC1B1:1;
    unsigned P1M0:1;
    unsigned P1M1:1;
  };
  struct {
    unsigned :4;
    unsigned CCP1Y:1;
    unsigned CCP1X:1;
  };
} ECCP1CONbits;
extern volatile near unsigned            CCPR1;
extern volatile near unsigned char       CCPR1L;
extern volatile near unsigned char       CCPR1H;
extern volatile near unsigned char       ECCP1DEL;
extern volatile near union {
  struct {
    unsigned P1DC:7;
    unsigned P1RSEN:1;
  };
  struct {
    unsigned P1DC0:1;
    unsigned P1DC1:1;
    unsigned P1DC2:1;
    unsigned P1DC3:1;
    unsigned P1DC4:1;
    unsigned P1DC5:1;
    unsigned P1DC6:1;
  };
} ECCP1DELbits;
extern volatile near unsigned char       PWM1CON;
extern volatile near union {
  struct {
    unsigned P1DC:7;
    unsigned P1RSEN:1;
  };
  struct {
    unsigned P1DC0:1;
    unsigned P1DC1:1;
    unsigned P1DC2:1;
    unsigned P1DC3:1;
    unsigned P1DC4:1;
    unsigned P1DC5:1;
    unsigned P1DC6:1;
  };
} PWM1CONbits;
extern volatile near unsigned char       ECCP1AS;
extern volatile near union {
  struct {
    unsigned PSS1BD:2;
    unsigned PSS1AC:2;
    unsigned ECCP1AS:3;
    unsigned ECCP1ASE:1;
  };
  struct {
    unsigned PSS1BD0:1;
    unsigned PSS1BD1:1;
    unsigned PSS1AC0:1;
    unsigned PSS1AC1:1;
    unsigned ECCP1AS0:1;
    unsigned ECCP1AS1:1;
    unsigned ECCP1AS2:1;
  };
} ECCP1ASbits;
extern volatile near unsigned char       PSTR1CON;
extern volatile near struct {
  unsigned STRA:1;
  unsigned STRB:1;
  unsigned STRC:1;
  unsigned STRD:1;
  unsigned STRSYNC:1;
  unsigned :1;
  unsigned CMPL0:1;
  unsigned CMPL1:1;
} PSTR1CONbits;
extern volatile near unsigned char       WDTCON;
extern volatile near union {
  struct {
    unsigned SWDTEN:1;
    unsigned ULPSINK:1;
    unsigned ULPEN:1;
    unsigned DS:1;
    unsigned VBGOE:1;
    unsigned ULPLVL:1;
    unsigned LVDSTAT:1;
    unsigned REGSLP:1;
  };
  struct {
    unsigned SWDTE:1;
  };
} WDTCONbits;
extern volatile near unsigned char       ADCON1;
extern volatile near union {
  struct {
    unsigned ADCS:3;
    unsigned ACQT:3;
    unsigned ADCAL:1;
    unsigned ADFM:1;
  };
  struct {
    unsigned ADCS0:1;
    unsigned ADCS1:1;
    unsigned ADCS2:1;
    unsigned ACQT0:1;
    unsigned ACQT1:1;
    unsigned ACQT2:1;
  };
} ADCON1bits;
extern volatile near unsigned char       ADCON0;
extern volatile near union {
  struct {
    unsigned ADON:1;
    unsigned GO_NOT_DONE:1;
    unsigned CHS:4;
    unsigned VCFG:2;
  };
  struct {
    unsigned :1;
    unsigned GO_DONE:1;
    unsigned CHS0:1;
    unsigned CHS1:1;
    unsigned CHS2:1;
    unsigned CHS3:1;
    unsigned VCFG0:1;
    unsigned VCFG1:1;
  };
  struct {
    unsigned :1;
    unsigned DONE:1;
  };
  struct {
    unsigned :1;
    unsigned GO:1;
  };
  struct {
    unsigned :1;
    unsigned NOT_DONE:1;
  };
} ADCON0bits;
extern volatile near unsigned            ADRES;
extern volatile near unsigned char       ADRESL;
extern volatile near unsigned char       ADRESH;
extern volatile near unsigned char       SSP1CON2;
extern volatile near union {
  struct {
    unsigned SEN:1;
    unsigned RSEN:1;
    unsigned PEN:1;
    unsigned RCEN:1;
    unsigned ACKEN:1;
    unsigned ACKDT:1;
    unsigned ACKSTAT:1;
    unsigned GCEN:1;
  };
  struct {
    unsigned :1;
    unsigned ADMSK1:1;
    unsigned ADMSK2:1;
    unsigned ADMSK3:1;
    unsigned ADMSK4:1;
    unsigned ADMSK5:1;
  };
} SSP1CON2bits;
extern volatile near unsigned char       SSPCON2;
extern volatile near union {
  struct {
    unsigned SEN:1;
    unsigned RSEN:1;
    unsigned PEN:1;
    unsigned RCEN:1;
    unsigned ACKEN:1;
    unsigned ACKDT:1;
    unsigned ACKSTAT:1;
    unsigned GCEN:1;
  };
  struct {
    unsigned :1;
    unsigned ADMSK1:1;
    unsigned ADMSK2:1;
    unsigned ADMSK3:1;
    unsigned ADMSK4:1;
    unsigned ADMSK5:1;
  };
} SSPCON2bits;
extern volatile near unsigned char       SSP1CON1;
extern volatile near union {
  struct {
    unsigned SSPM:4;
    unsigned CKP:1;
    unsigned SSPEN:1;
    unsigned SSPOV:1;
    unsigned WCOL:1;
  };
  struct {
    unsigned SSPM0:1;
    unsigned SSPM1:1;
    unsigned SSPM2:1;
    unsigned SSPM3:1;
  };
} SSP1CON1bits;
extern volatile near unsigned char       SSPCON1;
extern volatile near union {
  struct {
    unsigned SSPM:4;
    unsigned CKP:1;
    unsigned SSPEN:1;
    unsigned SSPOV:1;
    unsigned WCOL:1;
  };
  struct {
    unsigned SSPM0:1;
    unsigned SSPM1:1;
    unsigned SSPM2:1;
    unsigned SSPM3:1;
  };
} SSPCON1bits;
extern volatile near unsigned char       SSP1STAT;
extern volatile near union {
  struct {
    unsigned BF:1;
    unsigned UA:1;
    unsigned R_NOT_W:1;
    unsigned S:1;
    unsigned P:1;
    unsigned D_NOT_A:1;
    unsigned CKE:1;
    unsigned SMP:1;
  };
  struct {
    unsigned :2;
    unsigned R:1;
    unsigned :2;
    unsigned D:1;
  };
  struct {
    unsigned :2;
    unsigned R_W:1;
    unsigned :2;
    unsigned D_A:1;
  };
  struct {
    unsigned :2;
    unsigned NOT_W:1;
    unsigned :2;
    unsigned NOT_A:1;
  };
  struct {
    unsigned :2;
    unsigned NOT_WRITE:1;
    unsigned :2;
    unsigned NOT_ADDRESS:1;
  };
  struct {
    unsigned :2;
    unsigned READ_WRITE:1;
    unsigned :2;
    unsigned DATA_ADDRESS:1;
  };
  struct {
    unsigned :2;
    unsigned I2C_READ:1;
    unsigned I2C_START:1;
    unsigned I2C_STOP:1;
    unsigned I2C_DAT:1;
  };
} SSP1STATbits;
extern volatile near unsigned char       SSPSTAT;
extern volatile near union {
  struct {
    unsigned BF:1;
    unsigned UA:1;
    unsigned R_NOT_W:1;
    unsigned S:1;
    unsigned P:1;
    unsigned D_NOT_A:1;
    unsigned CKE:1;
    unsigned SMP:1;
  };
  struct {
    unsigned :2;
    unsigned R:1;
    unsigned :2;
    unsigned D:1;
  };
  struct {
    unsigned :2;
    unsigned R_W:1;
    unsigned :2;
    unsigned D_A:1;
  };
  struct {
    unsigned :2;
    unsigned NOT_W:1;
    unsigned :2;
    unsigned NOT_A:1;
  };
  struct {
    unsigned :2;
    unsigned NOT_WRITE:1;
    unsigned :2;
    unsigned NOT_ADDRESS:1;
  };
  struct {
    unsigned :2;
    unsigned READ_WRITE:1;
    unsigned :2;
    unsigned DATA_ADDRESS:1;
  };
  struct {
    unsigned :2;
    unsigned I2C_READ:1;
    unsigned I2C_START:1;
    unsigned I2C_STOP:1;
    unsigned I2C_DAT:1;
  };
} SSPSTATbits;
extern volatile near unsigned char       SSP1ADD;
extern volatile near unsigned char       SSP1MSK;
extern volatile near struct {
  unsigned MSK0:1;
  unsigned MSK1:1;
  unsigned MSK2:1;
  unsigned MSK3:1;
  unsigned MSK4:1;
  unsigned MSK5:1;
  unsigned MSK6:1;
  unsigned MSK7:1;
} SSP1MSKbits;
extern volatile near unsigned char       SSPADD;
extern volatile near unsigned char       SSP1BUF;
extern volatile near unsigned char       SSPBUF;
extern volatile near unsigned char       T2CON;
extern volatile near union {
  struct {
    unsigned T2CKPS:2;
    unsigned TMR2ON:1;
    unsigned T2OUTPS:4;
  };
  struct {
    unsigned T2CKPS0:1;
    unsigned T2CKPS1:1;
    unsigned :1;
    unsigned T2OUTPS0:1;
    unsigned T2OUTPS1:1;
    unsigned T2OUTPS2:1;
    unsigned T2OUTPS3:1;
  };
} T2CONbits;
extern volatile near unsigned char       PR2;
extern volatile near unsigned char       TMR2;
extern volatile near unsigned char       T1CON;
extern volatile near union {
  struct {
    unsigned TMR1ON:1;
    unsigned RD16:1;
    unsigned NOT_T1SYNC:1;
    unsigned T1OSCEN:1;
    unsigned T1CKPS:2;
    unsigned TMR1CS:2;
  };
  struct {
    unsigned :4;
    unsigned T1CKPS0:1;
    unsigned T1CKPS1:1;
    unsigned TMR1CS0:1;
    unsigned TMR1CS1:1;
  };
} T1CONbits;
extern volatile near unsigned char       TMR1L;
extern volatile near unsigned char       TMR1H;
extern volatile near unsigned char       RCON;
extern volatile near union {
  struct {
    unsigned NOT_BOR:1;
    unsigned NOT_POR:1;
    unsigned NOT_PD:1;
    unsigned NOT_TO:1;
    unsigned NOT_RI:1;
    unsigned NOT_CM:1;
    unsigned :1;
    unsigned IPEN:1;
  };
  struct {
    unsigned BOR:1;
    unsigned POR:1;
    unsigned PD:1;
    unsigned TO:1;
    unsigned RI:1;
    unsigned CM:1;
  };
} RCONbits;
extern volatile near unsigned char       CM2CON;
extern volatile near union {
  struct {
    unsigned CCH:2;
    unsigned CREF:1;
    unsigned EVPOL:2;
    unsigned CPOL:1;
    unsigned COE:1;
    unsigned CON:1;
  };
  struct {
    unsigned CCH0:1;
    unsigned CCH1:1;
    unsigned :1;
    unsigned EVPOL0:1;
    unsigned EVPOL1:1;
  };
} CM2CONbits;
extern volatile near unsigned char       CM2CON1;
extern volatile near union {
  struct {
    unsigned CCH:2;
    unsigned CREF:1;
    unsigned EVPOL:2;
    unsigned CPOL:1;
    unsigned COE:1;
    unsigned CON:1;
  };
  struct {
    unsigned CCH0:1;
    unsigned CCH1:1;
    unsigned :1;
    unsigned EVPOL0:1;
    unsigned EVPOL1:1;
  };
} CM2CON1bits;
extern volatile near unsigned char       CM1CON;
extern volatile near union {
  struct {
    unsigned CCH:2;
    unsigned CREF:1;
    unsigned EVPOL:2;
    unsigned CPOL:1;
    unsigned COE:1;
    unsigned CON:1;
  };
  struct {
    unsigned CCH0:1;
    unsigned CCH1:1;
    unsigned :1;
    unsigned EVPOL0:1;
    unsigned EVPOL1:1;
  };
} CM1CONbits;
extern volatile near unsigned char       CM1CON1;
extern volatile near union {
  struct {
    unsigned CCH:2;
    unsigned CREF:1;
    unsigned EVPOL:2;
    unsigned CPOL:1;
    unsigned COE:1;
    unsigned CON:1;
  };
  struct {
    unsigned CCH0:1;
    unsigned CCH1:1;
    unsigned :1;
    unsigned EVPOL0:1;
    unsigned EVPOL1:1;
  };
} CM1CON1bits;
extern volatile near unsigned char       OSCCON;
extern volatile near union {
  struct {
    unsigned SCS:2;
    unsigned FLTS:1;
    unsigned OSTS:1;
    unsigned IRCF:3;
    unsigned IDLEN:1;
  };
  struct {
    unsigned SCS0:1;
    unsigned SCS1:1;
    unsigned :2;
    unsigned IRCF0:1;
    unsigned IRCF1:1;
    unsigned IRCF2:1;
  };
} OSCCONbits;
extern volatile near unsigned char       T0CON;
extern volatile near union {
  struct {
    unsigned T0PS:3;
    unsigned PSA:1;
    unsigned T0SE:1;
    unsigned T0CS:1;
    unsigned T08BIT:1;
    unsigned TMR0ON:1;
  };
  struct {
    unsigned T0PS0:1;
    unsigned T0PS1:1;
    unsigned T0PS2:1;
  };
} T0CONbits;
extern volatile near unsigned char       TMR0L;
extern volatile near unsigned char       TMR0H;
extern          near unsigned char       STATUS;
extern          near struct {
  unsigned C:1;
  unsigned DC:1;
  unsigned Z:1;
  unsigned OV:1;
  unsigned N:1;
} STATUSbits;
extern          near unsigned            FSR2;
extern          near unsigned char       FSR2L;
extern          near unsigned char       FSR2H;
extern volatile near unsigned char       PLUSW2;
extern volatile near unsigned char       PREINC2;
extern volatile near unsigned char       POSTDEC2;
extern volatile near unsigned char       POSTINC2;
extern          near unsigned char       INDF2;
extern          near unsigned char       BSR;
extern          near unsigned            FSR1;
extern          near unsigned char       FSR1L;
extern          near unsigned char       FSR1H;
extern volatile near unsigned char       PLUSW1;
extern volatile near unsigned char       PREINC1;
extern volatile near unsigned char       POSTDEC1;
extern volatile near unsigned char       POSTINC1;
extern          near unsigned char       INDF1;
extern          near unsigned char       WREG;
extern          near unsigned            FSR0;
extern          near unsigned char       FSR0L;
extern          near unsigned char       FSR0H;
extern volatile near unsigned char       PLUSW0;
extern volatile near unsigned char       PREINC0;
extern volatile near unsigned char       POSTDEC0;
extern volatile near unsigned char       POSTINC0;
extern          near unsigned char       INDF0;
extern volatile near unsigned char       INTCON3;
extern volatile near union {
  struct {
    unsigned INT1IF:1;
    unsigned INT2IF:1;
    unsigned INT3IF:1;
    unsigned INT1IE:1;
    unsigned INT2IE:1;
    unsigned INT3IE:1;
    unsigned INT1IP:1;
    unsigned INT2IP:1;
  };
  struct {
    unsigned INT1F:1;
    unsigned INT2F:1;
    unsigned INT3F:1;
    unsigned INT1E:1;
    unsigned INT2E:1;
    unsigned INT3E:1;
    unsigned INT1P:1;
    unsigned INT2P:1;
  };
} INTCON3bits;
extern volatile near unsigned char       INTCON2;
extern volatile near union {
  struct {
    unsigned RBIP:1;
    unsigned INT3IP:1;
    unsigned TMR0IP:1;
    unsigned INTEDG3:1;
    unsigned INTEDG2:1;
    unsigned INTEDG1:1;
    unsigned INTEDG0:1;
    unsigned NOT_RBPU:1;
  };
  struct {
    unsigned :1;
    unsigned INT3P:1;
    unsigned T0IP:1;
    unsigned :4;
    unsigned RBPU:1;
  };
} INTCON2bits;
extern volatile near unsigned char       INTCON;
extern volatile near union {
  struct {
    unsigned RBIF:1;
    unsigned INT0IF:1;
    unsigned TMR0IF:1;
    unsigned RBIE:1;
    unsigned INT0IE:1;
    unsigned TMR0IE:1;
    unsigned PEIE_GIEL:1;
    unsigned GIE_GIEH:1;
  };
  struct {
    unsigned :1;
    unsigned INT0F:1;
    unsigned T0IF:1;
    unsigned :1;
    unsigned INT0E:1;
    unsigned T0IE:1;
    unsigned PEIE:1;
    unsigned GIE:1;
  };
  struct {
    unsigned :6;
    unsigned GIEL:1;
    unsigned GIEH:1;
  };
} INTCONbits;
extern          near unsigned            PROD;
extern          near unsigned char       PRODL;
extern          near unsigned char       PRODH;
extern volatile near unsigned char       TABLAT;
extern volatile near unsigned short long TBLPTR;
extern volatile near unsigned char       TBLPTRL;
extern volatile near unsigned char       TBLPTRH;
extern volatile near unsigned char       TBLPTRU;
extern volatile near unsigned short long PC;
extern volatile near unsigned char       PCL;
extern volatile near unsigned char       PCLATH;
extern volatile near unsigned char       PCLATU;
extern volatile near unsigned char       STKPTR;
extern volatile near union {
  struct {
    unsigned STKPTR:5;
    unsigned :1;
    unsigned STKUNF:1;
    unsigned STKFUL:1;
  };
  struct {
    unsigned SP0:1;
    unsigned SP1:1;
    unsigned SP2:1;
    unsigned SP3:1;
    unsigned SP4:1;
    unsigned :2;
    unsigned STKOVF:1;
  };
} STKPTRbits;
extern          near unsigned short long TOS;
extern          near unsigned char       TOSL;
extern          near unsigned char       TOSH;
extern          near unsigned char       TOSU;

#pragma varlocate 14 ADCTRIG
#pragma varlocate 14 ADCTRIGbits
#pragma varlocate 14 PD0
#pragma varlocate 14 PD0bits
#pragma varlocate 14 PMDIS0
#pragma varlocate 14 PMDIS0bits
#pragma varlocate 14 PD1
#pragma varlocate 14 PD1bits
#pragma varlocate 14 PMDIS1
#pragma varlocate 14 PMDIS1bits
#pragma varlocate 14 PD2
#pragma varlocate 14 PD2bits
#pragma varlocate 14 PMDIS2
#pragma varlocate 14 PMDIS2bits
#pragma varlocate 14 PD3
#pragma varlocate 14 PD3bits
#pragma varlocate 14 PMDIS3
#pragma varlocate 14 PMDIS3bits
#pragma varlocate 14 PPSCON
#pragma varlocate 14 PPSCONbits
#pragma varlocate 14 RPOR0
#pragma varlocate 14 RPOR1
#pragma varlocate 14 RPOR2
#pragma varlocate 14 RPOR3
#pragma varlocate 14 RPOR4
#pragma varlocate 14 RPOR5
#pragma varlocate 14 RPOR6
#pragma varlocate 14 RPOR7
#pragma varlocate 14 RPOR8
#pragma varlocate 14 RPOR9
#pragma varlocate 14 RPOR10
#pragma varlocate 14 RPOR11
#pragma varlocate 14 RPOR12
#pragma varlocate 14 RPOR13
#pragma varlocate 14 RPOR17
#pragma varlocate 14 RPOR18
#pragma varlocate 14 RPOR19
#pragma varlocate 14 RPOR20
#pragma varlocate 14 RPOR21
#pragma varlocate 14 RPOR22
#pragma varlocate 14 RPOR23
#pragma varlocate 14 RPOR24
#pragma varlocate 14 RPINR1
#pragma varlocate 14 RPINR2
#pragma varlocate 14 RPINR3
#pragma varlocate 14 RPINR4
#pragma varlocate 14 RPINR6
#pragma varlocate 14 RPINR15
#pragma varlocate 14 RPINR7
#pragma varlocate 14 RPINR8
#pragma varlocate 14 RPINR9
#pragma varlocate 14 RPINR12
#pragma varlocate 14 RPINR13
#pragma varlocate 14 RPINR14
#pragma varlocate 14 RPINR16
#pragma varlocate 14 RPINR17
#pragma varlocate 14 RPINR21
#pragma varlocate 14 RPINR22
#pragma varlocate 14 RPINR23
#pragma varlocate 14 RPINR24
#pragma varlocate 15 CCP10CON
#pragma varlocate 15 CCP10CONbits
#pragma varlocate 15 CCPR10L
#pragma varlocate 15 CCPR10H
#pragma varlocate 15 CCP9CON
#pragma varlocate 15 CCP9CONbits
#pragma varlocate 15 CCPR9L
#pragma varlocate 15 CCPR9H
#pragma varlocate 15 CCP8CON
#pragma varlocate 15 CCP8CONbits
#pragma varlocate 15 CCPR8L
#pragma varlocate 15 CCPR8H
#pragma varlocate 15 CCP7CON
#pragma varlocate 15 CCP7CONbits
#pragma varlocate 15 CCPR7L
#pragma varlocate 15 CCPR7H
#pragma varlocate 15 CCP6CON
#pragma varlocate 15 CCP6CONbits
#pragma varlocate 15 CCPR6L
#pragma varlocate 15 CCPR6H
#pragma varlocate 15 CCP5CON
#pragma varlocate 15 CCP5CONbits
#pragma varlocate 15 CCPR5L
#pragma varlocate 15 CCPR5H
#pragma varlocate 15 CCP4CON
#pragma varlocate 15 CCP4CONbits
#pragma varlocate 15 CCPR4L
#pragma varlocate 15 CCPR4H
#pragma varlocate 15 CCP3CON
#pragma varlocate 15 CCP3CONbits
#pragma varlocate 15 CCPR3L
#pragma varlocate 15 CCPR3H
#pragma varlocate 15 ECCP3DEL
#pragma varlocate 15 ECCP3DELbits
#pragma varlocate 15 ECCP3AS
#pragma varlocate 15 ECCP3ASbits
#pragma varlocate 15 PSTR3CON
#pragma varlocate 15 PSTR3CONbits
#pragma varlocate 15 T8CON
#pragma varlocate 15 T8CONbits
#pragma varlocate 15 PR8
#pragma varlocate 15 TMR8
#pragma varlocate 15 T6CON
#pragma varlocate 15 T6CONbits
#pragma varlocate 15 PR6
#pragma varlocate 15 TMR6
#pragma varlocate 15 T5GCON
#pragma varlocate 15 T5GCONbits
#pragma varlocate 15 T5CON
#pragma varlocate 15 T5CONbits
#pragma varlocate 15 TMR5L
#pragma varlocate 15 TMR5H
#pragma varlocate 15 CM3CON
#pragma varlocate 15 CM3CONbits
#pragma varlocate 15 UEP0
#pragma varlocate 15 UEP0bits
#pragma varlocate 15 UEP1
#pragma varlocate 15 UEP1bits
#pragma varlocate 15 UEP2
#pragma varlocate 15 UEP2bits
#pragma varlocate 15 UEP3
#pragma varlocate 15 UEP3bits
#pragma varlocate 15 UEP4
#pragma varlocate 15 UEP4bits
#pragma varlocate 15 UEP5
#pragma varlocate 15 UEP5bits
#pragma varlocate 15 UEP6
#pragma varlocate 15 UEP6bits
#pragma varlocate 15 UEP7
#pragma varlocate 15 UEP7bits
#pragma varlocate 15 UEP8
#pragma varlocate 15 UEP8bits
#pragma varlocate 15 UEP9
#pragma varlocate 15 UEP9bits
#pragma varlocate 15 UEP10
#pragma varlocate 15 UEP10bits
#pragma varlocate 15 UEP11
#pragma varlocate 15 UEP11bits
#pragma varlocate 15 UEP12
#pragma varlocate 15 UEP12bits
#pragma varlocate 15 UEP13
#pragma varlocate 15 UEP13bits
#pragma varlocate 15 UEP14
#pragma varlocate 15 UEP14bits
#pragma varlocate 15 UEP15
#pragma varlocate 15 UEP15bits
#pragma varlocate 15 UIE
#pragma varlocate 15 UIEbits
#pragma varlocate 15 UEIE
#pragma varlocate 15 UEIEbits
#pragma varlocate 15 UADDR
#pragma varlocate 15 UADDRbits
#pragma varlocate 15 UCFG
#pragma varlocate 15 UCFGbits
#pragma varlocate 15 RTCVALL
#pragma varlocate 15 RTCVALH
#pragma varlocate 15 PADCFG1
#pragma varlocate 15 PADCFG1bits
#pragma varlocate 15 REFOCON
#pragma varlocate 15 REFOCONbits
#pragma varlocate 15 RTCCAL
#pragma varlocate 15 RTCCALbits
#pragma varlocate 15 RTCCFG
#pragma varlocate 15 RTCCFGbits
#pragma varlocate 15 ODCON3
#pragma varlocate 15 ODCON3bits
#pragma varlocate 15 ODCON2
#pragma varlocate 15 ODCON2bits
#pragma varlocate 15 ODCON1
#pragma varlocate 15 ODCON1bits
#pragma varlocate 15 ALRMVALL
#pragma varlocate 15 ALRMVALH
#pragma varlocate 15 ALRMRPT
#pragma varlocate 15 ALRMRPTbits
#pragma varlocate 15 ALRMCFG
#pragma varlocate 15 ALRMCFGbits
#pragma varlocate 15 ANCON0
#pragma varlocate 15 ANCON0bits
#pragma varlocate 15 ANCON1
#pragma varlocate 15 ANCON1bits
#pragma varlocate 15 DSWAKEL
#pragma varlocate 15 DSWAKELbits
#pragma varlocate 15 DSWAKEH
#pragma varlocate 15 DSWAKEHbits
#pragma varlocate 15 DSCONL
#pragma varlocate 15 DSCONLbits
#pragma varlocate 15 DSCONH
#pragma varlocate 15 DSCONHbits
#pragma varlocate 15 DSGPR0
#pragma varlocate 15 DSGPR1
#pragma varlocate 15 CCPTMRS2
#pragma varlocate 15 CCPTMRS2bits
#pragma varlocate 15 CCPTMRS1
#pragma varlocate 15 CCPTMRS1bits
#pragma varlocate 15 CCPTMRS0
#pragma varlocate 15 CCPTMRS0bits
#pragma varlocate 15 CVRCON
#pragma varlocate 15 CVRCONbits
#pragma varlocate 15 PMSTATL
#pragma varlocate 15 PMSTATLbits
#pragma varlocate 15 PMSTATH
#pragma varlocate 15 PMSTATHbits
#pragma varlocate 15 PMEL
#pragma varlocate 15 PMELbits
#pragma varlocate 15 PMEH
#pragma varlocate 15 PMEHbits
#pragma varlocate 15 PMDIN2L
#pragma varlocate 15 PMDIN2H
#pragma varlocate 15 PMDOUT2L
#pragma varlocate 15 PMDOUT2H
#pragma varlocate 15 PMMODEL
#pragma varlocate 15 PMMODELbits
#pragma varlocate 15 PMMODEH
#pragma varlocate 15 PMMODEHbits
#pragma varlocate 15 PMCONL
#pragma varlocate 15 PMCONLbits
#pragma varlocate 15 PMCONH
#pragma varlocate 15 PMCONHbits


#line 3330 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18f47j53.h"
 
#line 3332 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18f47j53.h"
#line 3333 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18f47j53.h"


#line 3336 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18f47j53.h"
 
#line 3338 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18f47j53.h"
#line 3339 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18f47j53.h"
#line 3340 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18f47j53.h"
#line 3341 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18f47j53.h"

#line 3343 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18f47j53.h"
#line 3344 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18f47j53.h"
#line 3345 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18f47j53.h"
#line 3346 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18f47j53.h"
#line 3347 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18f47j53.h"


#line 3351 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18f47j53.h"
 
#line 3353 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18f47j53.h"


#line 3356 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18f47j53.h"
#line 263 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"

#line 265 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 267 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 269 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 271 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 273 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 275 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 277 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 279 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 281 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 283 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 285 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 287 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 289 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 291 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 293 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 295 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 297 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 299 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 301 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 303 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 305 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 307 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 309 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 311 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 313 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 315 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 317 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 319 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 321 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 323 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 325 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 327 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 329 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 331 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 333 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 335 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 337 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 339 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 341 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 343 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 345 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 347 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 349 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 351 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 353 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 355 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 357 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 359 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 361 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 363 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 365 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 367 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 369 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 371 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 373 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 375 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 377 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 379 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 381 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 383 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 385 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 387 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 389 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 391 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 393 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 395 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 397 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 399 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 401 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 403 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 405 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 407 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 409 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 411 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 413 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 415 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 417 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 419 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 421 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 423 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 425 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 427 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 429 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 431 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 433 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 435 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 437 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 439 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 441 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 443 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 445 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 447 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 449 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 451 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 453 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 455 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 457 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 459 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 461 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 463 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 465 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 467 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 469 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 471 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 473 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 475 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 477 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 479 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 481 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 483 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 485 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 487 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 489 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 491 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 493 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 495 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 497 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 499 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 501 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 503 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 505 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 507 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 509 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 511 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 513 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 515 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 517 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 519 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 521 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 523 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 525 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 527 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 529 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 531 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 533 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 535 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 537 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 539 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 541 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 543 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 545 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 547 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 549 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 551 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 553 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 555 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 557 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 559 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 561 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 563 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 565 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 567 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 569 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 571 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 573 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 575 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 577 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 579 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 581 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 583 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 585 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 587 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 589 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 591 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 593 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 595 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 597 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"

#line 599 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/p18cxxx.h"
#line 30 "Source/FreeRTOSConfig.h"


#line 33 "Source/FreeRTOSConfig.h"
#line 34 "Source/FreeRTOSConfig.h"


#line 45 "Source/FreeRTOSConfig.h"
 

#line 48 "Source/FreeRTOSConfig.h"
#line 49 "Source/FreeRTOSConfig.h"
#line 50 "Source/FreeRTOSConfig.h"
#line 51 "Source/FreeRTOSConfig.h"
#line 52 "Source/FreeRTOSConfig.h"
#line 53 "Source/FreeRTOSConfig.h"
#line 54 "Source/FreeRTOSConfig.h"
#line 55 "Source/FreeRTOSConfig.h"
#line 56 "Source/FreeRTOSConfig.h"
#line 57 "Source/FreeRTOSConfig.h"
#line 58 "Source/FreeRTOSConfig.h"
#line 59 "Source/FreeRTOSConfig.h"
#line 60 "Source/FreeRTOSConfig.h"




#line 64 "Source/FreeRTOSConfig.h"
 

#line 67 "Source/FreeRTOSConfig.h"
#line 68 "Source/FreeRTOSConfig.h"
#line 69 "Source/FreeRTOSConfig.h"
#line 70 "Source/FreeRTOSConfig.h"
#line 71 "Source/FreeRTOSConfig.h"
#line 72 "Source/FreeRTOSConfig.h"
#line 73 "Source/FreeRTOSConfig.h"








#line 111 "Source/FreeRTOSConfig.h"


#line 114 "Source/FreeRTOSConfig.h"
#line 115 "Source/FreeRTOSConfig.h"
    

#line 118 "Source/FreeRTOSConfig.h"
#line 119 "Source/FreeRTOSConfig.h"
#line 120 "Source/FreeRTOSConfig.h"
#line 121 "Source/FreeRTOSConfig.h"
#line 122 "Source/FreeRTOSConfig.h"
#line 123 "Source/FreeRTOSConfig.h"
#line 124 "Source/FreeRTOSConfig.h"
#line 125 "Source/FreeRTOSConfig.h"
#line 126 "Source/FreeRTOSConfig.h"
#line 127 "Source/FreeRTOSConfig.h"
#line 128 "Source/FreeRTOSConfig.h"
#line 129 "Source/FreeRTOSConfig.h"
#line 130 "Source/FreeRTOSConfig.h"


#line 133 "Source/FreeRTOSConfig.h"
#line 134 "Source/FreeRTOSConfig.h"
#line 135 "Source/FreeRTOSConfig.h"
#line 136 "Source/FreeRTOSConfig.h"
#line 137 "Source/FreeRTOSConfig.h"
#line 138 "Source/FreeRTOSConfig.h"


#line 141 "Source/FreeRTOSConfig.h"





#line 147 "Source/FreeRTOSConfig.h"





#line 153 "Source/FreeRTOSConfig.h"
#line 154 "Source/FreeRTOSConfig.h"
#line 155 "Source/FreeRTOSConfig.h"
#line 156 "Source/FreeRTOSConfig.h"
#line 157 "Source/FreeRTOSConfig.h"


#line 160 "Source/FreeRTOSConfig.h"
#line 161 "Source/FreeRTOSConfig.h"
#line 162 "Source/FreeRTOSConfig.h"
#line 163 "Source/FreeRTOSConfig.h"


#line 166 "Source/FreeRTOSConfig.h"
#line 167 "Source/FreeRTOSConfig.h"



#line 171 "Source/FreeRTOSConfig.h"
#line 172 "Source/FreeRTOSConfig.h"
#line 173 "Source/FreeRTOSConfig.h"

#line 175 "Source/FreeRTOSConfig.h"

#line 200 "Source/FreeRTOSConfig.h"

















#line 218 "Source/FreeRTOSConfig.h"
#line 59 "Source/FreeRTOS/include/FreeRTOS.h"


 
#line 1 "Source/FreeRTOS/include/projdefs.h"

#line 27 "Source/FreeRTOS/include/projdefs.h"
 


#line 31 "Source/FreeRTOS/include/projdefs.h"


#line 35 "Source/FreeRTOS/include/projdefs.h"
 
typedef void (* TaskFunction_t)( void * );


#line 40 "Source/FreeRTOS/include/projdefs.h"
 

#line 43 "Source/FreeRTOS/include/projdefs.h"
#line 44 "Source/FreeRTOS/include/projdefs.h"

#line 46 "Source/FreeRTOS/include/projdefs.h"
#line 47 "Source/FreeRTOS/include/projdefs.h"

#line 49 "Source/FreeRTOS/include/projdefs.h"
#line 50 "Source/FreeRTOS/include/projdefs.h"
#line 51 "Source/FreeRTOS/include/projdefs.h"
#line 52 "Source/FreeRTOS/include/projdefs.h"

 
#line 55 "Source/FreeRTOS/include/projdefs.h"
#line 56 "Source/FreeRTOS/include/projdefs.h"
#line 57 "Source/FreeRTOS/include/projdefs.h"

 

#line 61 "Source/FreeRTOS/include/projdefs.h"
#line 62 "Source/FreeRTOS/include/projdefs.h"

#line 64 "Source/FreeRTOS/include/projdefs.h"
#line 65 "Source/FreeRTOS/include/projdefs.h"
#line 66 "Source/FreeRTOS/include/projdefs.h"
#line 68 "Source/FreeRTOS/include/projdefs.h"


#line 70 "Source/FreeRTOS/include/projdefs.h"
 
#line 72 "Source/FreeRTOS/include/projdefs.h"
#line 73 "Source/FreeRTOS/include/projdefs.h"
#line 74 "Source/FreeRTOS/include/projdefs.h"
#line 75 "Source/FreeRTOS/include/projdefs.h"
#line 76 "Source/FreeRTOS/include/projdefs.h"
#line 77 "Source/FreeRTOS/include/projdefs.h"
#line 78 "Source/FreeRTOS/include/projdefs.h"
#line 79 "Source/FreeRTOS/include/projdefs.h"
#line 80 "Source/FreeRTOS/include/projdefs.h"
#line 81 "Source/FreeRTOS/include/projdefs.h"
#line 82 "Source/FreeRTOS/include/projdefs.h"
#line 83 "Source/FreeRTOS/include/projdefs.h"
#line 84 "Source/FreeRTOS/include/projdefs.h"
#line 85 "Source/FreeRTOS/include/projdefs.h"
#line 86 "Source/FreeRTOS/include/projdefs.h"
#line 87 "Source/FreeRTOS/include/projdefs.h"
#line 88 "Source/FreeRTOS/include/projdefs.h"
#line 89 "Source/FreeRTOS/include/projdefs.h"
#line 90 "Source/FreeRTOS/include/projdefs.h"
#line 91 "Source/FreeRTOS/include/projdefs.h"
#line 92 "Source/FreeRTOS/include/projdefs.h"
#line 93 "Source/FreeRTOS/include/projdefs.h"
#line 94 "Source/FreeRTOS/include/projdefs.h"
#line 95 "Source/FreeRTOS/include/projdefs.h"
#line 96 "Source/FreeRTOS/include/projdefs.h"
#line 97 "Source/FreeRTOS/include/projdefs.h"
#line 98 "Source/FreeRTOS/include/projdefs.h"
#line 99 "Source/FreeRTOS/include/projdefs.h"
#line 100 "Source/FreeRTOS/include/projdefs.h"
#line 101 "Source/FreeRTOS/include/projdefs.h"
#line 102 "Source/FreeRTOS/include/projdefs.h"
#line 103 "Source/FreeRTOS/include/projdefs.h"
#line 104 "Source/FreeRTOS/include/projdefs.h"
#line 105 "Source/FreeRTOS/include/projdefs.h"
#line 106 "Source/FreeRTOS/include/projdefs.h"
#line 107 "Source/FreeRTOS/include/projdefs.h"
#line 108 "Source/FreeRTOS/include/projdefs.h"
#line 109 "Source/FreeRTOS/include/projdefs.h"
#line 110 "Source/FreeRTOS/include/projdefs.h"
#line 111 "Source/FreeRTOS/include/projdefs.h"


#line 113 "Source/FreeRTOS/include/projdefs.h"
 
#line 115 "Source/FreeRTOS/include/projdefs.h"
#line 116 "Source/FreeRTOS/include/projdefs.h"

 
#line 119 "Source/FreeRTOS/include/projdefs.h"
#line 120 "Source/FreeRTOS/include/projdefs.h"


#line 123 "Source/FreeRTOS/include/projdefs.h"
#line 62 "Source/FreeRTOS/include/FreeRTOS.h"


 
#line 1 "Source/FreeRTOS/include/portable.h"

#line 27 "Source/FreeRTOS/include/portable.h"
 


#line 31 "Source/FreeRTOS/include/portable.h"
 


#line 35 "Source/FreeRTOS/include/portable.h"


#line 45 "Source/FreeRTOS/include/portable.h"
 
#line 1 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 27 "Source/FreeRTOS/include/deprecated_definitions.h"
 


#line 31 "Source/FreeRTOS/include/deprecated_definitions.h"



#line 40 "Source/FreeRTOS/include/deprecated_definitions.h"
 

#line 46 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 51 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 55 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 59 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 63 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 67 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 71 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 75 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 79 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 83 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 87 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 91 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 95 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 99 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 103 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 107 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 111 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 115 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 119 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 123 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 127 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 131 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 135 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 139 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 143 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 147 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 151 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 155 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 159 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 163 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 167 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 171 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 175 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 179 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 183 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 187 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 191 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 195 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 199 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 203 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 207 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 211 "Source/FreeRTOS/include/deprecated_definitions.h"


#line 215 "Source/FreeRTOS/include/deprecated_definitions.h"
#line 220 "Source/FreeRTOS/include/deprecated_definitions.h"


#line 224 "Source/FreeRTOS/include/deprecated_definitions.h"
#line 229 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 234 "Source/FreeRTOS/include/deprecated_definitions.h"
#line 235 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 239 "Source/FreeRTOS/include/deprecated_definitions.h"
#line 241 "Source/FreeRTOS/include/deprecated_definitions.h"
#line 242 "Source/FreeRTOS/include/deprecated_definitions.h"
#line 243 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 247 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 251 "Source/FreeRTOS/include/deprecated_definitions.h"


#line 256 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 260 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 264 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 268 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 272 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 276 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 280 "Source/FreeRTOS/include/deprecated_definitions.h"

#line 282 "Source/FreeRTOS/include/deprecated_definitions.h"
#line 46 "Source/FreeRTOS/include/portable.h"



#line 51 "Source/FreeRTOS/include/portable.h"
 

#line 1 "Source/FreeRTOS/portable/PIC18F/portmacro.h"

#line 27 "Source/FreeRTOS/portable/PIC18F/portmacro.h"
 


#line 31 "Source/FreeRTOS/portable/PIC18F/portmacro.h"


#line 40 "Source/FreeRTOS/portable/PIC18F/portmacro.h"
 

 
#line 44 "Source/FreeRTOS/portable/PIC18F/portmacro.h"
#line 45 "Source/FreeRTOS/portable/PIC18F/portmacro.h"
#line 46 "Source/FreeRTOS/portable/PIC18F/portmacro.h"
#line 47 "Source/FreeRTOS/portable/PIC18F/portmacro.h"
#line 48 "Source/FreeRTOS/portable/PIC18F/portmacro.h"
#line 49 "Source/FreeRTOS/portable/PIC18F/portmacro.h"
#line 50 "Source/FreeRTOS/portable/PIC18F/portmacro.h"

typedef uint8_t  StackType_t;
typedef signed char BaseType_t;
typedef unsigned char UBaseType_t;

#line 56 "Source/FreeRTOS/portable/PIC18F/portmacro.h"
	typedef uint16_t TickType_t;
#line 58 "Source/FreeRTOS/portable/PIC18F/portmacro.h"
#line 59 "Source/FreeRTOS/portable/PIC18F/portmacro.h"
#line 62 "Source/FreeRTOS/portable/PIC18F/portmacro.h"
 

 
#line 66 "Source/FreeRTOS/portable/PIC18F/portmacro.h"
#line 67 "Source/FreeRTOS/portable/PIC18F/portmacro.h"
#line 68 "Source/FreeRTOS/portable/PIC18F/portmacro.h"
#line 69 "Source/FreeRTOS/portable/PIC18F/portmacro.h"
 

 
#line 73 "Source/FreeRTOS/portable/PIC18F/portmacro.h"
#line 74 "Source/FreeRTOS/portable/PIC18F/portmacro.h"

 

#line 77 "Source/FreeRTOS/portable/PIC18F/portmacro.h"
#line 78 "Source/FreeRTOS/portable/PIC18F/portmacro.h"


#line 81 "Source/FreeRTOS/portable/PIC18F/portmacro.h"
 

#line 88 "Source/FreeRTOS/portable/PIC18F/portmacro.h"
#line 89 "Source/FreeRTOS/portable/PIC18F/portmacro.h"
 

 
extern void vPortYield( void );
#line 94 "Source/FreeRTOS/portable/PIC18F/portmacro.h"
 

 
#line 98 "Source/FreeRTOS/portable/PIC18F/portmacro.h"
#line 99 "Source/FreeRTOS/portable/PIC18F/portmacro.h"
 

 
#line 105 "Source/FreeRTOS/portable/PIC18F/portmacro.h"


#line 108 "Source/FreeRTOS/portable/PIC18F/portmacro.h"

#line 110 "Source/FreeRTOS/portable/PIC18F/portmacro.h"

#line 53 "Source/FreeRTOS/include/portable.h"

#line 55 "Source/FreeRTOS/include/portable.h"

#line 57 "Source/FreeRTOS/include/portable.h"
#line 59 "Source/FreeRTOS/include/portable.h"
#line 61 "Source/FreeRTOS/include/portable.h"
#line 63 "Source/FreeRTOS/include/portable.h"
#line 65 "Source/FreeRTOS/include/portable.h"
#line 67 "Source/FreeRTOS/include/portable.h"
#line 68 "Source/FreeRTOS/include/portable.h"
#line 69 "Source/FreeRTOS/include/portable.h"
#line 71 "Source/FreeRTOS/include/portable.h"


#line 74 "Source/FreeRTOS/include/portable.h"
#line 75 "Source/FreeRTOS/include/portable.h"


#line 78 "Source/FreeRTOS/include/portable.h"
#line 79 "Source/FreeRTOS/include/portable.h"


#line 82 "Source/FreeRTOS/include/portable.h"
#line 83 "Source/FreeRTOS/include/portable.h"


#line 86 "Source/FreeRTOS/include/portable.h"
#line 87 "Source/FreeRTOS/include/portable.h"


     
#line 91 "Source/FreeRTOS/include/portable.h"
#line 92 "Source/FreeRTOS/include/portable.h"

 
#line 97 "Source/FreeRTOS/include/portable.h"
 

#line 1 "Source/FreeRTOS/include/mpu_wrappers.h"

#line 27 "Source/FreeRTOS/include/mpu_wrappers.h"
 


#line 31 "Source/FreeRTOS/include/mpu_wrappers.h"


#line 33 "Source/FreeRTOS/include/mpu_wrappers.h"
 
#line 35 "Source/FreeRTOS/include/mpu_wrappers.h"

#line 38 "Source/FreeRTOS/include/mpu_wrappers.h"

#line 47 "Source/FreeRTOS/include/mpu_wrappers.h"
#line 117 "Source/FreeRTOS/include/mpu_wrappers.h"
#line 121 "Source/FreeRTOS/include/mpu_wrappers.h"

#line 144 "Source/FreeRTOS/include/mpu_wrappers.h"

#line 161 "Source/FreeRTOS/include/mpu_wrappers.h"
#line 167 "Source/FreeRTOS/include/mpu_wrappers.h"
#line 174 "Source/FreeRTOS/include/mpu_wrappers.h"
#line 176 "Source/FreeRTOS/include/mpu_wrappers.h"

#line 178 "Source/FreeRTOS/include/mpu_wrappers.h"
#line 179 "Source/FreeRTOS/include/mpu_wrappers.h"
#line 180 "Source/FreeRTOS/include/mpu_wrappers.h"

#line 182 "Source/FreeRTOS/include/mpu_wrappers.h"


#line 185 "Source/FreeRTOS/include/mpu_wrappers.h"
#line 99 "Source/FreeRTOS/include/portable.h"



#line 106 "Source/FreeRTOS/include/portable.h"
 
#line 108 "Source/FreeRTOS/include/portable.h"
#line 109 "Source/FreeRTOS/include/portable.h"
#line 115 "Source/FreeRTOS/include/portable.h"
#line 120 "Source/FreeRTOS/include/portable.h"
#line 121 "Source/FreeRTOS/include/portable.h"
#line 122 "Source/FreeRTOS/include/portable.h"
#line 127 "Source/FreeRTOS/include/portable.h"
        StackType_t * pxPortInitialiseStack( StackType_t * pxTopOfStack,
                                             TaskFunction_t pxCode,
                                             void * pvParameters ) ;
#line 131 "Source/FreeRTOS/include/portable.h"
#line 132 "Source/FreeRTOS/include/portable.h"


#line 134 "Source/FreeRTOS/include/portable.h"
 
typedef struct HeapRegion
{
    uint8_t * pucStartAddress;
    size_t xSizeInBytes;
} HeapRegion_t;

 
typedef struct xHeapStats
{
    size_t xAvailableHeapSpaceInBytes;       
    size_t xSizeOfLargestFreeBlockInBytes;   
    size_t xSizeOfSmallestFreeBlockInBytes;  
    size_t xNumberOfFreeBlocks;              
    size_t xMinimumEverFreeBytesRemaining;   
    size_t xNumberOfSuccessfulAllocations;   
    size_t xNumberOfSuccessfulFrees;         
} HeapStats_t;


#line 163 "Source/FreeRTOS/include/portable.h"
 
void vPortDefineHeapRegions( const HeapRegion_t * const pxHeapRegions ) ;


#line 169 "Source/FreeRTOS/include/portable.h"
 
void vPortGetHeapStats( HeapStats_t * pxHeapStats );


#line 174 "Source/FreeRTOS/include/portable.h"
 
void * pvPortMalloc( size_t xSize ) ;
void * pvPortCalloc( size_t xNum,
                     size_t xSize ) ;
void vPortFree( void * pv ) ;
void vPortInitialiseBlocks( void ) ;
size_t xPortGetFreeHeapSize( void ) ;
size_t xPortGetMinimumEverFreeHeapSize( void ) ;

#line 184 "Source/FreeRTOS/include/portable.h"
#line 187 "Source/FreeRTOS/include/portable.h"
#line 188 "Source/FreeRTOS/include/portable.h"
#line 189 "Source/FreeRTOS/include/portable.h"
#line 190 "Source/FreeRTOS/include/portable.h"

#line 192 "Source/FreeRTOS/include/portable.h"

#line 200 "Source/FreeRTOS/include/portable.h"
#line 203 "Source/FreeRTOS/include/portable.h"


#line 207 "Source/FreeRTOS/include/portable.h"
 
BaseType_t xPortStartScheduler( void ) ;


#line 214 "Source/FreeRTOS/include/portable.h"
 
void vPortEndScheduler( void ) ;


#line 223 "Source/FreeRTOS/include/portable.h"
 
#line 225 "Source/FreeRTOS/include/portable.h"
#line 231 "Source/FreeRTOS/include/portable.h"

 
#line 236 "Source/FreeRTOS/include/portable.h"
 

#line 239 "Source/FreeRTOS/include/portable.h"
#line 65 "Source/FreeRTOS/include/FreeRTOS.h"


 

#line 70 "Source/FreeRTOS/include/FreeRTOS.h"
#line 71 "Source/FreeRTOS/include/FreeRTOS.h"

 
#line 74 "Source/FreeRTOS/include/FreeRTOS.h"

#line 83 "Source/FreeRTOS/include/FreeRTOS.h"
#line 91 "Source/FreeRTOS/include/FreeRTOS.h"
#line 95 "Source/FreeRTOS/include/FreeRTOS.h"
#line 99 "Source/FreeRTOS/include/FreeRTOS.h"
#line 103 "Source/FreeRTOS/include/FreeRTOS.h"
#line 104 "Source/FreeRTOS/include/FreeRTOS.h"


#line 107 "Source/FreeRTOS/include/FreeRTOS.h"
#line 108 "Source/FreeRTOS/include/FreeRTOS.h"

#line 110 "Source/FreeRTOS/include/FreeRTOS.h"
#line 114 "Source/FreeRTOS/include/FreeRTOS.h"
#line 118 "Source/FreeRTOS/include/FreeRTOS.h"
#line 122 "Source/FreeRTOS/include/FreeRTOS.h"
#line 126 "Source/FreeRTOS/include/FreeRTOS.h"
#line 127 "Source/FreeRTOS/include/FreeRTOS.h"


#line 132 "Source/FreeRTOS/include/FreeRTOS.h"
 

#line 137 "Source/FreeRTOS/include/FreeRTOS.h"

#line 141 "Source/FreeRTOS/include/FreeRTOS.h"

#line 143 "Source/FreeRTOS/include/FreeRTOS.h"
#line 145 "Source/FreeRTOS/include/FreeRTOS.h"

#line 149 "Source/FreeRTOS/include/FreeRTOS.h"

#line 153 "Source/FreeRTOS/include/FreeRTOS.h"

#line 157 "Source/FreeRTOS/include/FreeRTOS.h"

#line 161 "Source/FreeRTOS/include/FreeRTOS.h"


#line 164 "Source/FreeRTOS/include/FreeRTOS.h"
#line 165 "Source/FreeRTOS/include/FreeRTOS.h"

#line 169 "Source/FreeRTOS/include/FreeRTOS.h"

#line 173 "Source/FreeRTOS/include/FreeRTOS.h"

#line 177 "Source/FreeRTOS/include/FreeRTOS.h"

#line 181 "Source/FreeRTOS/include/FreeRTOS.h"


#line 187 "Source/FreeRTOS/include/FreeRTOS.h"
#line 190 "Source/FreeRTOS/include/FreeRTOS.h"
#line 191 "Source/FreeRTOS/include/FreeRTOS.h"





#line 199 "Source/FreeRTOS/include/FreeRTOS.h"
 
#line 201 "Source/FreeRTOS/include/FreeRTOS.h"
#line 202 "Source/FreeRTOS/include/FreeRTOS.h"
#line 203 "Source/FreeRTOS/include/FreeRTOS.h"

#line 207 "Source/FreeRTOS/include/FreeRTOS.h"

#line 211 "Source/FreeRTOS/include/FreeRTOS.h"


#line 214 "Source/FreeRTOS/include/FreeRTOS.h"
#line 215 "Source/FreeRTOS/include/FreeRTOS.h"


#line 218 "Source/FreeRTOS/include/FreeRTOS.h"
#line 219 "Source/FreeRTOS/include/FreeRTOS.h"


#line 222 "Source/FreeRTOS/include/FreeRTOS.h"
#line 223 "Source/FreeRTOS/include/FreeRTOS.h"


#line 226 "Source/FreeRTOS/include/FreeRTOS.h"
#line 227 "Source/FreeRTOS/include/FreeRTOS.h"


#line 230 "Source/FreeRTOS/include/FreeRTOS.h"
#line 231 "Source/FreeRTOS/include/FreeRTOS.h"


#line 234 "Source/FreeRTOS/include/FreeRTOS.h"
#line 235 "Source/FreeRTOS/include/FreeRTOS.h"


#line 238 "Source/FreeRTOS/include/FreeRTOS.h"
#line 239 "Source/FreeRTOS/include/FreeRTOS.h"


#line 242 "Source/FreeRTOS/include/FreeRTOS.h"
#line 243 "Source/FreeRTOS/include/FreeRTOS.h"


#line 246 "Source/FreeRTOS/include/FreeRTOS.h"
#line 247 "Source/FreeRTOS/include/FreeRTOS.h"


#line 250 "Source/FreeRTOS/include/FreeRTOS.h"
#line 251 "Source/FreeRTOS/include/FreeRTOS.h"


#line 254 "Source/FreeRTOS/include/FreeRTOS.h"
#line 255 "Source/FreeRTOS/include/FreeRTOS.h"


#line 258 "Source/FreeRTOS/include/FreeRTOS.h"
#line 259 "Source/FreeRTOS/include/FreeRTOS.h"

#line 261 "Source/FreeRTOS/include/FreeRTOS.h"
#line 264 "Source/FreeRTOS/include/FreeRTOS.h"
#line 265 "Source/FreeRTOS/include/FreeRTOS.h"


#line 268 "Source/FreeRTOS/include/FreeRTOS.h"
#line 269 "Source/FreeRTOS/include/FreeRTOS.h"


#line 272 "Source/FreeRTOS/include/FreeRTOS.h"
#line 273 "Source/FreeRTOS/include/FreeRTOS.h"


#line 276 "Source/FreeRTOS/include/FreeRTOS.h"
#line 277 "Source/FreeRTOS/include/FreeRTOS.h"


#line 280 "Source/FreeRTOS/include/FreeRTOS.h"
#line 281 "Source/FreeRTOS/include/FreeRTOS.h"


#line 284 "Source/FreeRTOS/include/FreeRTOS.h"
#line 285 "Source/FreeRTOS/include/FreeRTOS.h"


#line 288 "Source/FreeRTOS/include/FreeRTOS.h"
#line 289 "Source/FreeRTOS/include/FreeRTOS.h"


#line 292 "Source/FreeRTOS/include/FreeRTOS.h"
#line 293 "Source/FreeRTOS/include/FreeRTOS.h"


#line 296 "Source/FreeRTOS/include/FreeRTOS.h"
#line 297 "Source/FreeRTOS/include/FreeRTOS.h"


#line 300 "Source/FreeRTOS/include/FreeRTOS.h"
#line 301 "Source/FreeRTOS/include/FreeRTOS.h"

#line 305 "Source/FreeRTOS/include/FreeRTOS.h"

#line 309 "Source/FreeRTOS/include/FreeRTOS.h"

#line 311 "Source/FreeRTOS/include/FreeRTOS.h"
#line 313 "Source/FreeRTOS/include/FreeRTOS.h"





void Xprintf(const char *string, ...);        
        

    
#line 323 "Source/FreeRTOS/include/FreeRTOS.h"
#line 324 "Source/FreeRTOS/include/FreeRTOS.h"
#line 325 "Source/FreeRTOS/include/FreeRTOS.h"
#line 327 "Source/FreeRTOS/include/FreeRTOS.h"

        
        
        
        

#line 336 "Source/FreeRTOS/include/FreeRTOS.h"
 

#line 339 "Source/FreeRTOS/include/FreeRTOS.h"
#line 340 "Source/FreeRTOS/include/FreeRTOS.h"
#line 341 "Source/FreeRTOS/include/FreeRTOS.h"
#line 343 "Source/FreeRTOS/include/FreeRTOS.h"


#line 346 "Source/FreeRTOS/include/FreeRTOS.h"
#line 347 "Source/FreeRTOS/include/FreeRTOS.h"


#line 350 "Source/FreeRTOS/include/FreeRTOS.h"
#line 351 "Source/FreeRTOS/include/FreeRTOS.h"

 
#line 354 "Source/FreeRTOS/include/FreeRTOS.h"
#line 358 "Source/FreeRTOS/include/FreeRTOS.h"
#line 362 "Source/FreeRTOS/include/FreeRTOS.h"
#line 366 "Source/FreeRTOS/include/FreeRTOS.h"
#line 368 "Source/FreeRTOS/include/FreeRTOS.h"


#line 371 "Source/FreeRTOS/include/FreeRTOS.h"
#line 372 "Source/FreeRTOS/include/FreeRTOS.h"


#line 375 "Source/FreeRTOS/include/FreeRTOS.h"
#line 376 "Source/FreeRTOS/include/FreeRTOS.h"


#line 379 "Source/FreeRTOS/include/FreeRTOS.h"
#line 380 "Source/FreeRTOS/include/FreeRTOS.h"


#line 383 "Source/FreeRTOS/include/FreeRTOS.h"
#line 384 "Source/FreeRTOS/include/FreeRTOS.h"


#line 387 "Source/FreeRTOS/include/FreeRTOS.h"
#line 388 "Source/FreeRTOS/include/FreeRTOS.h"


#line 391 "Source/FreeRTOS/include/FreeRTOS.h"
#line 392 "Source/FreeRTOS/include/FreeRTOS.h"

#line 394 "Source/FreeRTOS/include/FreeRTOS.h"
#line 395 "Source/FreeRTOS/include/FreeRTOS.h"
#line 396 "Source/FreeRTOS/include/FreeRTOS.h"
#line 397 "Source/FreeRTOS/include/FreeRTOS.h"
#line 398 "Source/FreeRTOS/include/FreeRTOS.h"


#line 401 "Source/FreeRTOS/include/FreeRTOS.h"
#line 402 "Source/FreeRTOS/include/FreeRTOS.h"


#line 405 "Source/FreeRTOS/include/FreeRTOS.h"
#line 406 "Source/FreeRTOS/include/FreeRTOS.h"

 



#line 411 "Source/FreeRTOS/include/FreeRTOS.h"
 
#line 413 "Source/FreeRTOS/include/FreeRTOS.h"
#line 414 "Source/FreeRTOS/include/FreeRTOS.h"




#line 418 "Source/FreeRTOS/include/FreeRTOS.h"
 
#line 420 "Source/FreeRTOS/include/FreeRTOS.h"
#line 421 "Source/FreeRTOS/include/FreeRTOS.h"




#line 425 "Source/FreeRTOS/include/FreeRTOS.h"
 
#line 427 "Source/FreeRTOS/include/FreeRTOS.h"
#line 428 "Source/FreeRTOS/include/FreeRTOS.h"




#line 432 "Source/FreeRTOS/include/FreeRTOS.h"
 
#line 434 "Source/FreeRTOS/include/FreeRTOS.h"
#line 435 "Source/FreeRTOS/include/FreeRTOS.h"


     
#line 439 "Source/FreeRTOS/include/FreeRTOS.h"
#line 440 "Source/FreeRTOS/include/FreeRTOS.h"


     
#line 444 "Source/FreeRTOS/include/FreeRTOS.h"
#line 445 "Source/FreeRTOS/include/FreeRTOS.h"



 
#line 450 "Source/FreeRTOS/include/FreeRTOS.h"
#line 451 "Source/FreeRTOS/include/FreeRTOS.h"




#line 458 "Source/FreeRTOS/include/FreeRTOS.h"
 
#line 460 "Source/FreeRTOS/include/FreeRTOS.h"
#line 461 "Source/FreeRTOS/include/FreeRTOS.h"




#line 467 "Source/FreeRTOS/include/FreeRTOS.h"
 
#line 469 "Source/FreeRTOS/include/FreeRTOS.h"
#line 470 "Source/FreeRTOS/include/FreeRTOS.h"




#line 476 "Source/FreeRTOS/include/FreeRTOS.h"
 
#line 478 "Source/FreeRTOS/include/FreeRTOS.h"
#line 479 "Source/FreeRTOS/include/FreeRTOS.h"




#line 485 "Source/FreeRTOS/include/FreeRTOS.h"
 
#line 487 "Source/FreeRTOS/include/FreeRTOS.h"
#line 488 "Source/FreeRTOS/include/FreeRTOS.h"




#line 494 "Source/FreeRTOS/include/FreeRTOS.h"
 
#line 496 "Source/FreeRTOS/include/FreeRTOS.h"
#line 497 "Source/FreeRTOS/include/FreeRTOS.h"


#line 500 "Source/FreeRTOS/include/FreeRTOS.h"
#line 501 "Source/FreeRTOS/include/FreeRTOS.h"


#line 504 "Source/FreeRTOS/include/FreeRTOS.h"
#line 505 "Source/FreeRTOS/include/FreeRTOS.h"


#line 508 "Source/FreeRTOS/include/FreeRTOS.h"
#line 509 "Source/FreeRTOS/include/FreeRTOS.h"

 


#line 514 "Source/FreeRTOS/include/FreeRTOS.h"
#line 515 "Source/FreeRTOS/include/FreeRTOS.h"


#line 518 "Source/FreeRTOS/include/FreeRTOS.h"
#line 519 "Source/FreeRTOS/include/FreeRTOS.h"


#line 522 "Source/FreeRTOS/include/FreeRTOS.h"
#line 523 "Source/FreeRTOS/include/FreeRTOS.h"


#line 526 "Source/FreeRTOS/include/FreeRTOS.h"
#line 527 "Source/FreeRTOS/include/FreeRTOS.h"


#line 530 "Source/FreeRTOS/include/FreeRTOS.h"
#line 531 "Source/FreeRTOS/include/FreeRTOS.h"


#line 534 "Source/FreeRTOS/include/FreeRTOS.h"
#line 535 "Source/FreeRTOS/include/FreeRTOS.h"


#line 538 "Source/FreeRTOS/include/FreeRTOS.h"
#line 539 "Source/FreeRTOS/include/FreeRTOS.h"


#line 542 "Source/FreeRTOS/include/FreeRTOS.h"
#line 543 "Source/FreeRTOS/include/FreeRTOS.h"


#line 546 "Source/FreeRTOS/include/FreeRTOS.h"
#line 547 "Source/FreeRTOS/include/FreeRTOS.h"


#line 550 "Source/FreeRTOS/include/FreeRTOS.h"
#line 551 "Source/FreeRTOS/include/FreeRTOS.h"


#line 554 "Source/FreeRTOS/include/FreeRTOS.h"
#line 555 "Source/FreeRTOS/include/FreeRTOS.h"


#line 558 "Source/FreeRTOS/include/FreeRTOS.h"
#line 559 "Source/FreeRTOS/include/FreeRTOS.h"


#line 562 "Source/FreeRTOS/include/FreeRTOS.h"
#line 563 "Source/FreeRTOS/include/FreeRTOS.h"


#line 566 "Source/FreeRTOS/include/FreeRTOS.h"
#line 567 "Source/FreeRTOS/include/FreeRTOS.h"


#line 570 "Source/FreeRTOS/include/FreeRTOS.h"
#line 571 "Source/FreeRTOS/include/FreeRTOS.h"


#line 574 "Source/FreeRTOS/include/FreeRTOS.h"
#line 575 "Source/FreeRTOS/include/FreeRTOS.h"


#line 578 "Source/FreeRTOS/include/FreeRTOS.h"
#line 579 "Source/FreeRTOS/include/FreeRTOS.h"


#line 582 "Source/FreeRTOS/include/FreeRTOS.h"
#line 583 "Source/FreeRTOS/include/FreeRTOS.h"


#line 586 "Source/FreeRTOS/include/FreeRTOS.h"
#line 587 "Source/FreeRTOS/include/FreeRTOS.h"


#line 590 "Source/FreeRTOS/include/FreeRTOS.h"
#line 591 "Source/FreeRTOS/include/FreeRTOS.h"


#line 594 "Source/FreeRTOS/include/FreeRTOS.h"
#line 595 "Source/FreeRTOS/include/FreeRTOS.h"


#line 598 "Source/FreeRTOS/include/FreeRTOS.h"
#line 599 "Source/FreeRTOS/include/FreeRTOS.h"


#line 602 "Source/FreeRTOS/include/FreeRTOS.h"
#line 603 "Source/FreeRTOS/include/FreeRTOS.h"


#line 606 "Source/FreeRTOS/include/FreeRTOS.h"
#line 607 "Source/FreeRTOS/include/FreeRTOS.h"


#line 610 "Source/FreeRTOS/include/FreeRTOS.h"
#line 611 "Source/FreeRTOS/include/FreeRTOS.h"


#line 614 "Source/FreeRTOS/include/FreeRTOS.h"
#line 615 "Source/FreeRTOS/include/FreeRTOS.h"


#line 618 "Source/FreeRTOS/include/FreeRTOS.h"
#line 619 "Source/FreeRTOS/include/FreeRTOS.h"


#line 622 "Source/FreeRTOS/include/FreeRTOS.h"
#line 623 "Source/FreeRTOS/include/FreeRTOS.h"


#line 626 "Source/FreeRTOS/include/FreeRTOS.h"
#line 627 "Source/FreeRTOS/include/FreeRTOS.h"


#line 630 "Source/FreeRTOS/include/FreeRTOS.h"
#line 631 "Source/FreeRTOS/include/FreeRTOS.h"


#line 634 "Source/FreeRTOS/include/FreeRTOS.h"
#line 635 "Source/FreeRTOS/include/FreeRTOS.h"


#line 638 "Source/FreeRTOS/include/FreeRTOS.h"
#line 639 "Source/FreeRTOS/include/FreeRTOS.h"


#line 642 "Source/FreeRTOS/include/FreeRTOS.h"
#line 643 "Source/FreeRTOS/include/FreeRTOS.h"


#line 646 "Source/FreeRTOS/include/FreeRTOS.h"
#line 647 "Source/FreeRTOS/include/FreeRTOS.h"


#line 650 "Source/FreeRTOS/include/FreeRTOS.h"
#line 651 "Source/FreeRTOS/include/FreeRTOS.h"


#line 654 "Source/FreeRTOS/include/FreeRTOS.h"
#line 655 "Source/FreeRTOS/include/FreeRTOS.h"


#line 658 "Source/FreeRTOS/include/FreeRTOS.h"
#line 659 "Source/FreeRTOS/include/FreeRTOS.h"


#line 662 "Source/FreeRTOS/include/FreeRTOS.h"
#line 663 "Source/FreeRTOS/include/FreeRTOS.h"


#line 666 "Source/FreeRTOS/include/FreeRTOS.h"
#line 667 "Source/FreeRTOS/include/FreeRTOS.h"


#line 670 "Source/FreeRTOS/include/FreeRTOS.h"
#line 671 "Source/FreeRTOS/include/FreeRTOS.h"


#line 674 "Source/FreeRTOS/include/FreeRTOS.h"
#line 675 "Source/FreeRTOS/include/FreeRTOS.h"


#line 678 "Source/FreeRTOS/include/FreeRTOS.h"
#line 679 "Source/FreeRTOS/include/FreeRTOS.h"


#line 682 "Source/FreeRTOS/include/FreeRTOS.h"
#line 683 "Source/FreeRTOS/include/FreeRTOS.h"


#line 686 "Source/FreeRTOS/include/FreeRTOS.h"
#line 687 "Source/FreeRTOS/include/FreeRTOS.h"


#line 690 "Source/FreeRTOS/include/FreeRTOS.h"
#line 691 "Source/FreeRTOS/include/FreeRTOS.h"


#line 694 "Source/FreeRTOS/include/FreeRTOS.h"
#line 695 "Source/FreeRTOS/include/FreeRTOS.h"


#line 698 "Source/FreeRTOS/include/FreeRTOS.h"
#line 699 "Source/FreeRTOS/include/FreeRTOS.h"


#line 702 "Source/FreeRTOS/include/FreeRTOS.h"
#line 703 "Source/FreeRTOS/include/FreeRTOS.h"


#line 706 "Source/FreeRTOS/include/FreeRTOS.h"
#line 707 "Source/FreeRTOS/include/FreeRTOS.h"


#line 710 "Source/FreeRTOS/include/FreeRTOS.h"
#line 711 "Source/FreeRTOS/include/FreeRTOS.h"


#line 714 "Source/FreeRTOS/include/FreeRTOS.h"
#line 715 "Source/FreeRTOS/include/FreeRTOS.h"


#line 718 "Source/FreeRTOS/include/FreeRTOS.h"
#line 719 "Source/FreeRTOS/include/FreeRTOS.h"


#line 722 "Source/FreeRTOS/include/FreeRTOS.h"
#line 723 "Source/FreeRTOS/include/FreeRTOS.h"


#line 726 "Source/FreeRTOS/include/FreeRTOS.h"
#line 727 "Source/FreeRTOS/include/FreeRTOS.h"


#line 730 "Source/FreeRTOS/include/FreeRTOS.h"
#line 731 "Source/FreeRTOS/include/FreeRTOS.h"


#line 734 "Source/FreeRTOS/include/FreeRTOS.h"
#line 735 "Source/FreeRTOS/include/FreeRTOS.h"


#line 738 "Source/FreeRTOS/include/FreeRTOS.h"
#line 739 "Source/FreeRTOS/include/FreeRTOS.h"


#line 742 "Source/FreeRTOS/include/FreeRTOS.h"
#line 743 "Source/FreeRTOS/include/FreeRTOS.h"


#line 746 "Source/FreeRTOS/include/FreeRTOS.h"
#line 747 "Source/FreeRTOS/include/FreeRTOS.h"


#line 750 "Source/FreeRTOS/include/FreeRTOS.h"
#line 751 "Source/FreeRTOS/include/FreeRTOS.h"


#line 754 "Source/FreeRTOS/include/FreeRTOS.h"
#line 755 "Source/FreeRTOS/include/FreeRTOS.h"


#line 758 "Source/FreeRTOS/include/FreeRTOS.h"
#line 759 "Source/FreeRTOS/include/FreeRTOS.h"


#line 762 "Source/FreeRTOS/include/FreeRTOS.h"
#line 763 "Source/FreeRTOS/include/FreeRTOS.h"


#line 766 "Source/FreeRTOS/include/FreeRTOS.h"
#line 767 "Source/FreeRTOS/include/FreeRTOS.h"


#line 770 "Source/FreeRTOS/include/FreeRTOS.h"
#line 771 "Source/FreeRTOS/include/FreeRTOS.h"


#line 774 "Source/FreeRTOS/include/FreeRTOS.h"
#line 775 "Source/FreeRTOS/include/FreeRTOS.h"


#line 778 "Source/FreeRTOS/include/FreeRTOS.h"
#line 779 "Source/FreeRTOS/include/FreeRTOS.h"


#line 782 "Source/FreeRTOS/include/FreeRTOS.h"
#line 783 "Source/FreeRTOS/include/FreeRTOS.h"


#line 786 "Source/FreeRTOS/include/FreeRTOS.h"
#line 787 "Source/FreeRTOS/include/FreeRTOS.h"


#line 790 "Source/FreeRTOS/include/FreeRTOS.h"
#line 791 "Source/FreeRTOS/include/FreeRTOS.h"


#line 794 "Source/FreeRTOS/include/FreeRTOS.h"
#line 795 "Source/FreeRTOS/include/FreeRTOS.h"


#line 798 "Source/FreeRTOS/include/FreeRTOS.h"
#line 799 "Source/FreeRTOS/include/FreeRTOS.h"


#line 802 "Source/FreeRTOS/include/FreeRTOS.h"
#line 803 "Source/FreeRTOS/include/FreeRTOS.h"


#line 806 "Source/FreeRTOS/include/FreeRTOS.h"
#line 807 "Source/FreeRTOS/include/FreeRTOS.h"


#line 810 "Source/FreeRTOS/include/FreeRTOS.h"
#line 811 "Source/FreeRTOS/include/FreeRTOS.h"


#line 814 "Source/FreeRTOS/include/FreeRTOS.h"
#line 815 "Source/FreeRTOS/include/FreeRTOS.h"


#line 818 "Source/FreeRTOS/include/FreeRTOS.h"
#line 819 "Source/FreeRTOS/include/FreeRTOS.h"


#line 822 "Source/FreeRTOS/include/FreeRTOS.h"
#line 823 "Source/FreeRTOS/include/FreeRTOS.h"

#line 825 "Source/FreeRTOS/include/FreeRTOS.h"
#line 829 "Source/FreeRTOS/include/FreeRTOS.h"
#line 834 "Source/FreeRTOS/include/FreeRTOS.h"
#line 835 "Source/FreeRTOS/include/FreeRTOS.h"
#line 837 "Source/FreeRTOS/include/FreeRTOS.h"


#line 840 "Source/FreeRTOS/include/FreeRTOS.h"
#line 841 "Source/FreeRTOS/include/FreeRTOS.h"


#line 844 "Source/FreeRTOS/include/FreeRTOS.h"
#line 845 "Source/FreeRTOS/include/FreeRTOS.h"


#line 848 "Source/FreeRTOS/include/FreeRTOS.h"
#line 849 "Source/FreeRTOS/include/FreeRTOS.h"


#line 852 "Source/FreeRTOS/include/FreeRTOS.h"
#line 853 "Source/FreeRTOS/include/FreeRTOS.h"


#line 856 "Source/FreeRTOS/include/FreeRTOS.h"
#line 857 "Source/FreeRTOS/include/FreeRTOS.h"


#line 860 "Source/FreeRTOS/include/FreeRTOS.h"
#line 861 "Source/FreeRTOS/include/FreeRTOS.h"

#line 863 "Source/FreeRTOS/include/FreeRTOS.h"
#line 865 "Source/FreeRTOS/include/FreeRTOS.h"


#line 868 "Source/FreeRTOS/include/FreeRTOS.h"
#line 869 "Source/FreeRTOS/include/FreeRTOS.h"


#line 872 "Source/FreeRTOS/include/FreeRTOS.h"
#line 873 "Source/FreeRTOS/include/FreeRTOS.h"


#line 876 "Source/FreeRTOS/include/FreeRTOS.h"
#line 877 "Source/FreeRTOS/include/FreeRTOS.h"


#line 880 "Source/FreeRTOS/include/FreeRTOS.h"
#line 881 "Source/FreeRTOS/include/FreeRTOS.h"


#line 884 "Source/FreeRTOS/include/FreeRTOS.h"
#line 885 "Source/FreeRTOS/include/FreeRTOS.h"


#line 888 "Source/FreeRTOS/include/FreeRTOS.h"
#line 889 "Source/FreeRTOS/include/FreeRTOS.h"


#line 892 "Source/FreeRTOS/include/FreeRTOS.h"
#line 893 "Source/FreeRTOS/include/FreeRTOS.h"


#line 896 "Source/FreeRTOS/include/FreeRTOS.h"
#line 897 "Source/FreeRTOS/include/FreeRTOS.h"


#line 900 "Source/FreeRTOS/include/FreeRTOS.h"
#line 901 "Source/FreeRTOS/include/FreeRTOS.h"


#line 904 "Source/FreeRTOS/include/FreeRTOS.h"
#line 905 "Source/FreeRTOS/include/FreeRTOS.h"

#line 909 "Source/FreeRTOS/include/FreeRTOS.h"


#line 912 "Source/FreeRTOS/include/FreeRTOS.h"
#line 913 "Source/FreeRTOS/include/FreeRTOS.h"

#line 917 "Source/FreeRTOS/include/FreeRTOS.h"


#line 920 "Source/FreeRTOS/include/FreeRTOS.h"
#line 921 "Source/FreeRTOS/include/FreeRTOS.h"


#line 924 "Source/FreeRTOS/include/FreeRTOS.h"
#line 925 "Source/FreeRTOS/include/FreeRTOS.h"


#line 928 "Source/FreeRTOS/include/FreeRTOS.h"
#line 929 "Source/FreeRTOS/include/FreeRTOS.h"


#line 932 "Source/FreeRTOS/include/FreeRTOS.h"
#line 933 "Source/FreeRTOS/include/FreeRTOS.h"


#line 936 "Source/FreeRTOS/include/FreeRTOS.h"
#line 937 "Source/FreeRTOS/include/FreeRTOS.h"


#line 940 "Source/FreeRTOS/include/FreeRTOS.h"
#line 941 "Source/FreeRTOS/include/FreeRTOS.h"


#line 944 "Source/FreeRTOS/include/FreeRTOS.h"
#line 945 "Source/FreeRTOS/include/FreeRTOS.h"

#line 947 "Source/FreeRTOS/include/FreeRTOS.h"
#line 949 "Source/FreeRTOS/include/FreeRTOS.h"


#line 952 "Source/FreeRTOS/include/FreeRTOS.h"
#line 953 "Source/FreeRTOS/include/FreeRTOS.h"



 
#line 958 "Source/FreeRTOS/include/FreeRTOS.h"
#line 959 "Source/FreeRTOS/include/FreeRTOS.h"


#line 962 "Source/FreeRTOS/include/FreeRTOS.h"
#line 963 "Source/FreeRTOS/include/FreeRTOS.h"


     
#line 967 "Source/FreeRTOS/include/FreeRTOS.h"
#line 968 "Source/FreeRTOS/include/FreeRTOS.h"


     
#line 972 "Source/FreeRTOS/include/FreeRTOS.h"
#line 973 "Source/FreeRTOS/include/FreeRTOS.h"

#line 975 "Source/FreeRTOS/include/FreeRTOS.h"
#line 977 "Source/FreeRTOS/include/FreeRTOS.h"

#line 979 "Source/FreeRTOS/include/FreeRTOS.h"
#line 980 "Source/FreeRTOS/include/FreeRTOS.h"
#line 982 "Source/FreeRTOS/include/FreeRTOS.h"
#line 983 "Source/FreeRTOS/include/FreeRTOS.h"




#line 987 "Source/FreeRTOS/include/FreeRTOS.h"
 
#line 989 "Source/FreeRTOS/include/FreeRTOS.h"
#line 990 "Source/FreeRTOS/include/FreeRTOS.h"




#line 994 "Source/FreeRTOS/include/FreeRTOS.h"
 

#line 997 "Source/FreeRTOS/include/FreeRTOS.h"
#line 998 "Source/FreeRTOS/include/FreeRTOS.h"




#line 1003 "Source/FreeRTOS/include/FreeRTOS.h"
 
#line 1005 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1006 "Source/FreeRTOS/include/FreeRTOS.h"

 
#line 1009 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1011 "Source/FreeRTOS/include/FreeRTOS.h"

#line 1013 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1015 "Source/FreeRTOS/include/FreeRTOS.h"


#line 1018 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1019 "Source/FreeRTOS/include/FreeRTOS.h"

#line 1021 "Source/FreeRTOS/include/FreeRTOS.h"


#line 1024 "Source/FreeRTOS/include/FreeRTOS.h"
 
#line 1026 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1027 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1028 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1029 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1030 "Source/FreeRTOS/include/FreeRTOS.h"

#line 1032 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1038 "Source/FreeRTOS/include/FreeRTOS.h"


#line 1040 "Source/FreeRTOS/include/FreeRTOS.h"
 

#line 1043 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1044 "Source/FreeRTOS/include/FreeRTOS.h"




#line 1056 "Source/FreeRTOS/include/FreeRTOS.h"
 
#line 1058 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1059 "Source/FreeRTOS/include/FreeRTOS.h"




#line 1063 "Source/FreeRTOS/include/FreeRTOS.h"
 
#line 1065 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1066 "Source/FreeRTOS/include/FreeRTOS.h"




#line 1070 "Source/FreeRTOS/include/FreeRTOS.h"
 
#line 1072 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1073 "Source/FreeRTOS/include/FreeRTOS.h"

#line 1075 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1076 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1077 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1078 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1079 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1080 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1081 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1082 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1083 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1084 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1085 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1086 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1087 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1088 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1089 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1090 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1091 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1092 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1093 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1094 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1095 "Source/FreeRTOS/include/FreeRTOS.h"


#line 1097 "Source/FreeRTOS/include/FreeRTOS.h"
 
#line 1099 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1100 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1101 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1102 "Source/FreeRTOS/include/FreeRTOS.h"


#line 1104 "Source/FreeRTOS/include/FreeRTOS.h"
 
#line 1106 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1107 "Source/FreeRTOS/include/FreeRTOS.h"

#line 1109 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1111 "Source/FreeRTOS/include/FreeRTOS.h"


#line 1115 "Source/FreeRTOS/include/FreeRTOS.h"
 

#line 1118 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1119 "Source/FreeRTOS/include/FreeRTOS.h"


#line 1121 "Source/FreeRTOS/include/FreeRTOS.h"
 

#line 1124 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1125 "Source/FreeRTOS/include/FreeRTOS.h"


#line 1127 "Source/FreeRTOS/include/FreeRTOS.h"
 

#line 1130 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1131 "Source/FreeRTOS/include/FreeRTOS.h"


#line 1133 "Source/FreeRTOS/include/FreeRTOS.h"
 

#line 1136 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1137 "Source/FreeRTOS/include/FreeRTOS.h"


#line 1139 "Source/FreeRTOS/include/FreeRTOS.h"
 

#line 1142 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1143 "Source/FreeRTOS/include/FreeRTOS.h"


#line 1145 "Source/FreeRTOS/include/FreeRTOS.h"
 

#line 1148 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1149 "Source/FreeRTOS/include/FreeRTOS.h"


#line 1152 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1153 "Source/FreeRTOS/include/FreeRTOS.h"



#line 1196 "Source/FreeRTOS/include/FreeRTOS.h"
 

#line 1199 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1200 "Source/FreeRTOS/include/FreeRTOS.h"


#line 1210 "Source/FreeRTOS/include/FreeRTOS.h"
 
struct xSTATIC_LIST_ITEM
{
#line 1214 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1216 "Source/FreeRTOS/include/FreeRTOS.h"
    TickType_t xDummy2;
    void * pvDummy3[ 4 ];
#line 1219 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1221 "Source/FreeRTOS/include/FreeRTOS.h"
};
typedef struct xSTATIC_LIST_ITEM StaticListItem_t;

#line 1225 "Source/FreeRTOS/include/FreeRTOS.h"
     
    struct xSTATIC_MINI_LIST_ITEM
    {
#line 1229 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1231 "Source/FreeRTOS/include/FreeRTOS.h"
        TickType_t xDummy2;
        void * pvDummy3[ 2 ];
    };
    typedef struct xSTATIC_MINI_LIST_ITEM StaticMiniListItem_t;
#line 1236 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1238 "Source/FreeRTOS/include/FreeRTOS.h"

 
typedef struct xSTATIC_LIST
{
#line 1243 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1245 "Source/FreeRTOS/include/FreeRTOS.h"
    UBaseType_t uxDummy2;
    void * pvDummy3;
    StaticMiniListItem_t xDummy4;
#line 1249 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1251 "Source/FreeRTOS/include/FreeRTOS.h"
} StaticList_t;


#line 1265 "Source/FreeRTOS/include/FreeRTOS.h"
 
typedef struct xSTATIC_TCB
{
    void * pxDummy1;
#line 1270 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1272 "Source/FreeRTOS/include/FreeRTOS.h"
    StaticListItem_t xDummy3[ 2 ];
    UBaseType_t uxDummy5;
    void * pxDummy6;
    uint8_t ucDummy7[ ( 4 )  ];
#line 1277 "Source/FreeRTOS/include/FreeRTOS.h"
        void * pxDummy8;
#line 1279 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1280 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1282 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1283 "Source/FreeRTOS/include/FreeRTOS.h"
        UBaseType_t uxDummy10[ 2 ];
#line 1285 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1286 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1288 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1289 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1291 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1292 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1294 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1295 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1297 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1298 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1300 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1301 "Source/FreeRTOS/include/FreeRTOS.h"
        uint32_t ulDummy18[ 1  ];
        uint8_t ucDummy19[ 1  ];
#line 1304 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1305 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1307 "Source/FreeRTOS/include/FreeRTOS.h"

#line 1309 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1311 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1312 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1314 "Source/FreeRTOS/include/FreeRTOS.h"
} StaticTask_t;


#line 1329 "Source/FreeRTOS/include/FreeRTOS.h"
 
typedef struct xSTATIC_QUEUE
{
    void * pvDummy1[ 3 ];

    union
    {
        void * pvDummy2;
        UBaseType_t uxDummy2;
    } u;

    StaticList_t xDummy3[ 2 ];
    UBaseType_t uxDummy4[ 3 ];
    uint8_t ucDummy5[ 2 ];

#line 1345 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1347 "Source/FreeRTOS/include/FreeRTOS.h"

#line 1349 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1351 "Source/FreeRTOS/include/FreeRTOS.h"

#line 1353 "Source/FreeRTOS/include/FreeRTOS.h"
        UBaseType_t uxDummy8;
        uint8_t ucDummy9;
#line 1356 "Source/FreeRTOS/include/FreeRTOS.h"
} StaticQueue_t;
typedef StaticQueue_t StaticSemaphore_t;


#line 1372 "Source/FreeRTOS/include/FreeRTOS.h"
 
typedef struct xSTATIC_EVENT_GROUP
{
    TickType_t xDummy1;
    StaticList_t xDummy2;

#line 1379 "Source/FreeRTOS/include/FreeRTOS.h"
        UBaseType_t uxDummy3;
#line 1381 "Source/FreeRTOS/include/FreeRTOS.h"

#line 1383 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1385 "Source/FreeRTOS/include/FreeRTOS.h"
} StaticEventGroup_t;


#line 1400 "Source/FreeRTOS/include/FreeRTOS.h"
 
typedef struct xSTATIC_TIMER
{
    void * pvDummy1;
    StaticListItem_t xDummy2;
    TickType_t xDummy3;
    void * pvDummy5;
    TaskFunction_t pvDummy6;
#line 1409 "Source/FreeRTOS/include/FreeRTOS.h"
        UBaseType_t uxDummy7;
#line 1411 "Source/FreeRTOS/include/FreeRTOS.h"
    uint8_t ucDummy8;
} StaticTimer_t;


#line 1427 "Source/FreeRTOS/include/FreeRTOS.h"
 
typedef struct xSTATIC_STREAM_BUFFER
{
    size_t uxDummy1[ 4 ];
    void * pvDummy2[ 3 ];
    uint8_t ucDummy3;
#line 1434 "Source/FreeRTOS/include/FreeRTOS.h"
        UBaseType_t uxDummy4;
#line 1436 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1437 "Source/FreeRTOS/include/FreeRTOS.h"
#line 1439 "Source/FreeRTOS/include/FreeRTOS.h"
} StaticStreamBuffer_t;

 
typedef StaticStreamBuffer_t StaticMessageBuffer_t;

 
#line 1448 "Source/FreeRTOS/include/FreeRTOS.h"
 

#line 1451 "Source/FreeRTOS/include/FreeRTOS.h"
#line 39 "Source/FreeRTOS/tasks.c"

#line 1 "Source/FreeRTOS/include/task.h"

#line 27 "Source/FreeRTOS/include/task.h"
 



#line 32 "Source/FreeRTOS/include/task.h"

#line 36 "Source/FreeRTOS/include/task.h"

#line 1 "Source/FreeRTOS/include/list.h"

#line 27 "Source/FreeRTOS/include/list.h"
 


#line 55 "Source/FreeRTOS/include/list.h"
 



#line 60 "Source/FreeRTOS/include/list.h"

#line 64 "Source/FreeRTOS/include/list.h"


#line 92 "Source/FreeRTOS/include/list.h"
 

#line 95 "Source/FreeRTOS/include/list.h"
#line 96 "Source/FreeRTOS/include/list.h"

 
#line 101 "Source/FreeRTOS/include/list.h"
 


#line 107 "Source/FreeRTOS/include/list.h"
 
#line 109 "Source/FreeRTOS/include/list.h"
     
#line 111 "Source/FreeRTOS/include/list.h"
#line 112 "Source/FreeRTOS/include/list.h"
#line 113 "Source/FreeRTOS/include/list.h"
#line 114 "Source/FreeRTOS/include/list.h"
#line 115 "Source/FreeRTOS/include/list.h"
#line 116 "Source/FreeRTOS/include/list.h"
#line 117 "Source/FreeRTOS/include/list.h"
#line 118 "Source/FreeRTOS/include/list.h"
#line 119 "Source/FreeRTOS/include/list.h"
#line 120 "Source/FreeRTOS/include/list.h"
#line 121 "Source/FreeRTOS/include/list.h"

#line 134 "Source/FreeRTOS/include/list.h"
#line 138 "Source/FreeRTOS/include/list.h"



#line 142 "Source/FreeRTOS/include/list.h"
 
struct xLIST;
struct xLIST_ITEM
{
                
     TickType_t xItemValue;           
    struct xLIST_ITEM *  pxNext;      
    struct xLIST_ITEM *  pxPrevious;  
    void * pvOwner;                                      
    struct xLIST *  pvContainer ;      
               
};
typedef struct xLIST_ITEM ListItem_t;                    

#line 157 "Source/FreeRTOS/include/list.h"
    struct xMINI_LIST_ITEM
    {
          
         TickType_t xItemValue;
        struct xLIST_ITEM *  pxNext;
        struct xLIST_ITEM *  pxPrevious;
    };
    typedef struct xMINI_LIST_ITEM MiniListItem_t;
#line 166 "Source/FreeRTOS/include/list.h"
#line 168 "Source/FreeRTOS/include/list.h"


#line 171 "Source/FreeRTOS/include/list.h"
 
typedef struct xLIST
{
           
    volatile UBaseType_t uxNumberOfItems;
    ListItem_t          *  pxIndex;  
    MiniListItem_t xListEnd;                   
          
} List_t;


#line 187 "Source/FreeRTOS/include/list.h"
 
#line 189 "Source/FreeRTOS/include/list.h"


#line 196 "Source/FreeRTOS/include/list.h"
 
#line 198 "Source/FreeRTOS/include/list.h"


#line 205 "Source/FreeRTOS/include/list.h"
 
#line 207 "Source/FreeRTOS/include/list.h"


#line 215 "Source/FreeRTOS/include/list.h"
 
#line 217 "Source/FreeRTOS/include/list.h"


#line 224 "Source/FreeRTOS/include/list.h"
 
#line 226 "Source/FreeRTOS/include/list.h"


#line 232 "Source/FreeRTOS/include/list.h"
 
#line 234 "Source/FreeRTOS/include/list.h"


#line 240 "Source/FreeRTOS/include/list.h"
 
#line 242 "Source/FreeRTOS/include/list.h"


#line 248 "Source/FreeRTOS/include/list.h"
 
#line 250 "Source/FreeRTOS/include/list.h"


#line 257 "Source/FreeRTOS/include/list.h"
 
#line 259 "Source/FreeRTOS/include/list.h"


#line 262 "Source/FreeRTOS/include/list.h"
 
#line 264 "Source/FreeRTOS/include/list.h"


#line 282 "Source/FreeRTOS/include/list.h"
 

#line 293 "Source/FreeRTOS/include/list.h"
#line 294 "Source/FreeRTOS/include/list.h"


#line 310 "Source/FreeRTOS/include/list.h"
 

#line 326 "Source/FreeRTOS/include/list.h"
#line 327 "Source/FreeRTOS/include/list.h"


#line 351 "Source/FreeRTOS/include/list.h"
 

#line 373 "Source/FreeRTOS/include/list.h"
#line 374 "Source/FreeRTOS/include/list.h"


#line 390 "Source/FreeRTOS/include/list.h"
 
#line 392 "Source/FreeRTOS/include/list.h"


#line 401 "Source/FreeRTOS/include/list.h"
 
#line 403 "Source/FreeRTOS/include/list.h"


#line 409 "Source/FreeRTOS/include/list.h"
 
#line 411 "Source/FreeRTOS/include/list.h"


#line 416 "Source/FreeRTOS/include/list.h"
 
#line 418 "Source/FreeRTOS/include/list.h"


#line 428 "Source/FreeRTOS/include/list.h"
 
void vListInitialise( List_t * const pxList ) ;


#line 439 "Source/FreeRTOS/include/list.h"
 
void vListInitialiseItem( ListItem_t * const pxItem ) ;


#line 452 "Source/FreeRTOS/include/list.h"
 
void vListInsert( List_t * const pxList,
                  ListItem_t * const pxNewListItem ) ;


#line 474 "Source/FreeRTOS/include/list.h"
 
void vListInsertEnd( List_t * const pxList,
                     ListItem_t * const pxNewListItem ) ;


#line 490 "Source/FreeRTOS/include/list.h"
 
UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove ) ;

 
#line 497 "Source/FreeRTOS/include/list.h"
 

#line 500 "Source/FreeRTOS/include/list.h"
#line 37 "Source/FreeRTOS/include/task.h"


 
#line 43 "Source/FreeRTOS/include/task.h"
 


#line 47 "Source/FreeRTOS/include/task.h"
 


#line 55 "Source/FreeRTOS/include/task.h"
 
#line 57 "Source/FreeRTOS/include/task.h"
#line 58 "Source/FreeRTOS/include/task.h"
#line 59 "Source/FreeRTOS/include/task.h"
#line 60 "Source/FreeRTOS/include/task.h"


#line 62 "Source/FreeRTOS/include/task.h"
 
#line 64 "Source/FreeRTOS/include/task.h"
#line 65 "Source/FreeRTOS/include/task.h"
#line 66 "Source/FreeRTOS/include/task.h"
#line 67 "Source/FreeRTOS/include/task.h"
#line 68 "Source/FreeRTOS/include/task.h"


#line 73 "Source/FreeRTOS/include/task.h"
 
#line 75 "Source/FreeRTOS/include/task.h"


#line 85 "Source/FreeRTOS/include/task.h"
 
struct tskTaskControlBlock;  
typedef struct tskTaskControlBlock * TaskHandle_t;


#line 92 "Source/FreeRTOS/include/task.h"
 
typedef BaseType_t (* TaskHookFunction_t)( void * );

 
typedef enum
{
    eRunning = 0,  
    eReady,        
    eBlocked,      
    eSuspended,    
    eDeleted,      
    eInvalid       
} eTaskState;

 
typedef enum
{
    eNoAction = 0,             
    eSetBits,                  
    eIncrement,                
    eSetValueWithOverwrite,    
    eSetValueWithoutOverwrite  
} eNotifyAction;


#line 118 "Source/FreeRTOS/include/task.h"
 
typedef struct xTIME_OUT
{
    BaseType_t xOverflowCount;
    TickType_t xTimeOnEntering;
} TimeOut_t;


#line 127 "Source/FreeRTOS/include/task.h"
 
typedef struct xMEMORY_REGION
{
    void * pvBaseAddress;
    uint32_t ulLengthInBytes;
    uint32_t ulParameters;
} MemoryRegion_t;


#line 137 "Source/FreeRTOS/include/task.h"
 
typedef struct xTASK_PARAMETERS
{
    TaskFunction_t pvTaskCode;
    const char * pcName;  
    uint16_t  usStackDepth;
    void * pvParameters;
    UBaseType_t uxPriority;
    StackType_t * puxStackBuffer;
    MemoryRegion_t xRegions[ 1  ];
#line 148 "Source/FreeRTOS/include/task.h"
#line 150 "Source/FreeRTOS/include/task.h"
} TaskParameters_t;


#line 153 "Source/FreeRTOS/include/task.h"
 
typedef struct xTASK_STATUS
{
    TaskHandle_t xHandle;                          
    const char * pcTaskName;                         
    UBaseType_t xTaskNumber;                       
    eTaskState eCurrentState;                      
    UBaseType_t uxCurrentPriority;                 
    UBaseType_t uxBasePriority;                    
    uint32_t  ulRunTimeCounter;  
    StackType_t * pxStackBase;                     
#line 165 "Source/FreeRTOS/include/task.h"
#line 168 "Source/FreeRTOS/include/task.h"
    uint16_t  usStackHighWaterMark;   
} TaskStatus_t;

 
typedef enum
{
    eAbortSleep = 0,            
    eStandardSleep,             
#line 177 "Source/FreeRTOS/include/task.h"
        eNoTasksWaitingTimeout  
#line 179 "Source/FreeRTOS/include/task.h"
} eSleepModeStatus;


#line 185 "Source/FreeRTOS/include/task.h"
 
#line 187 "Source/FreeRTOS/include/task.h"


#line 195 "Source/FreeRTOS/include/task.h"
 
#line 197 "Source/FreeRTOS/include/task.h"


#line 209 "Source/FreeRTOS/include/task.h"
 
#line 211 "Source/FreeRTOS/include/task.h"
#line 212 "Source/FreeRTOS/include/task.h"


#line 224 "Source/FreeRTOS/include/task.h"
 
#line 226 "Source/FreeRTOS/include/task.h"
#line 227 "Source/FreeRTOS/include/task.h"


#line 235 "Source/FreeRTOS/include/task.h"
 
#line 237 "Source/FreeRTOS/include/task.h"


#line 245 "Source/FreeRTOS/include/task.h"
 
#line 247 "Source/FreeRTOS/include/task.h"


#line 250 "Source/FreeRTOS/include/task.h"
 
#line 252 "Source/FreeRTOS/include/task.h"
#line 253 "Source/FreeRTOS/include/task.h"
#line 254 "Source/FreeRTOS/include/task.h"



#line 258 "Source/FreeRTOS/include/task.h"
 


#line 353 "Source/FreeRTOS/include/task.h"
 
#line 355 "Source/FreeRTOS/include/task.h"
    BaseType_t xTaskCreate( TaskFunction_t pxTaskCode,
                            const char * const pcName,  
                            const uint16_t  usStackDepth,
                            void * const pvParameters,
                            UBaseType_t uxPriority,
                            TaskHandle_t * const pxCreatedTask ) ;
#line 362 "Source/FreeRTOS/include/task.h"


#line 470 "Source/FreeRTOS/include/task.h"
 
#line 472 "Source/FreeRTOS/include/task.h"
#line 480 "Source/FreeRTOS/include/task.h"


#line 553 "Source/FreeRTOS/include/task.h"
 
#line 555 "Source/FreeRTOS/include/task.h"
#line 558 "Source/FreeRTOS/include/task.h"


#line 643 "Source/FreeRTOS/include/task.h"
 
#line 645 "Source/FreeRTOS/include/task.h"
#line 648 "Source/FreeRTOS/include/task.h"


#line 695 "Source/FreeRTOS/include/task.h"
 
void vTaskAllocateMPURegions( TaskHandle_t xTask,
                              const MemoryRegion_t * const pxRegions ) ;


#line 739 "Source/FreeRTOS/include/task.h"
 
void vTaskDelete( TaskHandle_t xTaskToDelete ) ;


#line 744 "Source/FreeRTOS/include/task.h"
 


#line 793 "Source/FreeRTOS/include/task.h"
 
void vTaskDelay( const TickType_t xTicksToDelay ) ;


#line 860 "Source/FreeRTOS/include/task.h"
 
BaseType_t xTaskDelayUntil( TickType_t * const pxPreviousWakeTime,
                            const TickType_t xTimeIncrement ) ;


#line 867 "Source/FreeRTOS/include/task.h"
 

#line 871 "Source/FreeRTOS/include/task.h"
#line 872 "Source/FreeRTOS/include/task.h"



#line 903 "Source/FreeRTOS/include/task.h"
 
BaseType_t xTaskAbortDelay( TaskHandle_t xTask ) ;


#line 952 "Source/FreeRTOS/include/task.h"
 
UBaseType_t uxTaskPriorityGet( const TaskHandle_t xTask ) ;


#line 962 "Source/FreeRTOS/include/task.h"
 
UBaseType_t uxTaskPriorityGetFromISR( const TaskHandle_t xTask ) ;


#line 982 "Source/FreeRTOS/include/task.h"
 
eTaskState eTaskGetState( TaskHandle_t xTask ) ;


#line 1040 "Source/FreeRTOS/include/task.h"
 
void vTaskGetInfo( TaskHandle_t xTask,
                   TaskStatus_t * pxTaskStatus,
                   BaseType_t xGetFreeStackSpace,
                   eTaskState eState ) ;


#line 1087 "Source/FreeRTOS/include/task.h"
 
void vTaskPrioritySet( TaskHandle_t xTask,
                       UBaseType_t uxNewPriority ) ;


#line 1141 "Source/FreeRTOS/include/task.h"
 
void vTaskSuspend( TaskHandle_t xTaskToSuspend ) ;


#line 1192 "Source/FreeRTOS/include/task.h"
 
void vTaskResume( TaskHandle_t xTaskToResume ) ;


#line 1223 "Source/FreeRTOS/include/task.h"
 
BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume ) ;


#line 1228 "Source/FreeRTOS/include/task.h"
 


#line 1258 "Source/FreeRTOS/include/task.h"
 
void vTaskStartScheduler( void ) ;


#line 1316 "Source/FreeRTOS/include/task.h"
 
void vTaskEndScheduler( void ) ;


#line 1369 "Source/FreeRTOS/include/task.h"
 
void vTaskSuspendAll( void ) ;


#line 1425 "Source/FreeRTOS/include/task.h"
 
BaseType_t xTaskResumeAll( void ) ;


#line 1430 "Source/FreeRTOS/include/task.h"
 


#line 1442 "Source/FreeRTOS/include/task.h"
 
TickType_t xTaskGetTickCount( void ) ;


#line 1460 "Source/FreeRTOS/include/task.h"
 
TickType_t xTaskGetTickCountFromISR( void ) ;


#line 1476 "Source/FreeRTOS/include/task.h"
 
UBaseType_t uxTaskGetNumberOfTasks( void ) ;


#line 1491 "Source/FreeRTOS/include/task.h"
 
char * pcTaskGetName( TaskHandle_t xTaskToQuery ) ;  


#line 1509 "Source/FreeRTOS/include/task.h"
 
TaskHandle_t xTaskGetHandle( const char * pcNameToQuery ) ;  


#line 1538 "Source/FreeRTOS/include/task.h"
 
UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask ) ;


#line 1567 "Source/FreeRTOS/include/task.h"
 
uint16_t  uxTaskGetStackHighWaterMark2( TaskHandle_t xTask ) ;


#line 1575 "Source/FreeRTOS/include/task.h"
 

#line 1578 "Source/FreeRTOS/include/task.h"

#line 1588 "Source/FreeRTOS/include/task.h"

#line 1601 "Source/FreeRTOS/include/task.h"

#line 1612 "Source/FreeRTOS/include/task.h"
#line 1615 "Source/FreeRTOS/include/task.h"
#line 1616 "Source/FreeRTOS/include/task.h"

#line 1618 "Source/FreeRTOS/include/task.h"

#line 1623 "Source/FreeRTOS/include/task.h"
#line 1631 "Source/FreeRTOS/include/task.h"

#line 1633 "Source/FreeRTOS/include/task.h"

#line 1646 "Source/FreeRTOS/include/task.h"
#line 1651 "Source/FreeRTOS/include/task.h"

#line 1653 "Source/FreeRTOS/include/task.h"

#line 1661 "Source/FreeRTOS/include/task.h"
#line 1665 "Source/FreeRTOS/include/task.h"

#line 1667 "Source/FreeRTOS/include/task.h"

#line 1680 "Source/FreeRTOS/include/task.h"
#line 1685 "Source/FreeRTOS/include/task.h"


#line 1698 "Source/FreeRTOS/include/task.h"
 
BaseType_t xTaskCallApplicationTaskHook( TaskHandle_t xTask,
                                         void * pvParameter ) ;


#line 1708 "Source/FreeRTOS/include/task.h"
 
TaskHandle_t xTaskGetIdleTaskHandle( void ) ;


#line 1807 "Source/FreeRTOS/include/task.h"
 
UBaseType_t uxTaskGetSystemState( TaskStatus_t * const pxTaskStatusArray,
                                  const UBaseType_t uxArraySize,
                                  uint32_t  * const pulTotalRunTime ) ;


#line 1860 "Source/FreeRTOS/include/task.h"
 
void vTaskList( char * pcWriteBuffer ) ;  


#line 1916 "Source/FreeRTOS/include/task.h"
 
void vTaskGetRunTimeStats( char * pcWriteBuffer ) ;  


#line 1956 "Source/FreeRTOS/include/task.h"
 
uint32_t  ulTaskGetIdleRunTimeCounter( void ) ;
uint32_t  ulTaskGetIdleRunTimePercent( void ) ;


#line 2067 "Source/FreeRTOS/include/task.h"
 
BaseType_t xTaskGenericNotify( TaskHandle_t xTaskToNotify,
                               UBaseType_t uxIndexToNotify,
                               uint32_t ulValue,
                               eNotifyAction eAction,
                               uint32_t * pulPreviousNotificationValue ) ;

#line 2074 "Source/FreeRTOS/include/task.h"
#line 2075 "Source/FreeRTOS/include/task.h"

#line 2076 "Source/FreeRTOS/include/task.h"
#line 2077 "Source/FreeRTOS/include/task.h"


#line 2101 "Source/FreeRTOS/include/task.h"
 

#line 2103 "Source/FreeRTOS/include/task.h"
#line 2104 "Source/FreeRTOS/include/task.h"

#line 2105 "Source/FreeRTOS/include/task.h"
#line 2106 "Source/FreeRTOS/include/task.h"


#line 2219 "Source/FreeRTOS/include/task.h"
 
BaseType_t xTaskGenericNotifyFromISR( TaskHandle_t xTaskToNotify,
                                      UBaseType_t uxIndexToNotify,
                                      uint32_t ulValue,
                                      eNotifyAction eAction,
                                      uint32_t * pulPreviousNotificationValue,
                                      BaseType_t * pxHigherPriorityTaskWoken ) ;

#line 2227 "Source/FreeRTOS/include/task.h"
#line 2228 "Source/FreeRTOS/include/task.h"

#line 2229 "Source/FreeRTOS/include/task.h"
#line 2230 "Source/FreeRTOS/include/task.h"


#line 2254 "Source/FreeRTOS/include/task.h"
 

#line 2256 "Source/FreeRTOS/include/task.h"
#line 2257 "Source/FreeRTOS/include/task.h"

#line 2258 "Source/FreeRTOS/include/task.h"
#line 2259 "Source/FreeRTOS/include/task.h"


#line 2363 "Source/FreeRTOS/include/task.h"
 
BaseType_t xTaskGenericNotifyWait( UBaseType_t uxIndexToWaitOn,
                                   uint32_t ulBitsToClearOnEntry,
                                   uint32_t ulBitsToClearOnExit,
                                   uint32_t * pulNotificationValue,
                                   TickType_t xTicksToWait ) ;

#line 2370 "Source/FreeRTOS/include/task.h"
#line 2371 "Source/FreeRTOS/include/task.h"

#line 2372 "Source/FreeRTOS/include/task.h"
#line 2373 "Source/FreeRTOS/include/task.h"


#line 2445 "Source/FreeRTOS/include/task.h"
 

#line 2447 "Source/FreeRTOS/include/task.h"
#line 2448 "Source/FreeRTOS/include/task.h"

#line 2449 "Source/FreeRTOS/include/task.h"
#line 2450 "Source/FreeRTOS/include/task.h"


#line 2529 "Source/FreeRTOS/include/task.h"
 
void vTaskGenericNotifyGiveFromISR( TaskHandle_t xTaskToNotify,
                                    UBaseType_t uxIndexToNotify,
                                    BaseType_t * pxHigherPriorityTaskWoken ) ;

#line 2534 "Source/FreeRTOS/include/task.h"
#line 2535 "Source/FreeRTOS/include/task.h"

#line 2536 "Source/FreeRTOS/include/task.h"
#line 2537 "Source/FreeRTOS/include/task.h"


#line 2635 "Source/FreeRTOS/include/task.h"
 
uint32_t ulTaskGenericNotifyTake( UBaseType_t uxIndexToWaitOn,
                                  BaseType_t xClearCountOnExit,
                                  TickType_t xTicksToWait ) ;

#line 2640 "Source/FreeRTOS/include/task.h"
#line 2641 "Source/FreeRTOS/include/task.h"

#line 2642 "Source/FreeRTOS/include/task.h"
#line 2643 "Source/FreeRTOS/include/task.h"


#line 2700 "Source/FreeRTOS/include/task.h"
 
BaseType_t xTaskGenericNotifyStateClear( TaskHandle_t xTask,
                                         UBaseType_t uxIndexToClear ) ;

#line 2704 "Source/FreeRTOS/include/task.h"
#line 2705 "Source/FreeRTOS/include/task.h"

#line 2706 "Source/FreeRTOS/include/task.h"
#line 2707 "Source/FreeRTOS/include/task.h"


#line 2765 "Source/FreeRTOS/include/task.h"
 
uint32_t ulTaskGenericNotifyValueClear( TaskHandle_t xTask,
                                        UBaseType_t uxIndexToClear,
                                        uint32_t ulBitsToClear ) ;

#line 2770 "Source/FreeRTOS/include/task.h"
#line 2771 "Source/FreeRTOS/include/task.h"

#line 2772 "Source/FreeRTOS/include/task.h"
#line 2773 "Source/FreeRTOS/include/task.h"


#line 2787 "Source/FreeRTOS/include/task.h"
 
void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut ) ;


#line 2872 "Source/FreeRTOS/include/task.h"
 
BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut,
                                 TickType_t * const pxTicksToWait ) ;


#line 2901 "Source/FreeRTOS/include/task.h"
 
BaseType_t xTaskCatchUpTicks( TickType_t xTicksToCatchUp ) ;



#line 2907 "Source/FreeRTOS/include/task.h"
 


#line 2923 "Source/FreeRTOS/include/task.h"
 
BaseType_t xTaskIncrementTick( void ) ;


#line 2956 "Source/FreeRTOS/include/task.h"
 
void vTaskPlaceOnEventList( List_t * const pxEventList,
                            const TickType_t xTicksToWait ) ;
void vTaskPlaceOnUnorderedEventList( List_t * pxEventList,
                                     const TickType_t xItemValue,
                                     const TickType_t xTicksToWait ) ;


#line 2973 "Source/FreeRTOS/include/task.h"
 
void vTaskPlaceOnEventListRestricted( List_t * const pxEventList,
                                      TickType_t xTicksToWait,
                                      const BaseType_t xWaitIndefinitely ) ;


#line 3001 "Source/FreeRTOS/include/task.h"
 
BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList ) ;
void vTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem,
                                        const TickType_t xItemValue ) ;


#line 3013 "Source/FreeRTOS/include/task.h"
 
 void vTaskSwitchContext( void ) ;


#line 3019 "Source/FreeRTOS/include/task.h"
 
TickType_t uxTaskResetEventItemValue( void ) ;


#line 3024 "Source/FreeRTOS/include/task.h"
 
TaskHandle_t xTaskGetCurrentTaskHandle( void ) ;


#line 3030 "Source/FreeRTOS/include/task.h"
 
void vTaskMissedYield( void ) ;


#line 3036 "Source/FreeRTOS/include/task.h"
 
BaseType_t xTaskGetSchedulerState( void ) ;


#line 3042 "Source/FreeRTOS/include/task.h"
 
BaseType_t xTaskPriorityInherit( TaskHandle_t const pxMutexHolder ) ;


#line 3048 "Source/FreeRTOS/include/task.h"
 
BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder ) ;


#line 3058 "Source/FreeRTOS/include/task.h"
 
void vTaskPriorityDisinheritAfterTimeout( TaskHandle_t const pxMutexHolder,
                                          UBaseType_t uxHighestPriorityWaitingTask ) ;


#line 3064 "Source/FreeRTOS/include/task.h"
 
UBaseType_t uxTaskGetTaskNumber( TaskHandle_t xTask ) ;


#line 3070 "Source/FreeRTOS/include/task.h"
 
void vTaskSetTaskNumber( TaskHandle_t xTask,
                         const UBaseType_t uxHandle ) ;


#line 3081 "Source/FreeRTOS/include/task.h"
 
void vTaskStepTick( TickType_t xTicksToJump ) ;


#line 3097 "Source/FreeRTOS/include/task.h"
 
eSleepModeStatus eTaskConfirmSleepModeStatus( void ) ;


#line 3103 "Source/FreeRTOS/include/task.h"
 
TaskHandle_t pvTaskIncrementMutexHeldCount( void ) ;


#line 3109 "Source/FreeRTOS/include/task.h"
 
void vTaskInternalSetTimeOutState( TimeOut_t * const pxTimeOut ) ;


 
#line 3117 "Source/FreeRTOS/include/task.h"
 
#line 3119 "Source/FreeRTOS/include/task.h"
#line 40 "Source/FreeRTOS/tasks.c"

#line 1 "Source/FreeRTOS/include/timers.h"

#line 27 "Source/FreeRTOS/include/timers.h"
 



#line 32 "Source/FreeRTOS/include/timers.h"

#line 36 "Source/FreeRTOS/include/timers.h"


#line 38 "Source/FreeRTOS/include/timers.h"
 
#line 1 "Source/FreeRTOS/include/task.h"

#line 27 "Source/FreeRTOS/include/task.h"
 


#line 36 "Source/FreeRTOS/include/task.h"
#line 43 "Source/FreeRTOS/include/task.h"

#line 47 "Source/FreeRTOS/include/task.h"

#line 55 "Source/FreeRTOS/include/task.h"

#line 62 "Source/FreeRTOS/include/task.h"

#line 73 "Source/FreeRTOS/include/task.h"

#line 85 "Source/FreeRTOS/include/task.h"

#line 92 "Source/FreeRTOS/include/task.h"

#line 118 "Source/FreeRTOS/include/task.h"

#line 127 "Source/FreeRTOS/include/task.h"

#line 137 "Source/FreeRTOS/include/task.h"
#line 148 "Source/FreeRTOS/include/task.h"
#line 150 "Source/FreeRTOS/include/task.h"

#line 153 "Source/FreeRTOS/include/task.h"
#line 165 "Source/FreeRTOS/include/task.h"
#line 168 "Source/FreeRTOS/include/task.h"
#line 177 "Source/FreeRTOS/include/task.h"
#line 179 "Source/FreeRTOS/include/task.h"

#line 185 "Source/FreeRTOS/include/task.h"

#line 195 "Source/FreeRTOS/include/task.h"

#line 209 "Source/FreeRTOS/include/task.h"

#line 224 "Source/FreeRTOS/include/task.h"

#line 235 "Source/FreeRTOS/include/task.h"

#line 245 "Source/FreeRTOS/include/task.h"

#line 250 "Source/FreeRTOS/include/task.h"

#line 258 "Source/FreeRTOS/include/task.h"

#line 353 "Source/FreeRTOS/include/task.h"
#line 355 "Source/FreeRTOS/include/task.h"
#line 362 "Source/FreeRTOS/include/task.h"

#line 470 "Source/FreeRTOS/include/task.h"
#line 472 "Source/FreeRTOS/include/task.h"
#line 480 "Source/FreeRTOS/include/task.h"

#line 553 "Source/FreeRTOS/include/task.h"
#line 555 "Source/FreeRTOS/include/task.h"
#line 558 "Source/FreeRTOS/include/task.h"

#line 643 "Source/FreeRTOS/include/task.h"
#line 645 "Source/FreeRTOS/include/task.h"
#line 648 "Source/FreeRTOS/include/task.h"

#line 695 "Source/FreeRTOS/include/task.h"

#line 739 "Source/FreeRTOS/include/task.h"

#line 744 "Source/FreeRTOS/include/task.h"

#line 793 "Source/FreeRTOS/include/task.h"

#line 860 "Source/FreeRTOS/include/task.h"

#line 867 "Source/FreeRTOS/include/task.h"

#line 871 "Source/FreeRTOS/include/task.h"

#line 903 "Source/FreeRTOS/include/task.h"

#line 952 "Source/FreeRTOS/include/task.h"

#line 962 "Source/FreeRTOS/include/task.h"

#line 982 "Source/FreeRTOS/include/task.h"

#line 1040 "Source/FreeRTOS/include/task.h"

#line 1087 "Source/FreeRTOS/include/task.h"

#line 1141 "Source/FreeRTOS/include/task.h"

#line 1192 "Source/FreeRTOS/include/task.h"

#line 1223 "Source/FreeRTOS/include/task.h"

#line 1228 "Source/FreeRTOS/include/task.h"

#line 1258 "Source/FreeRTOS/include/task.h"

#line 1316 "Source/FreeRTOS/include/task.h"

#line 1369 "Source/FreeRTOS/include/task.h"

#line 1425 "Source/FreeRTOS/include/task.h"

#line 1430 "Source/FreeRTOS/include/task.h"

#line 1442 "Source/FreeRTOS/include/task.h"

#line 1460 "Source/FreeRTOS/include/task.h"

#line 1476 "Source/FreeRTOS/include/task.h"

#line 1491 "Source/FreeRTOS/include/task.h"

#line 1509 "Source/FreeRTOS/include/task.h"

#line 1538 "Source/FreeRTOS/include/task.h"

#line 1567 "Source/FreeRTOS/include/task.h"

#line 1575 "Source/FreeRTOS/include/task.h"
#line 1578 "Source/FreeRTOS/include/task.h"

#line 1588 "Source/FreeRTOS/include/task.h"

#line 1601 "Source/FreeRTOS/include/task.h"

#line 1612 "Source/FreeRTOS/include/task.h"
#line 1615 "Source/FreeRTOS/include/task.h"
#line 1616 "Source/FreeRTOS/include/task.h"
#line 1618 "Source/FreeRTOS/include/task.h"

#line 1623 "Source/FreeRTOS/include/task.h"
#line 1631 "Source/FreeRTOS/include/task.h"
#line 1633 "Source/FreeRTOS/include/task.h"

#line 1646 "Source/FreeRTOS/include/task.h"
#line 1651 "Source/FreeRTOS/include/task.h"
#line 1653 "Source/FreeRTOS/include/task.h"

#line 1661 "Source/FreeRTOS/include/task.h"
#line 1665 "Source/FreeRTOS/include/task.h"
#line 1667 "Source/FreeRTOS/include/task.h"

#line 1680 "Source/FreeRTOS/include/task.h"
#line 1685 "Source/FreeRTOS/include/task.h"

#line 1698 "Source/FreeRTOS/include/task.h"

#line 1708 "Source/FreeRTOS/include/task.h"

#line 1807 "Source/FreeRTOS/include/task.h"

#line 1860 "Source/FreeRTOS/include/task.h"

#line 1916 "Source/FreeRTOS/include/task.h"

#line 1956 "Source/FreeRTOS/include/task.h"

#line 2067 "Source/FreeRTOS/include/task.h"

#line 2074 "Source/FreeRTOS/include/task.h"

#line 2076 "Source/FreeRTOS/include/task.h"

#line 2101 "Source/FreeRTOS/include/task.h"

#line 2103 "Source/FreeRTOS/include/task.h"

#line 2105 "Source/FreeRTOS/include/task.h"

#line 2219 "Source/FreeRTOS/include/task.h"

#line 2227 "Source/FreeRTOS/include/task.h"

#line 2229 "Source/FreeRTOS/include/task.h"

#line 2254 "Source/FreeRTOS/include/task.h"

#line 2256 "Source/FreeRTOS/include/task.h"

#line 2258 "Source/FreeRTOS/include/task.h"

#line 2363 "Source/FreeRTOS/include/task.h"

#line 2370 "Source/FreeRTOS/include/task.h"

#line 2372 "Source/FreeRTOS/include/task.h"

#line 2445 "Source/FreeRTOS/include/task.h"

#line 2447 "Source/FreeRTOS/include/task.h"

#line 2449 "Source/FreeRTOS/include/task.h"

#line 2529 "Source/FreeRTOS/include/task.h"

#line 2534 "Source/FreeRTOS/include/task.h"

#line 2536 "Source/FreeRTOS/include/task.h"

#line 2635 "Source/FreeRTOS/include/task.h"

#line 2640 "Source/FreeRTOS/include/task.h"

#line 2642 "Source/FreeRTOS/include/task.h"

#line 2700 "Source/FreeRTOS/include/task.h"

#line 2704 "Source/FreeRTOS/include/task.h"

#line 2706 "Source/FreeRTOS/include/task.h"

#line 2765 "Source/FreeRTOS/include/task.h"

#line 2770 "Source/FreeRTOS/include/task.h"

#line 2772 "Source/FreeRTOS/include/task.h"

#line 2787 "Source/FreeRTOS/include/task.h"

#line 2872 "Source/FreeRTOS/include/task.h"

#line 2901 "Source/FreeRTOS/include/task.h"

#line 2907 "Source/FreeRTOS/include/task.h"

#line 2923 "Source/FreeRTOS/include/task.h"

#line 2956 "Source/FreeRTOS/include/task.h"

#line 2973 "Source/FreeRTOS/include/task.h"

#line 3001 "Source/FreeRTOS/include/task.h"

#line 3013 "Source/FreeRTOS/include/task.h"

#line 3019 "Source/FreeRTOS/include/task.h"

#line 3024 "Source/FreeRTOS/include/task.h"

#line 3030 "Source/FreeRTOS/include/task.h"

#line 3036 "Source/FreeRTOS/include/task.h"

#line 3042 "Source/FreeRTOS/include/task.h"

#line 3048 "Source/FreeRTOS/include/task.h"

#line 3058 "Source/FreeRTOS/include/task.h"

#line 3064 "Source/FreeRTOS/include/task.h"

#line 3070 "Source/FreeRTOS/include/task.h"

#line 3081 "Source/FreeRTOS/include/task.h"

#line 3097 "Source/FreeRTOS/include/task.h"

#line 3103 "Source/FreeRTOS/include/task.h"

#line 3109 "Source/FreeRTOS/include/task.h"
#line 3117 "Source/FreeRTOS/include/task.h"
#line 3119 "Source/FreeRTOS/include/task.h"
#line 39 "Source/FreeRTOS/include/timers.h"

 

 
#line 46 "Source/FreeRTOS/include/timers.h"
 


#line 50 "Source/FreeRTOS/include/timers.h"
 


#line 56 "Source/FreeRTOS/include/timers.h"
 
#line 58 "Source/FreeRTOS/include/timers.h"
#line 59 "Source/FreeRTOS/include/timers.h"
#line 60 "Source/FreeRTOS/include/timers.h"
#line 61 "Source/FreeRTOS/include/timers.h"
#line 62 "Source/FreeRTOS/include/timers.h"
#line 63 "Source/FreeRTOS/include/timers.h"
#line 64 "Source/FreeRTOS/include/timers.h"
#line 65 "Source/FreeRTOS/include/timers.h"

#line 67 "Source/FreeRTOS/include/timers.h"
#line 68 "Source/FreeRTOS/include/timers.h"
#line 69 "Source/FreeRTOS/include/timers.h"
#line 70 "Source/FreeRTOS/include/timers.h"
#line 71 "Source/FreeRTOS/include/timers.h"



#line 78 "Source/FreeRTOS/include/timers.h"
 
struct tmrTimerControl;  
typedef struct tmrTimerControl * TimerHandle_t;


#line 84 "Source/FreeRTOS/include/timers.h"
 
typedef void (* TimerCallbackFunction_t)( TimerHandle_t xTimer );


#line 90 "Source/FreeRTOS/include/timers.h"
 
typedef void (* PendedFunction_t)( void *,
                                   uint32_t );


#line 230 "Source/FreeRTOS/include/timers.h"
 
#line 232 "Source/FreeRTOS/include/timers.h"
    TimerHandle_t xTimerCreate( const char * const pcTimerName,  
                                const TickType_t xTimerPeriodInTicks,
                                const BaseType_t xAutoReload,
                                void * const pvTimerID,
                                TimerCallbackFunction_t pxCallbackFunction ) ;
#line 238 "Source/FreeRTOS/include/timers.h"


#line 360 "Source/FreeRTOS/include/timers.h"
 
#line 362 "Source/FreeRTOS/include/timers.h"
#line 369 "Source/FreeRTOS/include/timers.h"


#line 389 "Source/FreeRTOS/include/timers.h"
 
void * pvTimerGetTimerID( const TimerHandle_t xTimer ) ;


#line 410 "Source/FreeRTOS/include/timers.h"
 
void vTimerSetTimerID( TimerHandle_t xTimer,
                       void * pvNewID ) ;


#line 448 "Source/FreeRTOS/include/timers.h"
 
BaseType_t xTimerIsTimerActive( TimerHandle_t xTimer ) ;


#line 456 "Source/FreeRTOS/include/timers.h"
 
TaskHandle_t xTimerGetTimerDaemonTaskHandle( void ) ;


#line 508 "Source/FreeRTOS/include/timers.h"
 

#line 510 "Source/FreeRTOS/include/timers.h"
#line 511 "Source/FreeRTOS/include/timers.h"


#line 551 "Source/FreeRTOS/include/timers.h"
 

#line 553 "Source/FreeRTOS/include/timers.h"
#line 554 "Source/FreeRTOS/include/timers.h"


#line 632 "Source/FreeRTOS/include/timers.h"
 

#line 634 "Source/FreeRTOS/include/timers.h"
#line 635 "Source/FreeRTOS/include/timers.h"


#line 671 "Source/FreeRTOS/include/timers.h"
 

#line 673 "Source/FreeRTOS/include/timers.h"
#line 674 "Source/FreeRTOS/include/timers.h"


#line 796 "Source/FreeRTOS/include/timers.h"
 

#line 798 "Source/FreeRTOS/include/timers.h"
#line 799 "Source/FreeRTOS/include/timers.h"


#line 883 "Source/FreeRTOS/include/timers.h"
 

#line 885 "Source/FreeRTOS/include/timers.h"
#line 886 "Source/FreeRTOS/include/timers.h"


#line 947 "Source/FreeRTOS/include/timers.h"
 

#line 949 "Source/FreeRTOS/include/timers.h"
#line 950 "Source/FreeRTOS/include/timers.h"


#line 1021 "Source/FreeRTOS/include/timers.h"
 

#line 1023 "Source/FreeRTOS/include/timers.h"
#line 1024 "Source/FreeRTOS/include/timers.h"


#line 1108 "Source/FreeRTOS/include/timers.h"
 

#line 1110 "Source/FreeRTOS/include/timers.h"
#line 1111 "Source/FreeRTOS/include/timers.h"



#line 1200 "Source/FreeRTOS/include/timers.h"
 
BaseType_t xTimerPendFunctionCallFromISR( PendedFunction_t xFunctionToPend,
                                          void * pvParameter1,
                                          uint32_t ulParameter2,
                                          BaseType_t * pxHigherPriorityTaskWoken ) ;


#line 1237 "Source/FreeRTOS/include/timers.h"
 
BaseType_t xTimerPendFunctionCall( PendedFunction_t xFunctionToPend,
                                   void * pvParameter1,
                                   uint32_t ulParameter2,
                                   TickType_t xTicksToWait ) ;


#line 1251 "Source/FreeRTOS/include/timers.h"
 
const char * pcTimerGetName( TimerHandle_t xTimer ) ;  


#line 1268 "Source/FreeRTOS/include/timers.h"
 
void vTimerSetReloadMode( TimerHandle_t xTimer,
                          const BaseType_t xAutoReload ) ;


#line 1283 "Source/FreeRTOS/include/timers.h"
 
BaseType_t xTimerGetReloadMode( TimerHandle_t xTimer ) ;


#line 1297 "Source/FreeRTOS/include/timers.h"
 
UBaseType_t uxTimerGetReloadMode( TimerHandle_t xTimer ) ;


#line 1308 "Source/FreeRTOS/include/timers.h"
 
TickType_t xTimerGetPeriod( TimerHandle_t xTimer ) ;


#line 1323 "Source/FreeRTOS/include/timers.h"
 
TickType_t xTimerGetExpiryTime( TimerHandle_t xTimer ) ;


#line 1329 "Source/FreeRTOS/include/timers.h"
 
BaseType_t xTimerCreateTimerTask( void ) ;
BaseType_t xTimerGenericCommand( TimerHandle_t xTimer,
                                 const BaseType_t xCommandID,
                                 const TickType_t xOptionalValue,
                                 BaseType_t * const pxHigherPriorityTaskWoken,
                                 const TickType_t xTicksToWait ) ;

#line 1338 "Source/FreeRTOS/include/timers.h"
    void vTimerSetTimerNumber( TimerHandle_t xTimer,
                               UBaseType_t uxTimerNumber ) ;
    UBaseType_t uxTimerGetTimerNumber( TimerHandle_t xTimer ) ;
#line 1342 "Source/FreeRTOS/include/timers.h"

#line 1344 "Source/FreeRTOS/include/timers.h"

#line 1357 "Source/FreeRTOS/include/timers.h"
#line 1363 "Source/FreeRTOS/include/timers.h"

 
#line 1368 "Source/FreeRTOS/include/timers.h"
 
#line 1370 "Source/FreeRTOS/include/timers.h"
#line 41 "Source/FreeRTOS/tasks.c"

#line 1 "Source/FreeRTOS/include/stack_macros.h"

#line 27 "Source/FreeRTOS/include/stack_macros.h"
 


#line 31 "Source/FreeRTOS/include/stack_macros.h"


#line 44 "Source/FreeRTOS/include/stack_macros.h"
 

 


#line 51 "Source/FreeRTOS/include/stack_macros.h"
 

#line 54 "Source/FreeRTOS/include/stack_macros.h"
#line 55 "Source/FreeRTOS/include/stack_macros.h"

#line 57 "Source/FreeRTOS/include/stack_macros.h"

#line 66 "Source/FreeRTOS/include/stack_macros.h"
#line 69 "Source/FreeRTOS/include/stack_macros.h"
 

#line 72 "Source/FreeRTOS/include/stack_macros.h"

#line 82 "Source/FreeRTOS/include/stack_macros.h"
#line 85 "Source/FreeRTOS/include/stack_macros.h"
 

#line 88 "Source/FreeRTOS/include/stack_macros.h"

#line 101 "Source/FreeRTOS/include/stack_macros.h"
#line 104 "Source/FreeRTOS/include/stack_macros.h"
 

#line 107 "Source/FreeRTOS/include/stack_macros.h"

#line 125 "Source/FreeRTOS/include/stack_macros.h"
#line 128 "Source/FreeRTOS/include/stack_macros.h"
 

 

#line 133 "Source/FreeRTOS/include/stack_macros.h"
#line 134 "Source/FreeRTOS/include/stack_macros.h"



#line 138 "Source/FreeRTOS/include/stack_macros.h"
#line 42 "Source/FreeRTOS/tasks.c"



#line 47 "Source/FreeRTOS/tasks.c"
 
#line 49 "Source/FreeRTOS/tasks.c"


#line 51 "Source/FreeRTOS/tasks.c"
 
#line 53 "Source/FreeRTOS/tasks.c"


#line 57 "Source/FreeRTOS/tasks.c"
 
#line 1 "Source/FreeRTOS/portable/PIC18F/stdio.h"
#line 58 "Source/FreeRTOS/tasks.c"

#line 60 "Source/FreeRTOS/tasks.c"

#line 62 "Source/FreeRTOS/tasks.c"

#line 64 "Source/FreeRTOS/tasks.c"
#line 67 "Source/FreeRTOS/tasks.c"
#line 68 "Source/FreeRTOS/tasks.c"
#line 69 "Source/FreeRTOS/tasks.c"

 
#line 72 "Source/FreeRTOS/tasks.c"
#line 73 "Source/FreeRTOS/tasks.c"
#line 74 "Source/FreeRTOS/tasks.c"


#line 78 "Source/FreeRTOS/tasks.c"
 
#line 80 "Source/FreeRTOS/tasks.c"

 
#line 83 "Source/FreeRTOS/tasks.c"
#line 84 "Source/FreeRTOS/tasks.c"
#line 85 "Source/FreeRTOS/tasks.c"


#line 88 "Source/FreeRTOS/tasks.c"
 
#line 90 "Source/FreeRTOS/tasks.c"
#line 91 "Source/FreeRTOS/tasks.c"
#line 92 "Source/FreeRTOS/tasks.c"
#line 94 "Source/FreeRTOS/tasks.c"


#line 97 "Source/FreeRTOS/tasks.c"
 
#line 99 "Source/FreeRTOS/tasks.c"
#line 100 "Source/FreeRTOS/tasks.c"
#line 101 "Source/FreeRTOS/tasks.c"
#line 102 "Source/FreeRTOS/tasks.c"
#line 103 "Source/FreeRTOS/tasks.c"


#line 107 "Source/FreeRTOS/tasks.c"
 
#line 111 "Source/FreeRTOS/tasks.c"


#line 113 "Source/FreeRTOS/tasks.c"
 

#line 116 "Source/FreeRTOS/tasks.c"
#line 117 "Source/FreeRTOS/tasks.c"

#line 119 "Source/FreeRTOS/tasks.c"


#line 122 "Source/FreeRTOS/tasks.c"
 


#line 125 "Source/FreeRTOS/tasks.c"
 

#line 132 "Source/FreeRTOS/tasks.c"
#line 133 "Source/FreeRTOS/tasks.c"

 


#line 150 "Source/FreeRTOS/tasks.c"
#line 151 "Source/FreeRTOS/tasks.c"

 


#line 156 "Source/FreeRTOS/tasks.c"
 
#line 158 "Source/FreeRTOS/tasks.c"
#line 159 "Source/FreeRTOS/tasks.c"

#line 161 "Source/FreeRTOS/tasks.c"

#line 164 "Source/FreeRTOS/tasks.c"

#line 179 "Source/FreeRTOS/tasks.c"

#line 185 "Source/FreeRTOS/tasks.c"

#line 192 "Source/FreeRTOS/tasks.c"
#line 195 "Source/FreeRTOS/tasks.c"

 

 

#line 211 "Source/FreeRTOS/tasks.c"
#line 212 "Source/FreeRTOS/tasks.c"

 


#line 218 "Source/FreeRTOS/tasks.c"
 

#line 220 "Source/FreeRTOS/tasks.c"
#line 221 "Source/FreeRTOS/tasks.c"
    { if( ( ( pxTCB )->uxPriority ) > uxTopReadyPriority ) { uxTopReadyPriority = ( ( pxTCB )->uxPriority ); } } ;                                                    { ListItem_t * const pxIndex = ( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ) )->pxIndex;  ;  ; ( &( ( pxTCB )->xStateListItem ) )->pxNext = pxIndex; ( &( ( pxTCB )->xStateListItem ) )->pxPrevious = pxIndex->pxPrevious; pxIndex->pxPrevious->pxNext = ( &( ( pxTCB )->xStateListItem ) ); pxIndex->pxPrevious = ( &( ( pxTCB )->xStateListItem ) ); ( &( ( pxTCB )->xStateListItem ) )->pvContainer  = ( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ) ); ( ( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ) )->uxNumberOfItems )++; } ;      
#line 223 "Source/FreeRTOS/tasks.c"

 
            
            


#line 233 "Source/FreeRTOS/tasks.c"
 
#line 235 "Source/FreeRTOS/tasks.c"


#line 243 "Source/FreeRTOS/tasks.c"
 
#line 245 "Source/FreeRTOS/tasks.c"
#line 246 "Source/FreeRTOS/tasks.c"
#line 247 "Source/FreeRTOS/tasks.c"
#line 249 "Source/FreeRTOS/tasks.c"


    void debu_uint2a(uint8_t ch,uint16_t dt);




#line 259 "Source/FreeRTOS/tasks.c"
 
typedef struct tskTaskControlBlock        
{
    volatile StackType_t * pxTopOfStack;  

#line 265 "Source/FreeRTOS/tasks.c"
#line 267 "Source/FreeRTOS/tasks.c"

    ListItem_t xStateListItem;                   
    ListItem_t xEventListItem;                   
    UBaseType_t uxPriority;                      
    StackType_t * pxStack;                       
    char pcTaskName[ ( 4 )  ];    

#line 275 "Source/FreeRTOS/tasks.c"
        StackType_t * pxEndOfStack;  
#line 277 "Source/FreeRTOS/tasks.c"

#line 279 "Source/FreeRTOS/tasks.c"
#line 281 "Source/FreeRTOS/tasks.c"

#line 283 "Source/FreeRTOS/tasks.c"
        UBaseType_t uxTCBNumber;   
        UBaseType_t uxTaskNumber;  
#line 286 "Source/FreeRTOS/tasks.c"

#line 288 "Source/FreeRTOS/tasks.c"
#line 291 "Source/FreeRTOS/tasks.c"

#line 293 "Source/FreeRTOS/tasks.c"
#line 295 "Source/FreeRTOS/tasks.c"

#line 297 "Source/FreeRTOS/tasks.c"
#line 299 "Source/FreeRTOS/tasks.c"

#line 301 "Source/FreeRTOS/tasks.c"
#line 303 "Source/FreeRTOS/tasks.c"

#line 305 "Source/FreeRTOS/tasks.c"
#line 307 "Source/FreeRTOS/tasks.c"

#line 309 "Source/FreeRTOS/tasks.c"
        volatile uint32_t ulNotifiedValue[ 1  ];
        volatile uint8_t ucNotifyState[ 1  ];
#line 312 "Source/FreeRTOS/tasks.c"

    
#line 314 "Source/FreeRTOS/tasks.c"
 
#line 316 "Source/FreeRTOS/tasks.c"
#line 318 "Source/FreeRTOS/tasks.c"

#line 320 "Source/FreeRTOS/tasks.c"
#line 322 "Source/FreeRTOS/tasks.c"

#line 324 "Source/FreeRTOS/tasks.c"
#line 326 "Source/FreeRTOS/tasks.c"
} tskTCB;


#line 329 "Source/FreeRTOS/tasks.c"
 
typedef tskTCB TCB_t;


#line 333 "Source/FreeRTOS/tasks.c"
 
  TCB_t * volatile pxCurrentTCB = 0 ;


#line 339 "Source/FreeRTOS/tasks.c"
 
 static List_t pxReadyTasksLists[ ( 3 )  ];  
 static List_t xDelayedTaskList1;                          
 static List_t xDelayedTaskList2;                          
 static List_t * volatile pxDelayedTaskList;               
 static List_t * volatile pxOverflowDelayedTaskList;       
 static List_t xPendingReadyList;                          

#line 348 "Source/FreeRTOS/tasks.c"

     static List_t xTasksWaitingTermination;  
     static volatile UBaseType_t uxDeletedTasksWaitingCleanUp = ( UBaseType_t ) 0U;

#line 353 "Source/FreeRTOS/tasks.c"

#line 355 "Source/FreeRTOS/tasks.c"

     static List_t xSuspendedTaskList;  

#line 359 "Source/FreeRTOS/tasks.c"


#line 361 "Source/FreeRTOS/tasks.c"
 
#line 363 "Source/FreeRTOS/tasks.c"
#line 365 "Source/FreeRTOS/tasks.c"

 
 static volatile UBaseType_t uxCurrentNumberOfTasks = ( UBaseType_t ) 0U;
 static volatile TickType_t xTickCount = ( TickType_t ) 0 ;
 static volatile UBaseType_t uxTopReadyPriority = ( ( UBaseType_t ) 0U ) ;
 static volatile BaseType_t xSchedulerRunning = ( ( BaseType_t ) 0 ) ;
 static volatile TickType_t xPendedTicks = ( TickType_t ) 0U;
 static volatile BaseType_t xYieldPending = ( ( BaseType_t ) 0 ) ;
 static volatile BaseType_t xNumOfOverflows = ( BaseType_t ) 0;
 static UBaseType_t uxTaskNumber = ( UBaseType_t ) 0U;
 static volatile TickType_t xNextTaskUnblockTime = ( TickType_t ) 0U;  
 static TaskHandle_t xIdleTaskHandle = 0 ;                           


#line 380 "Source/FreeRTOS/tasks.c"
 
const volatile UBaseType_t uxTopUsedPriority = ( 3 )  - 1U;


#line 390 "Source/FreeRTOS/tasks.c"
 
 static volatile UBaseType_t uxSchedulerSuspended = ( UBaseType_t ) ( ( BaseType_t ) 0 ) ;

#line 394 "Source/FreeRTOS/tasks.c"

#line 396 "Source/FreeRTOS/tasks.c"
#line 401 "Source/FreeRTOS/tasks.c"

    
    



void __prvAddTaskToReadyList( TCB_t *pxTCB)
{
    ListItem_t  *pxIndex;
    ListItem_t  *pxNewListItem;
    List_t      *pxList;
    

    
    
    
    
    
    if( pxTCB->uxPriority > uxTopReadyPriority ){                                           
        uxTopReadyPriority = pxTCB->uxPriority;    
    }

    
    pxList = &pxReadyTasksLists[ pxTCB->uxPriority ];
    pxNewListItem = &pxTCB->xStateListItem;
        
    pxIndex = pxList->pxIndex;

    
#line 431 "Source/FreeRTOS/tasks.c"
 
    pxNewListItem->pxNext = pxIndex;
    pxNewListItem->pxPrevious = pxIndex->pxPrevious;

    pxIndex->pxPrevious->pxNext = pxNewListItem;
    pxIndex->pxPrevious = pxNewListItem;
    
     
    pxNewListItem->pvContainer  = pxList;
    pxList->uxNumberOfItems ++;
    
    
     
}            
            
            

 

 

 


#line 458 "Source/FreeRTOS/tasks.c"
 
#line 460 "Source/FreeRTOS/tasks.c"

    static BaseType_t prvTaskIsTaskSuspended( const TaskHandle_t xTask ) ;

#line 464 "Source/FreeRTOS/tasks.c"


#line 468 "Source/FreeRTOS/tasks.c"
 
static void prvInitialiseTaskLists( void ) ;


#line 481 "Source/FreeRTOS/tasks.c"
 
static void prvIdleTask( void *pvParameters )  ;


#line 490 "Source/FreeRTOS/tasks.c"
 
#line 492 "Source/FreeRTOS/tasks.c"

    static void prvDeleteTCB( TCB_t * pxTCB ) ;

#line 496 "Source/FreeRTOS/tasks.c"


#line 501 "Source/FreeRTOS/tasks.c"
 
static void prvCheckTasksWaitingTermination( void ) ;


#line 507 "Source/FreeRTOS/tasks.c"
 
static void prvAddCurrentTaskToDelayedList( TickType_t xTicksToWait,
                                            const BaseType_t xCanBlockIndefinitely ) ;


#line 518 "Source/FreeRTOS/tasks.c"
 
#line 520 "Source/FreeRTOS/tasks.c"

    static UBaseType_t prvListTasksWithinSingleList( TaskStatus_t * pxTaskStatusArray,
                                                     List_t * pxList,
                                                     eTaskState eState ) ;

#line 526 "Source/FreeRTOS/tasks.c"


#line 530 "Source/FreeRTOS/tasks.c"
 
#line 532 "Source/FreeRTOS/tasks.c"
#line 537 "Source/FreeRTOS/tasks.c"


#line 542 "Source/FreeRTOS/tasks.c"
 
#line 544 "Source/FreeRTOS/tasks.c"

    static uint16_t  prvTaskCheckFreeStackSpace( const uint8_t * pucStackByte ) ;

#line 548 "Source/FreeRTOS/tasks.c"


#line 557 "Source/FreeRTOS/tasks.c"
 
#line 559 "Source/FreeRTOS/tasks.c"
#line 563 "Source/FreeRTOS/tasks.c"


#line 567 "Source/FreeRTOS/tasks.c"
 
static void prvResetNextTaskUnblockTime( void ) ;

#line 571 "Source/FreeRTOS/tasks.c"


#line 575 "Source/FreeRTOS/tasks.c"
 
    static char * prvWriteNameToBuffer( char * pcBuffer,
                                        const char * pcTaskName ) ;

#line 580 "Source/FreeRTOS/tasks.c"


#line 584 "Source/FreeRTOS/tasks.c"
 
static void prvInitialiseNewTask( TaskFunction_t pxTaskCode,
                                  const char * const pcName,  
                                  const uint32_t ulStackDepth,
                                  void * const pvParameters,
                                  UBaseType_t uxPriority,
                                  TaskHandle_t * const pxCreatedTask,
                                  TCB_t * pxNewTCB,
                                  const MemoryRegion_t * const xRegions ) ;


#line 597 "Source/FreeRTOS/tasks.c"
 
static void prvAddNewTaskToReadyList( TCB_t * pxNewTCB ) ;


#line 604 "Source/FreeRTOS/tasks.c"
 
#line 610 "Source/FreeRTOS/tasks.c"

 

#line 614 "Source/FreeRTOS/tasks.c"
#line 630 "Source/FreeRTOS/tasks.c"

#line 633 "Source/FreeRTOS/tasks.c"
#line 639 "Source/FreeRTOS/tasks.c"

#line 643 "Source/FreeRTOS/tasks.c"
#line 649 "Source/FreeRTOS/tasks.c"

#line 651 "Source/FreeRTOS/tasks.c"
#line 655 "Source/FreeRTOS/tasks.c"
#line 668 "Source/FreeRTOS/tasks.c"
 

#line 671 "Source/FreeRTOS/tasks.c"

#line 685 "Source/FreeRTOS/tasks.c"
#line 693 "Source/FreeRTOS/tasks.c"

#line 695 "Source/FreeRTOS/tasks.c"
#line 699 "Source/FreeRTOS/tasks.c"
#line 716 "Source/FreeRTOS/tasks.c"
 

#line 719 "Source/FreeRTOS/tasks.c"

#line 732 "Source/FreeRTOS/tasks.c"
#line 743 "Source/FreeRTOS/tasks.c"

#line 746 "Source/FreeRTOS/tasks.c"
#line 750 "Source/FreeRTOS/tasks.c"
#line 768 "Source/FreeRTOS/tasks.c"
 

#line 771 "Source/FreeRTOS/tasks.c"

    BaseType_t xTaskCreate( TaskFunction_t pxTaskCode,
                            const char * const pcName,  
                            const uint16_t  usStackDepth,
                            void * const pvParameters,
                            UBaseType_t uxPriority,
                            TaskHandle_t * const pxCreatedTask )
    {
        TCB_t * pxNewTCB;
        BaseType_t xReturn;

        
#line 784 "Source/FreeRTOS/tasks.c"
 
#line 786 "Source/FreeRTOS/tasks.c"
        {
            
#line 788 "Source/FreeRTOS/tasks.c"
 
            pxNewTCB = ( TCB_t * ) pvPortMalloc( sizeof( TCB_t ) );

            if( pxNewTCB != 0  )
            {
                Xprintf("xTaskCreate 001 pxNewTCB=%p\r\n",pxNewTCB);
                memset( ( void * ) pxNewTCB, 0x00, sizeof( TCB_t ) );

                
#line 798 "Source/FreeRTOS/tasks.c"
 
                pxNewTCB->pxStack = ( StackType_t * ) pvPortMalloc ( ( ( ( size_t ) usStackDepth ) * sizeof( StackType_t ) ) );  

                Xprintf("xTaskCreate 002 pxStack=%p\r\n",pxNewTCB->pxStack);
                if( pxNewTCB->pxStack == 0  )
                {
                     
                    vPortFree( pxNewTCB );
                    pxNewTCB = 0 ;
                }
            }
        }
#line 811 "Source/FreeRTOS/tasks.c"

#line 832 "Source/FreeRTOS/tasks.c"
#line 842 "Source/FreeRTOS/tasks.c"

        if( pxNewTCB != 0  )
        {
#line 846 "Source/FreeRTOS/tasks.c"

#line 849 "Source/FreeRTOS/tasks.c"
#line 853 "Source/FreeRTOS/tasks.c"
            Xprintf("xTaskCreate 003\r\n");

            prvInitialiseNewTask( pxTaskCode, pcName, ( uint32_t ) usStackDepth, pvParameters, uxPriority, pxCreatedTask, pxNewTCB, 0  );
            prvAddNewTaskToReadyList( pxNewTCB );
            xReturn = ( ( ( BaseType_t ) 1 )  ) ;
            
        }
        else
        {
            xReturn = ( -1 ) ;
        }

        return xReturn;
    }

#line 869 "Source/FreeRTOS/tasks.c"
 

static void prvInitialiseNewTask( TaskFunction_t pxTaskCode,
                                  const char * const pcName,  
                                  const uint32_t ulStackDepth,
                                  void * const pvParameters,
                                  UBaseType_t uxPriority,
                                  TaskHandle_t * const pxCreatedTask,
                                  TCB_t * pxNewTCB,
                                  const MemoryRegion_t * const xRegions )
{
    StackType_t * pxTopOfStack;
    UBaseType_t x;

    Xprintf("prvInitialiseNewTask 001 pxNewTCB=%p\r\n",pxNewTCB);
    Xprintf("prvInitialiseNewTask 002 pxStack=%p\r\n",pxNewTCB->pxStack);

#line 887 "Source/FreeRTOS/tasks.c"
#line 900 "Source/FreeRTOS/tasks.c"

     
#line 903 "Source/FreeRTOS/tasks.c"
    {
         
        ( void ) memset( pxNewTCB->pxStack, ( int ) ( 0xa5U ) , ( size_t ) ulStackDepth * sizeof( StackType_t ) );
    }
#line 908 "Source/FreeRTOS/tasks.c"

    
#line 912 "Source/FreeRTOS/tasks.c"
 
#line 914 "Source/FreeRTOS/tasks.c"
#line 922 "Source/FreeRTOS/tasks.c"

#line 924 "Source/FreeRTOS/tasks.c"
#line 928 "Source/FreeRTOS/tasks.c"
#line 930 "Source/FreeRTOS/tasks.c"
    {
        Xprintf("prvInitialiseNewTask 002\r\n");
        pxTopOfStack = pxNewTCB->pxStack;

         
        if( ( ( ( ( uint32_t  ) pxNewTCB->pxStack & ( uint32_t  ) ( 0x0000 )  ) == 0UL ) ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 935 ) ;

         
        pxNewTCB->pxEndOfStack = pxNewTCB->pxStack + ( ulStackDepth - ( uint32_t ) 1 );
    }
#line 941 "Source/FreeRTOS/tasks.c"

     
    if( pcName != 0  )
    {
        Xprintf("prvInitialiseNewTask 003\r\n");
        for( x = ( UBaseType_t ) 0; x < ( UBaseType_t ) ( 4 ) ; x++ )
        {
            pxNewTCB->pcTaskName[ x ] = pcName[ x ];

            
#line 953 "Source/FreeRTOS/tasks.c"
 
            if( pcName[ x ] == ( char ) 0x00 )
            {
                break;
            }
            else
            {
                 ;
            }
        }

        
#line 965 "Source/FreeRTOS/tasks.c"
 
        pxNewTCB->pcTaskName[ ( 4 )  - 1 ] = '\0';
    }
    else
    {
         ;
    }

     
    if( ( uxPriority < ( 3 )  ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 974 ) ;

    if( uxPriority >= ( UBaseType_t ) ( 3 )  )
    {
        uxPriority = ( UBaseType_t ) ( 3 )  - ( UBaseType_t ) 1U;
    }
    else
    {
         ;
    }

    pxNewTCB->uxPriority = uxPriority;
#line 987 "Source/FreeRTOS/tasks.c"
#line 991 "Source/FreeRTOS/tasks.c"

    vListInitialiseItem( &( pxNewTCB->xStateListItem ) );
    vListInitialiseItem( &( pxNewTCB->xEventListItem ) );

    
#line 996 "Source/FreeRTOS/tasks.c"
 
    ( ( &( pxNewTCB->xStateListItem ) )->pvOwner = ( void * ) ( pxNewTCB ) ) ;

     
    ( ( &( pxNewTCB->xEventListItem ) )->xItemValue = ( ( TickType_t ) ( 3 )  - ( TickType_t ) uxPriority ) ) ;  
    ( ( &( pxNewTCB->xEventListItem ) )->pvOwner = ( void * ) ( pxNewTCB ) ) ;

#line 1004 "Source/FreeRTOS/tasks.c"
#line 1008 "Source/FreeRTOS/tasks.c"
    {
         
        ( void ) xRegions;
    }
#line 1013 "Source/FreeRTOS/tasks.c"

#line 1015 "Source/FreeRTOS/tasks.c"
#line 1020 "Source/FreeRTOS/tasks.c"

    
#line 1024 "Source/FreeRTOS/tasks.c"
 
#line 1026 "Source/FreeRTOS/tasks.c"

#line 1029 "Source/FreeRTOS/tasks.c"
#line 1031 "Source/FreeRTOS/tasks.c"
#line 1033 "Source/FreeRTOS/tasks.c"
#line 1037 "Source/FreeRTOS/tasks.c"
#line 1041 "Source/FreeRTOS/tasks.c"
#line 1043 "Source/FreeRTOS/tasks.c"
#line 1047 "Source/FreeRTOS/tasks.c"
#line 1049 "Source/FreeRTOS/tasks.c"
    {
        
#line 1052 "Source/FreeRTOS/tasks.c"
 
#line 1054 "Source/FreeRTOS/tasks.c"
#line 1056 "Source/FreeRTOS/tasks.c"
#line 1060 "Source/FreeRTOS/tasks.c"
#line 1064 "Source/FreeRTOS/tasks.c"
#line 1066 "Source/FreeRTOS/tasks.c"
        {
            pxNewTCB->pxTopOfStack = pxPortInitialiseStack( pxTopOfStack, pxTaskCode, pvParameters );
        }
#line 1070 "Source/FreeRTOS/tasks.c"
    }
#line 1072 "Source/FreeRTOS/tasks.c"

    if( pxCreatedTask != 0  )
    {
        
#line 1076 "Source/FreeRTOS/tasks.c"
 
        *pxCreatedTask = ( TaskHandle_t ) pxNewTCB;
    }
    else
    {
         ;
    }
}
 

    

void taskInfo( TCB_t *tcb )
{   
    Xprintf("\r\n");
    
    Xprintf("******************\r\n");
    Xprintf("***  taskInfo  ***\r\n",(void *)tcb);
    Xprintf("******************\r\n");
    Xprintf("pxNewTCB       = %p\r\n",(void *)tcb);
    Xprintf("pcTaskName     = %s\r\n", &tcb->pcTaskName[0]);
    Xprintf(" uxPriority    = %d\r\n", tcb->uxPriority);
    Xprintf(" pxStack       = %p\r\n", (void *)tcb->pxStack);
    Xprintf(" pxTopOfStack  = %p\r\n", (void *)tcb->pxTopOfStack);
    Xprintf(" pxEndOfStack  = %p\r\n", (void *)tcb->pxEndOfStack);
    
    Xprintf("xStateListItem = %p\r\n", (void *)&tcb->xStateListItem);
    Xprintf(" pvContainer   = %p\r\n", (void *)tcb->xStateListItem.pvContainer);
    Xprintf(" pvOwner       = %p\r\n", (void *)tcb->xStateListItem.pvOwner);
    Xprintf(" pxNext        = %p\r\n", (void *)tcb->xStateListItem.pxNext);
    Xprintf(" pxPrevious    = %p\r\n", (void *)tcb->xStateListItem.pxPrevious);
    Xprintf(" xItemValue  　= %x\r\n", tcb->xStateListItem.xItemValue);
    
    
    Xprintf("xEventListItem = %p\r\n", (void *)&tcb->xEventListItem);
    Xprintf(" pvContainer 　= %p\r\n", (void *)tcb->xEventListItem.pvContainer);
    Xprintf(" pvOwner     　= %p\r\n", (void *)tcb->xEventListItem.pvOwner);
    Xprintf(" pxNext     　 = %p\r\n", (void *)tcb->xEventListItem.pxNext);
    Xprintf(" pxPrevious  　= %p\r\n", (void *)tcb->xEventListItem.pxPrevious);
    Xprintf(" xItemValue    = %x\r\n", tcb->xEventListItem.xItemValue);
    
            
            
#line 1131 "Source/FreeRTOS/tasks.c"
            
}

void pxReadyTasksLists_info(void)
{
    uint8_t     i,j;
    ListItem_t  *xlist;
 
    
    
    Xprintf("\r\n");
    Xprintf("***************************\r\n");
    Xprintf("*** pxReadyTasksLists[] ***\r\n");
    Xprintf("***************************\r\n");
    for(i = 0; i<( 3 ) ; i++ ){
        Xprintf("PRIORITY = %d --------------------------\r\n",i);
        Xprintf("TASK NUM = %d\r\n", pxReadyTasksLists[i].uxNumberOfItems);
        Xprintf("xListEnd          =%p\r\n", (void *)&pxReadyTasksLists[i].xListEnd　);
        Xprintf("  +-- xItemValue  =%d\r\n", (void *)pxReadyTasksLists[i].xListEnd.xItemValue　);
        xlist = pxReadyTasksLists[i].xListEnd.pxNext;
        Xprintf("  +-- pxNext      =%p\r\n", (void *)xlist　);
        Xprintf("  +-- pxPrevious  =%p\r\n", (void *)pxReadyTasksLists[i].xListEnd.pxPrevious　);
        Xprintf("\r\n");
        Xprintf("pxIndex           =%p\r\n", (void *)pxReadyTasksLists[i].pxIndex　);
        Xprintf("  +-- xItemValue  =%d\r\n", (void *)pxReadyTasksLists[i].pxIndex->xItemValue　);
        Xprintf("  +-- pxNext      =%p\r\n", (void *)xlist　);
        Xprintf("  +-- pxPrevious  =%p\r\n", (void *)pxReadyTasksLists[i].pxIndex->pxPrevious　);
        Xprintf("  +-- pvOwner     =%p\r\n", (void *)pxReadyTasksLists[i].pxIndex->pvOwner　);
        
        Xprintf("\r\n");
      

        j = 1;
        while( (void *)xlist != (void *)&pxReadyTasksLists[i].xListEnd ){
            Xprintf("xListEnd.pxNext(%d) %p\r\n", j,(void *)xlist);
            Xprintf("  +-- xItemValue  =%d\r\n", (void *)xlist->xItemValue　);
            Xprintf("  +-- pxNext      =%p\r\n", (void *)xlist->pxNext);
            Xprintf("  +-- pxPrevious  =%p\r\n", (void *)xlist->pxPrevious);
            Xprintf("  +-- pvOwner     =%p\r\n", (void *)xlist->pvOwner);
            Xprintf("  +-- pxContainer =%p\r\n", (void *)xlist->pvContainer 　);
            xlist = xlist->pxNext; 
            j ++;
        }
        Xprintf("\r\n");

        Xprintf("xListEnd.pxNext(%d) %p\r\n", j,(void *)xlist);
        Xprintf("  +-- xItemValue  =%d\r\n", (void *)xlist->xItemValue　);
        Xprintf("  +-- pxNext      =%p\r\n", (void *)xlist->pxNext);
        Xprintf("  +-- pxPrevious  =%p\r\n", (void *)xlist->pxPrevious);
        Xprintf("  +-- pvOwner     =%p\r\n", (void *)xlist->pvOwner);
        Xprintf("  +-- pxContainer =%p\r\n", (void *)xlist->pvContainer 　);
            
    }
}


static void prvAddNewTaskToReadyList( TCB_t * pxNewTCB )
{    
    taskInfo( pxNewTCB );
    
    
     
    POSTINC1 = INTCON; INTCONbits.GIE_GIEH = 0;  ;
    {
        uxCurrentNumberOfTasks++;
         Xprintf("uxCurrentNumberOfTasks=%d\r\n",uxCurrentNumberOfTasks);
 
        if( pxCurrentTCB == 0  )
        {
            Xprintf("prvAddNewTaskToReadyList　02\r\n");
             
            pxCurrentTCB = pxNewTCB;

            if( uxCurrentNumberOfTasks == ( UBaseType_t ) 1 )
            {
                
#line 1207 "Source/FreeRTOS/tasks.c"
 
                prvInitialiseTaskLists();
            }
            else
            {
                 ;
            }
        }
        else
        {
            Xprintf("prvAddNewTaskToReadyList　03\r\n");
            
#line 1219 "Source/FreeRTOS/tasks.c"
 
            if( xSchedulerRunning == ( ( BaseType_t ) 0 )  )
            {
                if( pxCurrentTCB->uxPriority <= pxNewTCB->uxPriority )
                {
                    pxCurrentTCB = pxNewTCB;
                }
                else
                {
                     ;
                }
            }
            else
            {
                 ;
            }
        }

        uxTaskNumber++;

#line 1240 "Source/FreeRTOS/tasks.c"
        {
             
            pxNewTCB->uxTCBNumber = uxTaskNumber;
        }
#line 1245 "Source/FreeRTOS/tasks.c"
         ;       

         ; \ ;

        ( void ) ( pxNewTCB ) ;
    }
    asm( "MOVF	POSTDEC1, 1, 0" ); if( INDF1 & 0x80  ) { INTCONbits.GIE_GIEH = 1; ; }  ;

    if( xSchedulerRunning != ( ( BaseType_t ) 0 )  )
    {
         
        if( pxCurrentTCB->uxPriority < pxNewTCB->uxPriority )
        {
            vPortYield()  ;
        }
        else
        {
             ;
        }
    }
    else
    {
         ;
    }
 
   taskInfo( pxCurrentTCB );
   
   vTaskList(0);
 }
 

#line 1277 "Source/FreeRTOS/tasks.c"

    void vTaskDelete( TaskHandle_t xTaskToDelete )
    {
        TCB_t * pxTCB;

        POSTINC1 = INTCON; INTCONbits.GIE_GIEH = 0;  ;
        {
            
#line 1285 "Source/FreeRTOS/tasks.c"
 
            pxTCB = ( ( ( xTaskToDelete ) == 0  ) ? pxCurrentTCB : ( xTaskToDelete ) ) ;

             
            if( uxListRemove( &( pxTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
            {
                 ;
            }
            else
            {
                 ;
            }

             
            if( ( ( &( pxTCB->xEventListItem ) )->pvContainer  )  != 0  )
            {
                ( void ) uxListRemove( &( pxTCB->xEventListItem ) );
            }
            else
            {
                 ;
            }

            
#line 1311 "Source/FreeRTOS/tasks.c"
 
            uxTaskNumber++;

            if( pxTCB == pxCurrentTCB )
            {
                
#line 1320 "Source/FreeRTOS/tasks.c"
 
                vListInsertEnd( &xTasksWaitingTermination, &( pxTCB->xStateListItem ) );

                
#line 1325 "Source/FreeRTOS/tasks.c"
 
                ++uxDeletedTasksWaitingCleanUp;

                
#line 1329 "Source/FreeRTOS/tasks.c"
 
                 ;

                
#line 1336 "Source/FreeRTOS/tasks.c"
 
                 ;
            }
            else
            {
                --uxCurrentNumberOfTasks;
                 ;

                
#line 1345 "Source/FreeRTOS/tasks.c"
 
                prvResetNextTaskUnblockTime();
            }
        }
        asm( "MOVF	POSTDEC1, 1, 0" ); if( INDF1 & 0x80  ) { INTCONbits.GIE_GIEH = 1; ; }  ;

        
#line 1353 "Source/FreeRTOS/tasks.c"
 
        if( pxTCB != pxCurrentTCB )
        {
            prvDeleteTCB( pxTCB );
        }

        
#line 1360 "Source/FreeRTOS/tasks.c"
 
        if( xSchedulerRunning != ( ( BaseType_t ) 0 )  )
        {
            if( pxTCB == pxCurrentTCB )
            {
                if( ( uxSchedulerSuspended == 0 ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 1365 ) ;
                vPortYield() ;
            }
            else
            {
                 ;
            }
        }
    }

#line 1376 "Source/FreeRTOS/tasks.c"
 

#line 1379 "Source/FreeRTOS/tasks.c"

    BaseType_t xTaskDelayUntil( TickType_t * const pxPreviousWakeTime,
                                const TickType_t xTimeIncrement )
    {
        TickType_t xTimeToWake;
        BaseType_t xAlreadyYielded, xShouldDelay = ( ( BaseType_t ) 0 ) ;

        if( ( pxPreviousWakeTime ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 1386 ) ;
        if( ( ( xTimeIncrement > 0U ) ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 1387 ) ;
        if( ( uxSchedulerSuspended == 0 ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 1388 ) ;

        vTaskSuspendAll();
        {
            
#line 1393 "Source/FreeRTOS/tasks.c"
 
            const TickType_t xConstTickCount = xTickCount;

             
            xTimeToWake = *pxPreviousWakeTime + xTimeIncrement;

            if( xConstTickCount < *pxPreviousWakeTime )
            {
                
#line 1405 "Source/FreeRTOS/tasks.c"
 
                if( ( xTimeToWake < *pxPreviousWakeTime ) && ( xTimeToWake > xConstTickCount ) )
                {
                    xShouldDelay = ( ( BaseType_t ) 1 ) ;
                }
                else
                {
                     ;
                }
            }
            else
            {
                
#line 1419 "Source/FreeRTOS/tasks.c"
 
                if( ( xTimeToWake < *pxPreviousWakeTime ) || ( xTimeToWake > xConstTickCount ) )
                {
                    xShouldDelay = ( ( BaseType_t ) 1 ) ;
                }
                else
                {
                     ;
                }
            }

             
            *pxPreviousWakeTime = xTimeToWake;

            if( xShouldDelay != ( ( BaseType_t ) 0 )  )
            {
                 ;

                
#line 1438 "Source/FreeRTOS/tasks.c"
 
                prvAddCurrentTaskToDelayedList( xTimeToWake - xConstTickCount, ( ( BaseType_t ) 0 )  );
            }
            else
            {
                 ;
            }
        }
        xAlreadyYielded = xTaskResumeAll();

        
#line 1449 "Source/FreeRTOS/tasks.c"
 
        if( xAlreadyYielded == ( ( BaseType_t ) 0 )  )
        {
            vPortYield() ;
        }
        else
        {
             ;
        }

        return xShouldDelay;
    }

#line 1463 "Source/FreeRTOS/tasks.c"
 

#line 1466 "Source/FreeRTOS/tasks.c"

    void vTaskDelay( const TickType_t xTicksToDelay )
    {
        BaseType_t xAlreadyYielded = ( ( BaseType_t ) 0 ) ;

         
        if( xTicksToDelay > ( TickType_t ) 0U )
        {
            if( ( uxSchedulerSuspended == 0 ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 1474 ) ;
            vTaskSuspendAll();
            {
                 ;

                
#line 1485 "Source/FreeRTOS/tasks.c"
 
                prvAddCurrentTaskToDelayedList( xTicksToDelay, ( ( BaseType_t ) 0 )  );
            }
            xAlreadyYielded = xTaskResumeAll();
        }
        else
        {
             ;
        }

        
#line 1496 "Source/FreeRTOS/tasks.c"
 
        if( xAlreadyYielded == ( ( BaseType_t ) 0 )  )
        {
            vPortYield() ;
        }
        else
        {
             ;
        }
    }

#line 1508 "Source/FreeRTOS/tasks.c"
 

#line 1511 "Source/FreeRTOS/tasks.c"

    eTaskState eTaskGetState( TaskHandle_t xTask )
    {
        eTaskState eReturn;
        List_t const * pxStateList;
        List_t const * pxDelayedList;
        List_t const * pxOverflowedDelayedList;
        const TCB_t * const pxTCB = xTask;

        if( ( pxTCB ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 1520 ) ;

        if( pxTCB == pxCurrentTCB )
        {
             
            eReturn = eRunning;
        }
        else
        {
            POSTINC1 = INTCON; INTCONbits.GIE_GIEH = 0;  ;
            {
                pxStateList = ( ( &( pxTCB->xStateListItem ) )->pvContainer  ) ;
                pxDelayedList = pxDelayedTaskList;
                pxOverflowedDelayedList = pxOverflowDelayedTaskList;
            }
            asm( "MOVF	POSTDEC1, 1, 0" ); if( INDF1 & 0x80  ) { INTCONbits.GIE_GIEH = 1; ; }  ;

            if( ( pxStateList == pxDelayedList ) || ( pxStateList == pxOverflowedDelayedList ) )
            {
                
#line 1540 "Source/FreeRTOS/tasks.c"
 
                eReturn = eBlocked;
            }

#line 1545 "Source/FreeRTOS/tasks.c"
                else if( pxStateList == &xSuspendedTaskList )
                {
                    
#line 1549 "Source/FreeRTOS/tasks.c"
 
                    if( ( ( &( pxTCB->xEventListItem ) )->pvContainer  )  == 0  )
                    {
#line 1553 "Source/FreeRTOS/tasks.c"
                        {
                            BaseType_t x;

                            
#line 1560 "Source/FreeRTOS/tasks.c"
 
                            eReturn = eSuspended;

                            for( x = 0; x < 1 ; x++ )
                            {
                                if( pxTCB->ucNotifyState[ x ] == ( ( uint8_t ) 1 )  )
                                {
                                    eReturn = eBlocked;
                                    break;
                                }
                            }
                        }
#line 1573 "Source/FreeRTOS/tasks.c"
#line 1577 "Source/FreeRTOS/tasks.c"
                    }
                    else
                    {
                        eReturn = eBlocked;
                    }
                }
#line 1584 "Source/FreeRTOS/tasks.c"

#line 1586 "Source/FreeRTOS/tasks.c"
                else if( ( pxStateList == &xTasksWaitingTermination ) || ( pxStateList == 0  ) )
                {
                    
#line 1590 "Source/FreeRTOS/tasks.c"
 
                    eReturn = eDeleted;
                }
#line 1594 "Source/FreeRTOS/tasks.c"

            else  
            {
                
#line 1598 "Source/FreeRTOS/tasks.c"
 
                eReturn = eReady;
            }
        }

        return eReturn;
    }  

#line 1607 "Source/FreeRTOS/tasks.c"
 

#line 1610 "Source/FreeRTOS/tasks.c"

#line 1619 "Source/FreeRTOS/tasks.c"
#line 1629 "Source/FreeRTOS/tasks.c"
 

#line 1632 "Source/FreeRTOS/tasks.c"

#line 1653 "Source/FreeRTOS/tasks.c"

#line 1659 "Source/FreeRTOS/tasks.c"
#line 1669 "Source/FreeRTOS/tasks.c"
 

#line 1672 "Source/FreeRTOS/tasks.c"

#line 1695 "Source/FreeRTOS/tasks.c"
#line 1701 "Source/FreeRTOS/tasks.c"
#line 1705 "Source/FreeRTOS/tasks.c"
#line 1709 "Source/FreeRTOS/tasks.c"

#line 1713 "Source/FreeRTOS/tasks.c"

#line 1720 "Source/FreeRTOS/tasks.c"

#line 1734 "Source/FreeRTOS/tasks.c"

#line 1741 "Source/FreeRTOS/tasks.c"

#line 1748 "Source/FreeRTOS/tasks.c"

#line 1753 "Source/FreeRTOS/tasks.c"
#line 1757 "Source/FreeRTOS/tasks.c"

#line 1759 "Source/FreeRTOS/tasks.c"
#line 1773 "Source/FreeRTOS/tasks.c"
#line 1777 "Source/FreeRTOS/tasks.c"

#line 1779 "Source/FreeRTOS/tasks.c"

#line 1792 "Source/FreeRTOS/tasks.c"

#line 1797 "Source/FreeRTOS/tasks.c"

#line 1802 "Source/FreeRTOS/tasks.c"

#line 1827 "Source/FreeRTOS/tasks.c"
#line 1835 "Source/FreeRTOS/tasks.c"
 

#line 1838 "Source/FreeRTOS/tasks.c"

    void vTaskSuspend( TaskHandle_t xTaskToSuspend )
    {
        TCB_t * pxTCB;

        POSTINC1 = INTCON; INTCONbits.GIE_GIEH = 0;  ;
        {
            
#line 1846 "Source/FreeRTOS/tasks.c"
 
            pxTCB = ( ( ( xTaskToSuspend ) == 0  ) ? pxCurrentTCB : ( xTaskToSuspend ) ) ;

             ;

            
#line 1852 "Source/FreeRTOS/tasks.c"
 
            if( uxListRemove( &( pxTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
            {
                 ;
            }
            else
            {
                 ;
            }

             
            if( ( ( &( pxTCB->xEventListItem ) )->pvContainer  )  != 0  )
            {
                ( void ) uxListRemove( &( pxTCB->xEventListItem ) );
            }
            else
            {
                 ;
            }

            vListInsertEnd( &xSuspendedTaskList, &( pxTCB->xStateListItem ) );

#line 1875 "Source/FreeRTOS/tasks.c"
            {
                BaseType_t x;

                for( x = 0; x < 1 ; x++ )
                {
                    if( pxTCB->ucNotifyState[ x ] == ( ( uint8_t ) 1 )  )
                    {
                        
#line 1883 "Source/FreeRTOS/tasks.c"
 
                        pxTCB->ucNotifyState[ x ] = ( ( uint8_t ) 0 ) ;
                    }
                }
            }
#line 1889 "Source/FreeRTOS/tasks.c"
        }
        asm( "MOVF	POSTDEC1, 1, 0" ); if( INDF1 & 0x80  ) { INTCONbits.GIE_GIEH = 1; ; }  ;

        if( xSchedulerRunning != ( ( BaseType_t ) 0 )  )
        {
            
#line 1895 "Source/FreeRTOS/tasks.c"
 
            POSTINC1 = INTCON; INTCONbits.GIE_GIEH = 0;  ;
            {
                prvResetNextTaskUnblockTime();
            }
            asm( "MOVF	POSTDEC1, 1, 0" ); if( INDF1 & 0x80  ) { INTCONbits.GIE_GIEH = 1; ; }  ;
        }
        else
        {
             ;
        }

        if( pxTCB == pxCurrentTCB )
        {
            if( xSchedulerRunning != ( ( BaseType_t ) 0 )  )
            {
                 
                if( ( uxSchedulerSuspended == 0 ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 1912 ) ;
                vPortYield() ;
            }
            else
            {
                
#line 1919 "Source/FreeRTOS/tasks.c"
 
                if( ( ( &xSuspendedTaskList )->uxNumberOfItems )  == uxCurrentNumberOfTasks )  
                {
                    
#line 1925 "Source/FreeRTOS/tasks.c"
 
                    pxCurrentTCB = 0 ;
                }
                else
                {
                    vTaskSwitchContext();
                }
            }
        }
        else
        {
             ;
        }
    }

#line 1941 "Source/FreeRTOS/tasks.c"
 

#line 1944 "Source/FreeRTOS/tasks.c"

    static BaseType_t prvTaskIsTaskSuspended( const TaskHandle_t xTask )
    {
        BaseType_t xReturn = ( ( BaseType_t ) 0 ) ;
        const TCB_t * const pxTCB = xTask;

        
#line 1951 "Source/FreeRTOS/tasks.c"
 

         
        if( ( xTask ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 1954 ) ;

         
        if( ( ( ( &( pxTCB->xStateListItem ) )->pvContainer  == ( &xSuspendedTaskList ) ) ? ( ( ( BaseType_t ) 1 )  ) : ( ( ( BaseType_t ) 0 )  ) )  != ( ( BaseType_t ) 0 )  )
        {
             
            if( ( ( ( &( pxTCB->xEventListItem ) )->pvContainer  == ( &xPendingReadyList ) ) ? ( ( ( BaseType_t ) 1 )  ) : ( ( ( BaseType_t ) 0 )  ) )  == ( ( BaseType_t ) 0 )  )
            {
                
#line 1963 "Source/FreeRTOS/tasks.c"
 
                if( ( ( ( &( pxTCB->xEventListItem ) )->pvContainer  == ( 0  ) ) ? ( ( ( BaseType_t ) 1 )  ) : ( ( ( BaseType_t ) 0 )  ) )  != ( ( BaseType_t ) 0 )  )  
                {
                    xReturn = ( ( BaseType_t ) 1 ) ;
                }
                else
                {
                     ;
                }
            }
            else
            {
                 ;
            }
        }
        else
        {
             ;
        }

        return xReturn;
    }  

#line 1987 "Source/FreeRTOS/tasks.c"
 

#line 1990 "Source/FreeRTOS/tasks.c"

    void vTaskResume( TaskHandle_t xTaskToResume )
    {
        TCB_t * const pxTCB = xTaskToResume;

         
        if( ( xTaskToResume ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 1996 ) ;

        
#line 1999 "Source/FreeRTOS/tasks.c"
 
        if( ( pxTCB != pxCurrentTCB ) && ( pxTCB != 0  ) )
        {
            POSTINC1 = INTCON; INTCONbits.GIE_GIEH = 0;  ;
            {
                if( prvTaskIsTaskSuspended( pxTCB ) != ( ( BaseType_t ) 0 )  )
                {
                     ;

                    
#line 2009 "Source/FreeRTOS/tasks.c"
 
                    ( void ) uxListRemove( &( pxTCB->xStateListItem ) );
                     ; \ ;

                     
                    if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
                    {
                        
#line 2018 "Source/FreeRTOS/tasks.c"
 
                        vPortYield()  ;
                    }
                    else
                    {
                         ;
                    }
                }
                else
                {
                     ;
                }
            }
            asm( "MOVF	POSTDEC1, 1, 0" ); if( INDF1 & 0x80  ) { INTCONbits.GIE_GIEH = 1; ; }  ;
        }
        else
        {
             ;
        }
    }

#line 2040 "Source/FreeRTOS/tasks.c"

 

#line 2044 "Source/FreeRTOS/tasks.c"

    BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume )
    {
        BaseType_t xYieldRequired = ( ( BaseType_t ) 0 ) ;
        TCB_t * const pxTCB = xTaskToResume;
        UBaseType_t uxSavedInterruptStatus;

        if( ( xTaskToResume ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 2051 ) ;

        
#line 2068 "Source/FreeRTOS/tasks.c"
 
         ;

        uxSavedInterruptStatus = 0 ;
        {
            if( prvTaskIsTaskSuspended( pxTCB ) != ( ( BaseType_t ) 0 )  )
            {
                 ;

                 
                if( uxSchedulerSuspended == ( UBaseType_t ) ( ( BaseType_t ) 0 )  )
                {
                    
#line 2081 "Source/FreeRTOS/tasks.c"
 
                    if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
                    {
                        xYieldRequired = ( ( BaseType_t ) 1 ) ;

                        
#line 2088 "Source/FreeRTOS/tasks.c"
 
                        xYieldPending = ( ( BaseType_t ) 1 ) ;
                    }
                    else
                    {
                         ;
                    }

                    ( void ) uxListRemove( &( pxTCB->xStateListItem ) );
                     ; \ ;
                }
                else
                {
                    
#line 2103 "Source/FreeRTOS/tasks.c"
 
                    vListInsertEnd( &( xPendingReadyList ), &( pxTCB->xEventListItem ) );
                }
            }
            else
            {
                 ;
            }
        }
        ( void ) ( uxSavedInterruptStatus ) ;

        return xYieldRequired;
    }

#line 2118 "Source/FreeRTOS/tasks.c"
 

void vTaskStartScheduler( void )
{
    BaseType_t xReturn;

    Xprintf("vTaskStartScheduler(001)\r\n");
     
#line 2127 "Source/FreeRTOS/tasks.c"

#line 2133 "Source/FreeRTOS/tasks.c"
#line 2153 "Source/FreeRTOS/tasks.c"
    {
         
        Xprintf("vTaskStartScheduler(002)\r\n");
        xReturn = xTaskCreate( prvIdleTask,
                               "IDLE" ,
                               ( 128 ) ,
                               ( void * ) 0 ,
                               ( ( UBaseType_t ) 0x00 ) ,   
                               &xIdleTaskHandle );  
        Xprintf("vTaskStartScheduler(002)xReturn=%d \r\n",xReturn);
    }
#line 2165 "Source/FreeRTOS/tasks.c"

#line 2167 "Source/FreeRTOS/tasks.c"
#line 2178 "Source/FreeRTOS/tasks.c"

    if( xReturn == ( ( ( BaseType_t ) 1 )  )  )
    {
        Xprintf("vTaskStartScheduler(003) \r\n");
        
#line 2184 "Source/FreeRTOS/tasks.c"
 
#line 2191 "Source/FreeRTOS/tasks.c"

        
#line 2195 "Source/FreeRTOS/tasks.c"
 
        Xprintf("vTaskStartScheduler(005) \r\n");
        INTCONbits.GIE_GIEH = 0; ;

#line 2200 "Source/FreeRTOS/tasks.c"

#line 2202 "Source/FreeRTOS/tasks.c"
#line 2207 "Source/FreeRTOS/tasks.c"

        xNextTaskUnblockTime = ( TickType_t ) 0xffff ;
        xSchedulerRunning = ( ( BaseType_t ) 1 ) ;
        xTickCount = ( TickType_t ) 0 ;
        Xprintf("vTaskStartScheduler(007) \r\n");

        
#line 2219 "Source/FreeRTOS/tasks.c"
 
         ;

         ;

        
#line 2225 "Source/FreeRTOS/tasks.c"
 
        Xprintf("vTaskStartScheduler(008) \r\n");
        pxReadyTasksLists_info();
        
        xPortStartScheduler();

        
#line 2235 "Source/FreeRTOS/tasks.c"
 
    }
    else
    {
        
#line 2241 "Source/FreeRTOS/tasks.c"
 
        if( ( xReturn != ( -1 )  ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 2242 ) ;
    }

        Xprintf("vTaskStartScheduler(009) \r\n");
    
#line 2247 "Source/FreeRTOS/tasks.c"
 
    ( void ) xIdleTaskHandle;

    
#line 2251 "Source/FreeRTOS/tasks.c"
 
    ( void ) uxTopUsedPriority;
}
 

void vTaskEndScheduler( void )
{
    
#line 2260 "Source/FreeRTOS/tasks.c"
 
    INTCONbits.GIE_GIEH = 0; ;
    xSchedulerRunning = ( ( BaseType_t ) 0 ) ;
    vPortEndScheduler();
}
 

void vTaskSuspendAll( void )
{
    
#line 2272 "Source/FreeRTOS/tasks.c"
 

    
#line 2275 "Source/FreeRTOS/tasks.c"
 
     ;

    
#line 2279 "Source/FreeRTOS/tasks.c"
 
    ++uxSchedulerSuspended;

    
#line 2283 "Source/FreeRTOS/tasks.c"
 
     ;
}
 

#line 2289 "Source/FreeRTOS/tasks.c"

#line 2298 "Source/FreeRTOS/tasks.c"
#line 2300 "Source/FreeRTOS/tasks.c"
#line 2307 "Source/FreeRTOS/tasks.c"

#line 2314 "Source/FreeRTOS/tasks.c"
#line 2321 "Source/FreeRTOS/tasks.c"

#line 2330 "Source/FreeRTOS/tasks.c"

#line 2337 "Source/FreeRTOS/tasks.c"
#line 2349 "Source/FreeRTOS/tasks.c"
 

BaseType_t xTaskResumeAll( void )
{
    TCB_t * pxTCB = 0 ;
    BaseType_t xAlreadyYielded = ( ( BaseType_t ) 0 ) ;

    
#line 2357 "Source/FreeRTOS/tasks.c"
 
    if( ( uxSchedulerSuspended ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 2358 ) ;

    
#line 2364 "Source/FreeRTOS/tasks.c"
 
    POSTINC1 = INTCON; INTCONbits.GIE_GIEH = 0;  ;
    {
        --uxSchedulerSuspended;

        if( uxSchedulerSuspended == ( UBaseType_t ) ( ( BaseType_t ) 0 )  )
        {
            if( uxCurrentNumberOfTasks > ( UBaseType_t ) 0U )
            {
                
#line 2374 "Source/FreeRTOS/tasks.c"
 
                while( ( ( ( &xPendingReadyList )->uxNumberOfItems == ( UBaseType_t ) 0 ) ? ( ( BaseType_t ) 1 )  : ( ( BaseType_t ) 0 )  )  == ( ( BaseType_t ) 0 )  )
                {
                    pxTCB = ( ( &( ( ( &xPendingReadyList ) )->xListEnd ) )->pxNext->pvOwner ) ;  
                    { List_t * const pxList = ( &( pxTCB->xEventListItem ) )->pvContainer ; ( &( pxTCB->xEventListItem ) )->pxNext->pxPrevious = ( &( pxTCB->xEventListItem ) )->pxPrevious; ( &( pxTCB->xEventListItem ) )->pxPrevious->pxNext = ( &( pxTCB->xEventListItem ) )->pxNext; if( pxList->pxIndex == ( &( pxTCB->xEventListItem ) ) ) { pxList->pxIndex = ( &( pxTCB->xEventListItem ) )->pxPrevious; } ( &( pxTCB->xEventListItem ) )->pvContainer  = 0 ; ( pxList->uxNumberOfItems )--; } ;
                     ;
                    { List_t * const pxList = ( &( pxTCB->xStateListItem ) )->pvContainer ; ( &( pxTCB->xStateListItem ) )->pxNext->pxPrevious = ( &( pxTCB->xStateListItem ) )->pxPrevious; ( &( pxTCB->xStateListItem ) )->pxPrevious->pxNext = ( &( pxTCB->xStateListItem ) )->pxNext; if( pxList->pxIndex == ( &( pxTCB->xStateListItem ) ) ) { pxList->pxIndex = ( &( pxTCB->xStateListItem ) )->pxPrevious; } ( &( pxTCB->xStateListItem ) )->pvContainer  = 0 ; ( pxList->uxNumberOfItems )--; } ;
                     ; \ ;

                    
#line 2384 "Source/FreeRTOS/tasks.c"
 
                    if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
                    {
                        xYieldPending = ( ( BaseType_t ) 1 ) ;
                    }
                    else
                    {
                         ;
                    }
                }

                if( pxTCB != 0  )
                {
                    
#line 2402 "Source/FreeRTOS/tasks.c"
 
                    prvResetNextTaskUnblockTime();
                }

                
#line 2409 "Source/FreeRTOS/tasks.c"
 
                {
                    TickType_t xPendedCounts = xPendedTicks;  

                    if( xPendedCounts > ( TickType_t ) 0U )
                    {
                        do
                        {
                            if( xTaskIncrementTick() != ( ( BaseType_t ) 0 )  )
                            {
                                xYieldPending = ( ( BaseType_t ) 1 ) ;
                            }
                            else
                            {
                                 ;
                            }

                            --xPendedCounts;
                        } while( xPendedCounts > ( TickType_t ) 0U );

                        xPendedTicks = 0;
                    }
                    else
                    {
                         ;
                    }
                }

                if( xYieldPending != ( ( BaseType_t ) 0 )  )
                {
#line 2440 "Source/FreeRTOS/tasks.c"
                    {
                        xAlreadyYielded = ( ( BaseType_t ) 1 ) ;
                    }
#line 2444 "Source/FreeRTOS/tasks.c"
                    vPortYield()  ;
                }
                else
                {
                     ;
                }
            }
        }
        else
        {
             ;
        }
    }
    asm( "MOVF	POSTDEC1, 1, 0" ); if( INDF1 & 0x80  ) { INTCONbits.GIE_GIEH = 1; ; }  ;

    return xAlreadyYielded;
}
 

TickType_t xTaskGetTickCount( void )
{
    TickType_t xTicks;

     
    POSTINC1 = INTCON; INTCONbits.GIE_GIEH = 0;  ;
    {
        xTicks = xTickCount;
    }
    asm( "MOVF	POSTDEC1, 1, 0" ); if( INDF1 & 0x80  ) { INTCONbits.GIE_GIEH = 1; ; }  ;

    return xTicks;
}
 

TickType_t xTaskGetTickCountFromISR( void )
{
    TickType_t xReturn;
    UBaseType_t uxSavedInterruptStatus;

    
#line 2496 "Source/FreeRTOS/tasks.c"
 
     ;

    uxSavedInterruptStatus = 0  ;
    {
        xReturn = xTickCount;
    }
    ( void ) ( ( uxSavedInterruptStatus ) )  ;

    return xReturn;
}
 

UBaseType_t uxTaskGetNumberOfTasks( void )
{
    
#line 2512 "Source/FreeRTOS/tasks.c"
 
    return uxCurrentNumberOfTasks;
}
 

char * pcTaskGetName( TaskHandle_t xTaskToQuery )  
{
    TCB_t * pxTCB;

    
#line 2522 "Source/FreeRTOS/tasks.c"
 
    pxTCB = ( ( ( xTaskToQuery ) == 0  ) ? pxCurrentTCB : ( xTaskToQuery ) ) ;
    if( ( pxTCB ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 2524 ) ;
    return &( pxTCB->pcTaskName[ 0 ] );
}
 

#line 2530 "Source/FreeRTOS/tasks.c"

#line 2552 "Source/FreeRTOS/tasks.c"

#line 2567 "Source/FreeRTOS/tasks.c"
#line 2598 "Source/FreeRTOS/tasks.c"
 

#line 2601 "Source/FreeRTOS/tasks.c"
#line 2637 "Source/FreeRTOS/tasks.c"
#line 2645 "Source/FreeRTOS/tasks.c"
#line 2647 "Source/FreeRTOS/tasks.c"
#line 2655 "Source/FreeRTOS/tasks.c"
#line 2662 "Source/FreeRTOS/tasks.c"
 

#line 2665 "Source/FreeRTOS/tasks.c"

    UBaseType_t uxTaskGetSystemState( TaskStatus_t * const pxTaskStatusArray,
                                      const UBaseType_t uxArraySize,
                                      uint32_t  * const pulTotalRunTime )
    {
        UBaseType_t uxTask = 0, uxQueue = ( 3 ) ;

        vTaskSuspendAll();
        {
             
            if( uxArraySize >= uxCurrentNumberOfTasks )
            {
                
#line 2678 "Source/FreeRTOS/tasks.c"
 
                do
                {
                    uxQueue--;
                    uxTask += prvListTasksWithinSingleList( &( pxTaskStatusArray[ uxTask ] ), &( pxReadyTasksLists[ uxQueue ] ), eReady );
                } while( uxQueue > ( UBaseType_t ) ( ( UBaseType_t ) 0U )  );  

                
#line 2686 "Source/FreeRTOS/tasks.c"
 
                uxTask += prvListTasksWithinSingleList( &( pxTaskStatusArray[ uxTask ] ), ( List_t * ) pxDelayedTaskList, eBlocked );
                uxTask += prvListTasksWithinSingleList( &( pxTaskStatusArray[ uxTask ] ), ( List_t * ) pxOverflowDelayedTaskList, eBlocked );

#line 2691 "Source/FreeRTOS/tasks.c"
                {
                    
#line 2693 "Source/FreeRTOS/tasks.c"
 
                    uxTask += prvListTasksWithinSingleList( &( pxTaskStatusArray[ uxTask ] ), &xTasksWaitingTermination, eDeleted );
                }
#line 2697 "Source/FreeRTOS/tasks.c"

#line 2699 "Source/FreeRTOS/tasks.c"
                {
                    
#line 2701 "Source/FreeRTOS/tasks.c"
 
                    uxTask += prvListTasksWithinSingleList( &( pxTaskStatusArray[ uxTask ] ), &xSuspendedTaskList, eSuspended );
                }
#line 2705 "Source/FreeRTOS/tasks.c"

#line 2707 "Source/FreeRTOS/tasks.c"
#line 2713 "Source/FreeRTOS/tasks.c"
#line 2715 "Source/FreeRTOS/tasks.c"
#line 2718 "Source/FreeRTOS/tasks.c"
                {
                    if( pulTotalRunTime != 0  )
                    {
                        *pulTotalRunTime = 0;
                    }
                }
#line 2725 "Source/FreeRTOS/tasks.c"
            }
            else
            {
                 ;
            }
        }
        ( void ) xTaskResumeAll();

        return uxTask;
    }

#line 2737 "Source/FreeRTOS/tasks.c"
 

#line 2740 "Source/FreeRTOS/tasks.c"

#line 2744 "Source/FreeRTOS/tasks.c"
#line 2750 "Source/FreeRTOS/tasks.c"
 


#line 2755 "Source/FreeRTOS/tasks.c"
 
#line 2757 "Source/FreeRTOS/tasks.c"

#line 2762 "Source/FreeRTOS/tasks.c"

#line 2769 "Source/FreeRTOS/tasks.c"
#line 2791 "Source/FreeRTOS/tasks.c"
 

BaseType_t xTaskCatchUpTicks( TickType_t xTicksToCatchUp )
{
    BaseType_t xYieldOccurred;

    
#line 2798 "Source/FreeRTOS/tasks.c"
 
    if( ( uxSchedulerSuspended == 0 ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 2799 ) ;

    
#line 2802 "Source/FreeRTOS/tasks.c"
 
    vTaskSuspendAll();

     
    POSTINC1 = INTCON; INTCONbits.GIE_GIEH = 0;  ;
    {
        xPendedTicks += xTicksToCatchUp;
    }
    asm( "MOVF	POSTDEC1, 1, 0" ); if( INDF1 & 0x80  ) { INTCONbits.GIE_GIEH = 1; ; }  ;
    xYieldOccurred = xTaskResumeAll();

    return xYieldOccurred;
}
 

#line 2818 "Source/FreeRTOS/tasks.c"

#line 2829 "Source/FreeRTOS/tasks.c"

#line 2836 "Source/FreeRTOS/tasks.c"

#line 2842 "Source/FreeRTOS/tasks.c"

#line 2851 "Source/FreeRTOS/tasks.c"

#line 2865 "Source/FreeRTOS/tasks.c"
#line 2867 "Source/FreeRTOS/tasks.c"

#line 2870 "Source/FreeRTOS/tasks.c"

#line 2874 "Source/FreeRTOS/tasks.c"
#line 2883 "Source/FreeRTOS/tasks.c"
#line 2895 "Source/FreeRTOS/tasks.c"
 

BaseType_t xTaskIncrementTick( void )
{
    TCB_t * pxTCB;
    TickType_t xItemValue;
    BaseType_t xSwitchRequired = ( ( BaseType_t ) 0 ) ;

    
#line 2905 "Source/FreeRTOS/tasks.c"
 
     ;

    if( uxSchedulerSuspended == ( UBaseType_t ) ( ( BaseType_t ) 0 )  )
    {
         
        const TickType_t xConstTickCount = xTickCount + ( TickType_t ) 1;

         
        xTickCount = xConstTickCount;

        if( xConstTickCount == ( TickType_t ) 0U )  
        {
            { List_t * pxTemp; if( ( ( ( ( ( pxDelayedTaskList )->uxNumberOfItems == ( UBaseType_t ) 0 ) ? ( ( BaseType_t ) 1 )  : ( ( BaseType_t ) 0 )  )  ) ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 2918 ) ; pxTemp = pxDelayedTaskList; pxDelayedTaskList = pxOverflowDelayedTaskList; pxOverflowDelayedTaskList = pxTemp; xNumOfOverflows++; prvResetNextTaskUnblockTime(); } ;
        }
        else
        {
             ;
        }

        
#line 2928 "Source/FreeRTOS/tasks.c"
 
        if( xConstTickCount >= xNextTaskUnblockTime )
        {
            for( ; ; )
            {
                if( ( ( ( pxDelayedTaskList )->uxNumberOfItems == ( UBaseType_t ) 0 ) ? ( ( BaseType_t ) 1 )  : ( ( BaseType_t ) 0 )  )  != ( ( BaseType_t ) 0 )  )
                {
                    
#line 2937 "Source/FreeRTOS/tasks.c"
 
                    xNextTaskUnblockTime = ( TickType_t ) 0xffff ;  
                    break;
                }
                else
                {
                    
#line 2945 "Source/FreeRTOS/tasks.c"
 
                    pxTCB = ( ( &( ( pxDelayedTaskList )->xListEnd ) )->pxNext->pvOwner ) ;  
                    xItemValue = ( ( &( pxTCB->xStateListItem ) )->xItemValue ) ;

                    if( xConstTickCount < xItemValue )
                    {
                        
#line 2954 "Source/FreeRTOS/tasks.c"
 
                        xNextTaskUnblockTime = xItemValue;
                        break;  
                    }
                    else
                    {
                         ;
                    }

                     
                    { List_t * const pxList = ( &( pxTCB->xStateListItem ) )->pvContainer ; ( &( pxTCB->xStateListItem ) )->pxNext->pxPrevious = ( &( pxTCB->xStateListItem ) )->pxPrevious; ( &( pxTCB->xStateListItem ) )->pxPrevious->pxNext = ( &( pxTCB->xStateListItem ) )->pxNext; if( pxList->pxIndex == ( &( pxTCB->xStateListItem ) ) ) { pxList->pxIndex = ( &( pxTCB->xStateListItem ) )->pxPrevious; } ( &( pxTCB->xStateListItem ) )->pvContainer  = 0 ; ( pxList->uxNumberOfItems )--; } ;

                     
                    if( ( ( &( pxTCB->xEventListItem ) )->pvContainer  )  != 0  )
                    {
                        { List_t * const pxList = ( &( pxTCB->xEventListItem ) )->pvContainer ; ( &( pxTCB->xEventListItem ) )->pxNext->pxPrevious = ( &( pxTCB->xEventListItem ) )->pxPrevious; ( &( pxTCB->xEventListItem ) )->pxPrevious->pxNext = ( &( pxTCB->xEventListItem ) )->pxNext; if( pxList->pxIndex == ( &( pxTCB->xEventListItem ) ) ) { pxList->pxIndex = ( &( pxTCB->xEventListItem ) )->pxPrevious; } ( &( pxTCB->xEventListItem ) )->pvContainer  = 0 ; ( pxList->uxNumberOfItems )--; } ;
                    }
                    else
                    {
                         ;
                    }

                     
                     ; \ ;

                     
#line 2981 "Source/FreeRTOS/tasks.c"
                    {
                        
#line 2988 "Source/FreeRTOS/tasks.c"
 
                        if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
                        {
                            xSwitchRequired = ( ( BaseType_t ) 1 ) ;
                        }
                        else
                        {
                             ;
                        }
                    }
#line 2999 "Source/FreeRTOS/tasks.c"
                }
            }
        }

        
#line 3005 "Source/FreeRTOS/tasks.c"
 
#line 3007 "Source/FreeRTOS/tasks.c"
        {
            if( ( ( &( pxReadyTasksLists[ pxCurrentTCB->uxPriority ] ) )->uxNumberOfItems )  > ( UBaseType_t ) 1 )
            {
                xSwitchRequired = ( ( BaseType_t ) 1 ) ;
            }
            else
            {
                 ;
            }
        }
#line 3018 "Source/FreeRTOS/tasks.c"

#line 3020 "Source/FreeRTOS/tasks.c"

#line 3022 "Source/FreeRTOS/tasks.c"
#line 3033 "Source/FreeRTOS/tasks.c"

#line 3035 "Source/FreeRTOS/tasks.c"
        {
            if( xYieldPending != ( ( BaseType_t ) 0 )  )
            {
                xSwitchRequired = ( ( BaseType_t ) 1 ) ;
            }
            else
            {
                 ;
            }
        }
#line 3046 "Source/FreeRTOS/tasks.c"
    }
    else
    {
        ++xPendedTicks;

         
#line 3053 "Source/FreeRTOS/tasks.c"
#line 3057 "Source/FreeRTOS/tasks.c"
    }

    return xSwitchRequired;
}
 

#line 3064 "Source/FreeRTOS/tasks.c"

#line 3071 "Source/FreeRTOS/tasks.c"

#line 3082 "Source/FreeRTOS/tasks.c"
#line 3091 "Source/FreeRTOS/tasks.c"
 

#line 3094 "Source/FreeRTOS/tasks.c"

#line 3104 "Source/FreeRTOS/tasks.c"
#line 3115 "Source/FreeRTOS/tasks.c"
 

#line 3118 "Source/FreeRTOS/tasks.c"

#line 3129 "Source/FreeRTOS/tasks.c"
#line 3140 "Source/FreeRTOS/tasks.c"
 

#line 3143 "Source/FreeRTOS/tasks.c"
#line 3173 "Source/FreeRTOS/tasks.c"
 

void vTaskSwitchContext( void )
{
    if( uxSchedulerSuspended != ( UBaseType_t ) ( ( BaseType_t ) 0 )  )
    {
         
        xYieldPending = ( ( BaseType_t ) 1 ) ;
    }
    else
    {
        xYieldPending = ( ( BaseType_t ) 0 ) ;
         ;

#line 3188 "Source/FreeRTOS/tasks.c"
#line 3192 "Source/FreeRTOS/tasks.c"
#line 3194 "Source/FreeRTOS/tasks.c"

#line 3201 "Source/FreeRTOS/tasks.c"
#line 3214 "Source/FreeRTOS/tasks.c"

         
         ;

         
#line 3220 "Source/FreeRTOS/tasks.c"
#line 3224 "Source/FreeRTOS/tasks.c"

         
        { UBaseType_t uxTopPriority = uxTopReadyPriority; while( ( ( ( &( pxReadyTasksLists[ uxTopPriority ] ) )->uxNumberOfItems == ( UBaseType_t ) 0 ) ? ( ( BaseType_t ) 1 )  : ( ( BaseType_t ) 0 )  )  ) { if( ( uxTopPriority ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 3226 ) ; --uxTopPriority; } { List_t * const pxConstList = ( &( pxReadyTasksLists[ uxTopPriority ] ) ); ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; if( ( void * ) ( pxConstList )->pxIndex == ( void * ) &( ( pxConstList )->xListEnd ) ) { ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; } ( pxCurrentTCB ) = ( pxConstList )->pxIndex->pvOwner; } ; uxTopReadyPriority = uxTopPriority; } ;  
         ;

         
#line 3231 "Source/FreeRTOS/tasks.c"
#line 3235 "Source/FreeRTOS/tasks.c"

#line 3237 "Source/FreeRTOS/tasks.c"

#line 3239 "Source/FreeRTOS/tasks.c"
#line 3243 "Source/FreeRTOS/tasks.c"
    }
}
 

void vTaskPlaceOnEventList( List_t * const pxEventList,
                            const TickType_t xTicksToWait )
{
    if( ( pxEventList ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 3250 ) ;

    
#line 3253 "Source/FreeRTOS/tasks.c"
 

    
#line 3265 "Source/FreeRTOS/tasks.c"
 
    vListInsert( pxEventList, &( pxCurrentTCB->xEventListItem ) );

    prvAddCurrentTaskToDelayedList( xTicksToWait, ( ( BaseType_t ) 1 )  );
}
 

void vTaskPlaceOnUnorderedEventList( List_t * pxEventList,
                                     const TickType_t xItemValue,
                                     const TickType_t xTicksToWait )
{
    if( ( pxEventList ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 3276 ) ;

    
#line 3279 "Source/FreeRTOS/tasks.c"
 
    if( ( uxSchedulerSuspended != 0 ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 3280 ) ;

    
#line 3284 "Source/FreeRTOS/tasks.c"
 
    ( ( &( pxCurrentTCB->xEventListItem ) )->xItemValue = ( xItemValue | 0x8000U  ) ) ;

    
#line 3291 "Source/FreeRTOS/tasks.c"
 
    { ListItem_t * const pxIndex = ( pxEventList )->pxIndex;  ;  ; ( &( pxCurrentTCB->xEventListItem ) )->pxNext = pxIndex; ( &( pxCurrentTCB->xEventListItem ) )->pxPrevious = pxIndex->pxPrevious; pxIndex->pxPrevious->pxNext = ( &( pxCurrentTCB->xEventListItem ) ); pxIndex->pxPrevious = ( &( pxCurrentTCB->xEventListItem ) ); ( &( pxCurrentTCB->xEventListItem ) )->pvContainer  = ( pxEventList ); ( ( pxEventList )->uxNumberOfItems )++; } ;

    prvAddCurrentTaskToDelayedList( xTicksToWait, ( ( BaseType_t ) 1 )  );
}
 

#line 3299 "Source/FreeRTOS/tasks.c"

#line 3309 "Source/FreeRTOS/tasks.c"

#line 3315 "Source/FreeRTOS/tasks.c"

#line 3320 "Source/FreeRTOS/tasks.c"
#line 3331 "Source/FreeRTOS/tasks.c"
 

BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList )
{
    TCB_t * pxUnblockedTCB;
    BaseType_t xReturn;

    
#line 3339 "Source/FreeRTOS/tasks.c"
 

    
#line 3350 "Source/FreeRTOS/tasks.c"
 
    pxUnblockedTCB = ( ( &( ( pxEventList )->xListEnd ) )->pxNext->pvOwner ) ;  
    if( ( pxUnblockedTCB ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 3352 ) ;
    { List_t * const pxList = ( &( pxUnblockedTCB->xEventListItem ) )->pvContainer ; ( &( pxUnblockedTCB->xEventListItem ) )->pxNext->pxPrevious = ( &( pxUnblockedTCB->xEventListItem ) )->pxPrevious; ( &( pxUnblockedTCB->xEventListItem ) )->pxPrevious->pxNext = ( &( pxUnblockedTCB->xEventListItem ) )->pxNext; if( pxList->pxIndex == ( &( pxUnblockedTCB->xEventListItem ) ) ) { pxList->pxIndex = ( &( pxUnblockedTCB->xEventListItem ) )->pxPrevious; } ( &( pxUnblockedTCB->xEventListItem ) )->pvContainer  = 0 ; ( pxList->uxNumberOfItems )--; } ;

    if( uxSchedulerSuspended == ( UBaseType_t ) ( ( BaseType_t ) 0 )  )
    {
        { List_t * const pxList = ( &( pxUnblockedTCB->xStateListItem ) )->pvContainer ; ( &( pxUnblockedTCB->xStateListItem ) )->pxNext->pxPrevious = ( &( pxUnblockedTCB->xStateListItem ) )->pxPrevious; ( &( pxUnblockedTCB->xStateListItem ) )->pxPrevious->pxNext = ( &( pxUnblockedTCB->xStateListItem ) )->pxNext; if( pxList->pxIndex == ( &( pxUnblockedTCB->xStateListItem ) ) ) { pxList->pxIndex = ( &( pxUnblockedTCB->xStateListItem ) )->pxPrevious; } ( &( pxUnblockedTCB->xStateListItem ) )->pvContainer  = 0 ; ( pxList->uxNumberOfItems )--; } ;
         ; \ ;

#line 3361 "Source/FreeRTOS/tasks.c"

#line 3369 "Source/FreeRTOS/tasks.c"
#line 3373 "Source/FreeRTOS/tasks.c"
    }
    else
    {
        
#line 3377 "Source/FreeRTOS/tasks.c"
 
        { ListItem_t * const pxIndex = ( &( xPendingReadyList ) )->pxIndex;  ;  ; ( &( pxUnblockedTCB->xEventListItem ) )->pxNext = pxIndex; ( &( pxUnblockedTCB->xEventListItem ) )->pxPrevious = pxIndex->pxPrevious; pxIndex->pxPrevious->pxNext = ( &( pxUnblockedTCB->xEventListItem ) ); pxIndex->pxPrevious = ( &( pxUnblockedTCB->xEventListItem ) ); ( &( pxUnblockedTCB->xEventListItem ) )->pvContainer  = ( &( xPendingReadyList ) ); ( ( &( xPendingReadyList ) )->uxNumberOfItems )++; } ;
    }

    if( pxUnblockedTCB->uxPriority > pxCurrentTCB->uxPriority )
    {
        
#line 3385 "Source/FreeRTOS/tasks.c"
 
        xReturn = ( ( BaseType_t ) 1 ) ;

        
#line 3389 "Source/FreeRTOS/tasks.c"
 
        xYieldPending = ( ( BaseType_t ) 1 ) ;
    }
    else
    {
        xReturn = ( ( BaseType_t ) 0 ) ;
    }

    return xReturn;
}
 

void vTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem,
                                        const TickType_t xItemValue )
{
    TCB_t * pxUnblockedTCB;

    
#line 3407 "Source/FreeRTOS/tasks.c"
 
    if( ( uxSchedulerSuspended != ( ( BaseType_t ) 0 )  ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 3408 ) ;

     
    ( ( pxEventListItem )->xItemValue = ( xItemValue | 0x8000U  ) ) ;

    
#line 3414 "Source/FreeRTOS/tasks.c"
 
    pxUnblockedTCB = ( ( pxEventListItem )->pvOwner ) ;  
    if( ( pxUnblockedTCB ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 3416 ) ;
    { List_t * const pxList = ( pxEventListItem )->pvContainer ; ( pxEventListItem )->pxNext->pxPrevious = ( pxEventListItem )->pxPrevious; ( pxEventListItem )->pxPrevious->pxNext = ( pxEventListItem )->pxNext; if( pxList->pxIndex == ( pxEventListItem ) ) { pxList->pxIndex = ( pxEventListItem )->pxPrevious; } ( pxEventListItem )->pvContainer  = 0 ; ( pxList->uxNumberOfItems )--; } ;

#line 3420 "Source/FreeRTOS/tasks.c"

#line 3428 "Source/FreeRTOS/tasks.c"
#line 3432 "Source/FreeRTOS/tasks.c"

    
#line 3435 "Source/FreeRTOS/tasks.c"
 
    { List_t * const pxList = ( &( pxUnblockedTCB->xStateListItem ) )->pvContainer ; ( &( pxUnblockedTCB->xStateListItem ) )->pxNext->pxPrevious = ( &( pxUnblockedTCB->xStateListItem ) )->pxPrevious; ( &( pxUnblockedTCB->xStateListItem ) )->pxPrevious->pxNext = ( &( pxUnblockedTCB->xStateListItem ) )->pxNext; if( pxList->pxIndex == ( &( pxUnblockedTCB->xStateListItem ) ) ) { pxList->pxIndex = ( &( pxUnblockedTCB->xStateListItem ) )->pxPrevious; } ( &( pxUnblockedTCB->xStateListItem ) )->pvContainer  = 0 ; ( pxList->uxNumberOfItems )--; } ;
     ; \ ;

    if( pxUnblockedTCB->uxPriority > pxCurrentTCB->uxPriority )
    {
        
#line 3444 "Source/FreeRTOS/tasks.c"
 
        xYieldPending = ( ( BaseType_t ) 1 ) ;
    }
}
 

void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut )
{
    if( ( pxTimeOut ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 3452 ) ;
    POSTINC1 = INTCON; INTCONbits.GIE_GIEH = 0;  ;
    {
        pxTimeOut->xOverflowCount = xNumOfOverflows;
        pxTimeOut->xTimeOnEntering = xTickCount;
    }
    asm( "MOVF	POSTDEC1, 1, 0" ); if( INDF1 & 0x80  ) { INTCONbits.GIE_GIEH = 1; ; }  ;
}
 

void vTaskInternalSetTimeOutState( TimeOut_t * const pxTimeOut )
{
     
    pxTimeOut->xOverflowCount = xNumOfOverflows;
    pxTimeOut->xTimeOnEntering = xTickCount;
}
 

BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut,
                                 TickType_t * const pxTicksToWait )
{
    BaseType_t xReturn;

    if( ( pxTimeOut ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 3475 ) ;
    if( ( pxTicksToWait ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 3476 ) ;

    POSTINC1 = INTCON; INTCONbits.GIE_GIEH = 0;  ;
    {
         
        const TickType_t xConstTickCount = xTickCount;
        const TickType_t xElapsedTime = xConstTickCount - pxTimeOut->xTimeOnEntering;

#line 3485 "Source/FreeRTOS/tasks.c"

#line 3488 "Source/FreeRTOS/tasks.c"
#line 3494 "Source/FreeRTOS/tasks.c"

#line 3496 "Source/FreeRTOS/tasks.c"
            if( *pxTicksToWait == ( TickType_t ) 0xffff  )
            {
                
#line 3500 "Source/FreeRTOS/tasks.c"
 
                xReturn = ( ( BaseType_t ) 0 ) ;
            }
            else
#line 3505 "Source/FreeRTOS/tasks.c"

        if( ( xNumOfOverflows != pxTimeOut->xOverflowCount ) && ( xConstTickCount >= pxTimeOut->xTimeOnEntering ) )  
        {
            
#line 3512 "Source/FreeRTOS/tasks.c"
 
            xReturn = ( ( BaseType_t ) 1 ) ;
            *pxTicksToWait = ( TickType_t ) 0;
        }
        else if( xElapsedTime < *pxTicksToWait )  
        {
             
            *pxTicksToWait -= xElapsedTime;
            vTaskInternalSetTimeOutState( pxTimeOut );
            xReturn = ( ( BaseType_t ) 0 ) ;
        }
        else
        {
            *pxTicksToWait = ( TickType_t ) 0;
            xReturn = ( ( BaseType_t ) 1 ) ;
        }
    }
    asm( "MOVF	POSTDEC1, 1, 0" ); if( INDF1 & 0x80  ) { INTCONbits.GIE_GIEH = 1; ; }  ;

    return xReturn;
}
 

void vTaskMissedYield( void )
{
    xYieldPending = ( ( BaseType_t ) 1 ) ;
}
 

#line 3542 "Source/FreeRTOS/tasks.c"

    UBaseType_t uxTaskGetTaskNumber( TaskHandle_t xTask )
    {
        UBaseType_t uxReturn;
        TCB_t const * pxTCB;

        if( xTask != 0  )
        {
            pxTCB = xTask;
            uxReturn = pxTCB->uxTaskNumber;
        }
        else
        {
            uxReturn = 0U;
        }

        return uxReturn;
    }

#line 3562 "Source/FreeRTOS/tasks.c"
 

#line 3565 "Source/FreeRTOS/tasks.c"

    void vTaskSetTaskNumber( TaskHandle_t xTask,
                             const UBaseType_t uxHandle )
    {
        TCB_t * pxTCB;

        if( xTask != 0  )
        {
            pxTCB = xTask;
            pxTCB->uxTaskNumber = uxHandle;
        }
    }

#line 3579 "Source/FreeRTOS/tasks.c"


#line 3590 "Source/FreeRTOS/tasks.c"
 
static void prvIdleTask( void *pvParameters ) 
{
     
    ( void ) pvParameters;

    
#line 3597 "Source/FreeRTOS/tasks.c"
 

    
#line 3601 "Source/FreeRTOS/tasks.c"
 
     ;

    for( ; ; )
    {
        
#line 3607 "Source/FreeRTOS/tasks.c"
 
        prvCheckTasksWaitingTermination();

#line 3611 "Source/FreeRTOS/tasks.c"

#line 3615 "Source/FreeRTOS/tasks.c"
#line 3619 "Source/FreeRTOS/tasks.c"

#line 3621 "Source/FreeRTOS/tasks.c"
        {
            
#line 3630 "Source/FreeRTOS/tasks.c"
 
            if( ( ( &( pxReadyTasksLists[ ( ( UBaseType_t ) 0U )  ] ) )->uxNumberOfItems )  > ( UBaseType_t ) 1 )
            {
                vPortYield()  ;
            }
            else
            {
                 ;
            }
        }
#line 3641 "Source/FreeRTOS/tasks.c"

#line 3643 "Source/FreeRTOS/tasks.c"

#line 3650 "Source/FreeRTOS/tasks.c"
#line 3654 "Source/FreeRTOS/tasks.c"

        
#line 3658 "Source/FreeRTOS/tasks.c"
 
#line 3660 "Source/FreeRTOS/tasks.c"

#line 3667 "Source/FreeRTOS/tasks.c"

#line 3676 "Source/FreeRTOS/tasks.c"

#line 3682 "Source/FreeRTOS/tasks.c"
#line 3704 "Source/FreeRTOS/tasks.c"
    }
}
 

#line 3709 "Source/FreeRTOS/tasks.c"
#line 3713 "Source/FreeRTOS/tasks.c"
#line 3716 "Source/FreeRTOS/tasks.c"

#line 3734 "Source/FreeRTOS/tasks.c"
#line 3739 "Source/FreeRTOS/tasks.c"

#line 3744 "Source/FreeRTOS/tasks.c"
#line 3748 "Source/FreeRTOS/tasks.c"
#line 3757 "Source/FreeRTOS/tasks.c"
 

#line 3760 "Source/FreeRTOS/tasks.c"
#line 3777 "Source/FreeRTOS/tasks.c"
 

#line 3780 "Source/FreeRTOS/tasks.c"
#line 3802 "Source/FreeRTOS/tasks.c"
 

#line 3805 "Source/FreeRTOS/tasks.c"

#line 3812 "Source/FreeRTOS/tasks.c"
#line 3819 "Source/FreeRTOS/tasks.c"
 

static void prvInitialiseTaskLists( void )
{
    UBaseType_t uxPriority;

    for( uxPriority = ( UBaseType_t ) 0U; uxPriority < ( UBaseType_t ) ( 3 ) ; uxPriority++ )
    {
        vListInitialise( &( pxReadyTasksLists[ uxPriority ] ) );
    }

    vListInitialise( &xDelayedTaskList1 );
    vListInitialise( &xDelayedTaskList2 );
    vListInitialise( &xPendingReadyList );

#line 3835 "Source/FreeRTOS/tasks.c"
    {
        vListInitialise( &xTasksWaitingTermination );
    }
#line 3839 "Source/FreeRTOS/tasks.c"

#line 3841 "Source/FreeRTOS/tasks.c"
    {
        vListInitialise( &xSuspendedTaskList );
    }
#line 3845 "Source/FreeRTOS/tasks.c"

    
#line 3847 "Source/FreeRTOS/tasks.c"
 
    pxDelayedTaskList = &xDelayedTaskList1;
    pxOverflowDelayedTaskList = &xDelayedTaskList2;
}
 

static void prvCheckTasksWaitingTermination( void )
{
     

#line 3858 "Source/FreeRTOS/tasks.c"
    {
        TCB_t * pxTCB;

        
#line 3862 "Source/FreeRTOS/tasks.c"
 
        while( uxDeletedTasksWaitingCleanUp > ( UBaseType_t ) 0U )
        {
            POSTINC1 = INTCON; INTCONbits.GIE_GIEH = 0;  ;
            {
                pxTCB = ( ( &( ( ( &xTasksWaitingTermination ) )->xListEnd ) )->pxNext->pvOwner ) ;  
                ( void ) uxListRemove( &( pxTCB->xStateListItem ) );
                --uxCurrentNumberOfTasks;
                --uxDeletedTasksWaitingCleanUp;
            }
            asm( "MOVF	POSTDEC1, 1, 0" ); if( INDF1 & 0x80  ) { INTCONbits.GIE_GIEH = 1; ; }  ;

            prvDeleteTCB( pxTCB );
        }
    }
#line 3878 "Source/FreeRTOS/tasks.c"
}
 

#line 3882 "Source/FreeRTOS/tasks.c"

    void vTaskGetInfo( TaskHandle_t xTask,
                       TaskStatus_t * pxTaskStatus,
                       BaseType_t xGetFreeStackSpace,
                       eTaskState eState )
    {
        TCB_t * pxTCB;

         
        pxTCB = ( ( ( xTask ) == 0  ) ? pxCurrentTCB : ( xTask ) ) ;

        pxTaskStatus->xHandle = ( TaskHandle_t ) pxTCB;
        pxTaskStatus->pcTaskName = ( const char * ) &( pxTCB->pcTaskName[ 0 ] );
        pxTaskStatus->uxCurrentPriority = pxTCB->uxPriority;
        pxTaskStatus->pxStackBase = pxTCB->pxStack;
#line 3898 "Source/FreeRTOS/tasks.c"
#line 3901 "Source/FreeRTOS/tasks.c"
        pxTaskStatus->xTaskNumber = pxTCB->uxTCBNumber;

#line 3904 "Source/FreeRTOS/tasks.c"
#line 3908 "Source/FreeRTOS/tasks.c"
        {
            pxTaskStatus->uxBasePriority = 0;
        }
#line 3912 "Source/FreeRTOS/tasks.c"

#line 3914 "Source/FreeRTOS/tasks.c"
#line 3918 "Source/FreeRTOS/tasks.c"
        {
            pxTaskStatus->ulRunTimeCounter = ( uint32_t  ) 0;
        }
#line 3922 "Source/FreeRTOS/tasks.c"

        
#line 3925 "Source/FreeRTOS/tasks.c"
 
        if( eState != eInvalid )
        {
            if( pxTCB == pxCurrentTCB )
            {
                pxTaskStatus->eCurrentState = eRunning;
            }
            else
            {
                pxTaskStatus->eCurrentState = eState;

#line 3937 "Source/FreeRTOS/tasks.c"
                {
                    
#line 3940 "Source/FreeRTOS/tasks.c"
 
                    if( eState == eSuspended )
                    {
                        vTaskSuspendAll();
                        {
                            if( ( ( &( pxTCB->xEventListItem ) )->pvContainer  )  != 0  )
                            {
                                pxTaskStatus->eCurrentState = eBlocked;
                            }
                        }
                        ( void ) xTaskResumeAll();
                    }
                }
#line 3954 "Source/FreeRTOS/tasks.c"
            }
        }
        else
        {
            pxTaskStatus->eCurrentState = eTaskGetState( pxTCB );
        }

        
#line 3962 "Source/FreeRTOS/tasks.c"
 
        if( xGetFreeStackSpace != ( ( BaseType_t ) 0 )  )
        {
#line 3966 "Source/FreeRTOS/tasks.c"
            {
                pxTaskStatus->usStackHighWaterMark = prvTaskCheckFreeStackSpace( ( uint8_t * ) pxTCB->pxEndOfStack );
            }
#line 3970 "Source/FreeRTOS/tasks.c"
#line 3974 "Source/FreeRTOS/tasks.c"
        }
        else
        {
            pxTaskStatus->usStackHighWaterMark = 0;
        }
    }

#line 3982 "Source/FreeRTOS/tasks.c"
 

#line 3985 "Source/FreeRTOS/tasks.c"

    static UBaseType_t prvListTasksWithinSingleList( TaskStatus_t * pxTaskStatusArray,
                                                     List_t * pxList,
                                                     eTaskState eState )
    {
         TCB_t * pxNextTCB;
         TCB_t * pxFirstTCB;
        UBaseType_t uxTask = 0;

        if( ( ( pxList )->uxNumberOfItems )  > ( UBaseType_t ) 0 )
        {
            { List_t * const pxConstList = ( pxList ); ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; if( ( void * ) ( pxConstList )->pxIndex == ( void * ) &( ( pxConstList )->xListEnd ) ) { ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; } ( pxFirstTCB ) = ( pxConstList )->pxIndex->pvOwner; } ;  

            
#line 4001 "Source/FreeRTOS/tasks.c"
 
            do
            {
                { List_t * const pxConstList = ( pxList ); ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; if( ( void * ) ( pxConstList )->pxIndex == ( void * ) &( ( pxConstList )->xListEnd ) ) { ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; } ( pxNextTCB ) = ( pxConstList )->pxIndex->pvOwner; } ;  
                vTaskGetInfo( ( TaskHandle_t ) pxNextTCB, &( pxTaskStatusArray[ uxTask ] ), ( ( BaseType_t ) 1 ) , eState );
                uxTask++;
            } while( pxNextTCB != pxFirstTCB );
        }
        else
        {
             ;
        }

        return uxTask;
    }

#line 4018 "Source/FreeRTOS/tasks.c"
 

#line 4021 "Source/FreeRTOS/tasks.c"

    static uint16_t  prvTaskCheckFreeStackSpace( const uint8_t * pucStackByte )
    {
        uint32_t ulCount = 0U;

        while( *pucStackByte == ( uint8_t ) ( 0xa5U )  )
        {
            pucStackByte -= 1 ;
            ulCount++;
        }

        ulCount /= ( uint32_t ) sizeof( StackType_t );  

        return ( uint16_t  ) ulCount;
    }

#line 4038 "Source/FreeRTOS/tasks.c"
 

#line 4041 "Source/FreeRTOS/tasks.c"

#line 4046 "Source/FreeRTOS/tasks.c"

#line 4058 "Source/FreeRTOS/tasks.c"
#line 4063 "Source/FreeRTOS/tasks.c"
#line 4067 "Source/FreeRTOS/tasks.c"
#line 4071 "Source/FreeRTOS/tasks.c"
#line 4078 "Source/FreeRTOS/tasks.c"
 

#line 4081 "Source/FreeRTOS/tasks.c"
#line 4091 "Source/FreeRTOS/tasks.c"
#line 4095 "Source/FreeRTOS/tasks.c"
#line 4099 "Source/FreeRTOS/tasks.c"
#line 4106 "Source/FreeRTOS/tasks.c"
 

#line 4109 "Source/FreeRTOS/tasks.c"

    static void prvDeleteTCB( TCB_t * pxTCB )
    {
        
#line 4114 "Source/FreeRTOS/tasks.c"
 
        ( void ) ( pxTCB ) ;

#line 4118 "Source/FreeRTOS/tasks.c"
#line 4123 "Source/FreeRTOS/tasks.c"

#line 4125 "Source/FreeRTOS/tasks.c"
        {
            
#line 4127 "Source/FreeRTOS/tasks.c"
 
            vPortFree ( pxTCB->pxStack );
            vPortFree( pxTCB );
        }
#line 4132 "Source/FreeRTOS/tasks.c"

#line 4135 "Source/FreeRTOS/tasks.c"

#line 4139 "Source/FreeRTOS/tasks.c"

#line 4146 "Source/FreeRTOS/tasks.c"

#line 4152 "Source/FreeRTOS/tasks.c"
#line 4158 "Source/FreeRTOS/tasks.c"
    }

#line 4161 "Source/FreeRTOS/tasks.c"
 

static void prvResetNextTaskUnblockTime( void )
{
    if( ( ( ( pxDelayedTaskList )->uxNumberOfItems == ( UBaseType_t ) 0 ) ? ( ( BaseType_t ) 1 )  : ( ( BaseType_t ) 0 )  )  != ( ( BaseType_t ) 0 )  )
    {
        
#line 4170 "Source/FreeRTOS/tasks.c"
 
        xNextTaskUnblockTime = ( TickType_t ) 0xffff ;
    }
    else
    {
        
#line 4178 "Source/FreeRTOS/tasks.c"
 
        xNextTaskUnblockTime = ( ( ( pxDelayedTaskList )->xListEnd ).pxNext->xItemValue ) ;
    }
}
 

#line 4185 "Source/FreeRTOS/tasks.c"

    TaskHandle_t xTaskGetCurrentTaskHandle( void )
    {
        TaskHandle_t xReturn;

        
#line 4192 "Source/FreeRTOS/tasks.c"
 
        xReturn = pxCurrentTCB;

        return xReturn;
    }

#line 4199 "Source/FreeRTOS/tasks.c"
 

#line 4202 "Source/FreeRTOS/tasks.c"
#line 4227 "Source/FreeRTOS/tasks.c"
 

#line 4230 "Source/FreeRTOS/tasks.c"

#line 4238 "Source/FreeRTOS/tasks.c"

#line 4243 "Source/FreeRTOS/tasks.c"

#line 4248 "Source/FreeRTOS/tasks.c"

#line 4259 "Source/FreeRTOS/tasks.c"

#line 4266 "Source/FreeRTOS/tasks.c"

#line 4299 "Source/FreeRTOS/tasks.c"
#line 4317 "Source/FreeRTOS/tasks.c"
 

#line 4320 "Source/FreeRTOS/tasks.c"

#line 4331 "Source/FreeRTOS/tasks.c"

#line 4337 "Source/FreeRTOS/tasks.c"

#line 4347 "Source/FreeRTOS/tasks.c"

#line 4358 "Source/FreeRTOS/tasks.c"

#line 4364 "Source/FreeRTOS/tasks.c"

#line 4375 "Source/FreeRTOS/tasks.c"
#line 4397 "Source/FreeRTOS/tasks.c"
 

#line 4400 "Source/FreeRTOS/tasks.c"

#line 4411 "Source/FreeRTOS/tasks.c"

#line 4417 "Source/FreeRTOS/tasks.c"

#line 4433 "Source/FreeRTOS/tasks.c"

#line 4438 "Source/FreeRTOS/tasks.c"

#line 4443 "Source/FreeRTOS/tasks.c"

#line 4449 "Source/FreeRTOS/tasks.c"

#line 4464 "Source/FreeRTOS/tasks.c"

#line 4471 "Source/FreeRTOS/tasks.c"
#line 4503 "Source/FreeRTOS/tasks.c"
 

#line 4506 "Source/FreeRTOS/tasks.c"

#line 4520 "Source/FreeRTOS/tasks.c"
#line 4533 "Source/FreeRTOS/tasks.c"
 

#line 4536 "Source/FreeRTOS/tasks.c"
#line 4566 "Source/FreeRTOS/tasks.c"
 

#line 4569 "Source/FreeRTOS/tasks.c"

    static char * prvWriteNameToBuffer( char * pcBuffer,
                                        const char * pcTaskName )
    {
        size_t x;

         
        strcpy( pcBuffer, pcTaskName );

        
#line 4579 "Source/FreeRTOS/tasks.c"
 
        for( x = strlen( pcBuffer ); x < ( size_t ) ( ( 4 )  - 1 ); x++ )
        {
            pcBuffer[ x ] = ' ';
        }

         
        pcBuffer[ x ] = ( char ) 0x00;

         
        return &( pcBuffer[ x ] );
    }

#line 4593 "Source/FreeRTOS/tasks.c"
 

#line 4596 "Source/FreeRTOS/tasks.c"

    void vTaskList( char * pcWriteBuffer )
    {
        TaskStatus_t * pxTaskStatusArray;
        UBaseType_t uxArraySize, x;
        char cStatus;

        
#line 4627 "Source/FreeRTOS/tasks.c"
 


         
        

        
#line 4634 "Source/FreeRTOS/tasks.c"
 
        uxArraySize = uxCurrentNumberOfTasks;

        
#line 4639 "Source/FreeRTOS/tasks.c"
 
        pxTaskStatusArray = pvPortMalloc( uxCurrentNumberOfTasks * sizeof( TaskStatus_t ) );  

        Xprintf("\r\n-------------------------------------\r\n");
        Xprintf("Name\tState\tPrio\tStack\tNum\r\n");
        Xprintf("-------------------------------------\r\n");
        if( pxTaskStatusArray != 0  )
        {
             
            uxArraySize = uxTaskGetSystemState( pxTaskStatusArray, uxArraySize, 0  );

             
            for( x = 0; x < uxArraySize; x++ )
            {
                switch( pxTaskStatusArray[ x ].eCurrentState )
                {
                    case eRunning:
                        cStatus = ( 'X' ) ;
                        break;

                    case eReady:
                        cStatus = ( 'R' ) ;
                        break;

                    case eBlocked:
                        cStatus = ( 'B' ) ;
                        break;

                    case eSuspended:
                        cStatus = ( 'S' ) ;
                        break;

                    case eDeleted:
                        cStatus = ( 'D' ) ;
                        break;

                    case eInvalid:  
                    default:       
#line 4677 "Source/FreeRTOS/tasks.c"
 
                        cStatus = ( char ) 0x00;
                        break;
                }

                
#line 4683 "Source/FreeRTOS/tasks.c"
 

                
                Xprintf("%s",pxTaskStatusArray[ x ].pcTaskName);
                

                 
                
                Xprintf("\t%c\t%d\t%d\t%d\r\n", cStatus, 
                                        ( unsigned int ) pxTaskStatusArray[ x ].uxCurrentPriority, 
                                        ( unsigned int ) pxTaskStatusArray[ x ].usStackHighWaterMark, 
                                        ( unsigned int ) pxTaskStatusArray[ x ].xTaskNumber);

                
            }
            Xprintf("-------------------------------------\r\n");

            
#line 4701 "Source/FreeRTOS/tasks.c"
 
            vPortFree( pxTaskStatusArray );
        }
        else
        {
             ;
        }
    }

#line 4711 "Source/FreeRTOS/tasks.c"
 

#line 4714 "Source/FreeRTOS/tasks.c"

#line 4744 "Source/FreeRTOS/tasks.c"

#line 4750 "Source/FreeRTOS/tasks.c"

#line 4755 "Source/FreeRTOS/tasks.c"

#line 4774 "Source/FreeRTOS/tasks.c"

#line 4779 "Source/FreeRTOS/tasks.c"
#line 4789 "Source/FreeRTOS/tasks.c"

#line 4791 "Source/FreeRTOS/tasks.c"
#line 4795 "Source/FreeRTOS/tasks.c"

#line 4799 "Source/FreeRTOS/tasks.c"
#line 4805 "Source/FreeRTOS/tasks.c"

#line 4807 "Source/FreeRTOS/tasks.c"
#line 4811 "Source/FreeRTOS/tasks.c"

#line 4822 "Source/FreeRTOS/tasks.c"
#line 4832 "Source/FreeRTOS/tasks.c"
 

TickType_t uxTaskResetEventItemValue( void )
{
    TickType_t uxReturn;

    uxReturn = ( ( &( pxCurrentTCB->xEventListItem ) )->xItemValue ) ;

    
#line 4841 "Source/FreeRTOS/tasks.c"
 
    ( ( &( pxCurrentTCB->xEventListItem ) )->xItemValue = ( ( ( TickType_t ) ( 3 )  - ( TickType_t ) pxCurrentTCB->uxPriority ) ) ) ;  

    return uxReturn;
}
 

#line 4849 "Source/FreeRTOS/tasks.c"

#line 4853 "Source/FreeRTOS/tasks.c"
#line 4863 "Source/FreeRTOS/tasks.c"
 

#line 4866 "Source/FreeRTOS/tasks.c"

    uint32_t ulTaskGenericNotifyTake( UBaseType_t uxIndexToWait,
                                      BaseType_t xClearCountOnExit,
                                      TickType_t xTicksToWait )
    {
        uint32_t ulReturn;

        if( ( uxIndexToWait < 1  ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 4873 ) ;

        POSTINC1 = INTCON; INTCONbits.GIE_GIEH = 0;  ;
        {
             
            if( pxCurrentTCB->ulNotifiedValue[ uxIndexToWait ] == 0UL )
            {
                 
                pxCurrentTCB->ucNotifyState[ uxIndexToWait ] = ( ( uint8_t ) 1 ) ;

                if( xTicksToWait > ( TickType_t ) 0 )
                {
                    prvAddCurrentTaskToDelayedList( xTicksToWait, ( ( BaseType_t ) 1 )  );
                     ;

                    
#line 4891 "Source/FreeRTOS/tasks.c"
 
                    vPortYield() ;
                }
                else
                {
                     ;
                }
            }
            else
            {
                 ;
            }
        }
        asm( "MOVF	POSTDEC1, 1, 0" ); if( INDF1 & 0x80  ) { INTCONbits.GIE_GIEH = 1; ; }  ;

        POSTINC1 = INTCON; INTCONbits.GIE_GIEH = 0;  ;
        {
             ;
            ulReturn = pxCurrentTCB->ulNotifiedValue[ uxIndexToWait ];

            if( ulReturn != 0UL )
            {
                if( xClearCountOnExit != ( ( BaseType_t ) 0 )  )
                {
                    pxCurrentTCB->ulNotifiedValue[ uxIndexToWait ] = 0UL;
                }
                else
                {
                    pxCurrentTCB->ulNotifiedValue[ uxIndexToWait ] = ulReturn - ( uint32_t ) 1;
                }
            }
            else
            {
                 ;
            }

            pxCurrentTCB->ucNotifyState[ uxIndexToWait ] = ( ( uint8_t ) 0 ) ;
        }
        asm( "MOVF	POSTDEC1, 1, 0" ); if( INDF1 & 0x80  ) { INTCONbits.GIE_GIEH = 1; ; }  ;

        return ulReturn;
    }

#line 4935 "Source/FreeRTOS/tasks.c"
 

#line 4938 "Source/FreeRTOS/tasks.c"

    BaseType_t xTaskGenericNotifyWait( UBaseType_t uxIndexToWait,
                                       uint32_t ulBitsToClearOnEntry,
                                       uint32_t ulBitsToClearOnExit,
                                       uint32_t * pulNotificationValue,
                                       TickType_t xTicksToWait )
    {
        BaseType_t xReturn;

        if( ( uxIndexToWait < 1  ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 4947 ) ;

        POSTINC1 = INTCON; INTCONbits.GIE_GIEH = 0;  ;
        {
             
            if( pxCurrentTCB->ucNotifyState[ uxIndexToWait ] != ( ( uint8_t ) 2 )  )
            {
                
#line 4956 "Source/FreeRTOS/tasks.c"
 
                pxCurrentTCB->ulNotifiedValue[ uxIndexToWait ] &= ~ulBitsToClearOnEntry;

                 
                pxCurrentTCB->ucNotifyState[ uxIndexToWait ] = ( ( uint8_t ) 1 ) ;

                if( xTicksToWait > ( TickType_t ) 0 )
                {
                    prvAddCurrentTaskToDelayedList( xTicksToWait, ( ( BaseType_t ) 1 )  );
                     ;

                    
#line 4970 "Source/FreeRTOS/tasks.c"
 
                    vPortYield() ;
                }
                else
                {
                     ;
                }
            }
            else
            {
                 ;
            }
        }
        asm( "MOVF	POSTDEC1, 1, 0" ); if( INDF1 & 0x80  ) { INTCONbits.GIE_GIEH = 1; ; }  ;

        POSTINC1 = INTCON; INTCONbits.GIE_GIEH = 0;  ;
        {
             ;

            if( pulNotificationValue != 0  )
            {
                
#line 4992 "Source/FreeRTOS/tasks.c"
 
                *pulNotificationValue = pxCurrentTCB->ulNotifiedValue[ uxIndexToWait ];
            }

            
#line 4999 "Source/FreeRTOS/tasks.c"
 
            if( pxCurrentTCB->ucNotifyState[ uxIndexToWait ] != ( ( uint8_t ) 2 )  )
            {
                 
                xReturn = ( ( BaseType_t ) 0 ) ;
            }
            else
            {
                
#line 5008 "Source/FreeRTOS/tasks.c"
 
                pxCurrentTCB->ulNotifiedValue[ uxIndexToWait ] &= ~ulBitsToClearOnExit;
                xReturn = ( ( BaseType_t ) 1 ) ;
            }

            pxCurrentTCB->ucNotifyState[ uxIndexToWait ] = ( ( uint8_t ) 0 ) ;
        }
        asm( "MOVF	POSTDEC1, 1, 0" ); if( INDF1 & 0x80  ) { INTCONbits.GIE_GIEH = 1; ; }  ;

        return xReturn;
    }

#line 5021 "Source/FreeRTOS/tasks.c"
 

#line 5024 "Source/FreeRTOS/tasks.c"

    BaseType_t xTaskGenericNotify( TaskHandle_t xTaskToNotify,
                                   UBaseType_t uxIndexToNotify,
                                   uint32_t ulValue,
                                   eNotifyAction eAction,
                                   uint32_t * pulPreviousNotificationValue )
    {
        TCB_t * pxTCB;
        BaseType_t xReturn = ( ( ( BaseType_t ) 1 )  ) ;
        uint8_t ucOriginalNotifyState;

        if( ( uxIndexToNotify < 1  ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 5035 ) ;
        if( ( xTaskToNotify ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 5036 ) ;
        pxTCB = xTaskToNotify;

        POSTINC1 = INTCON; INTCONbits.GIE_GIEH = 0;  ;
        {
            if( pulPreviousNotificationValue != 0  )
            {
                *pulPreviousNotificationValue = pxTCB->ulNotifiedValue[ uxIndexToNotify ];
            }

            ucOriginalNotifyState = pxTCB->ucNotifyState[ uxIndexToNotify ];

            pxTCB->ucNotifyState[ uxIndexToNotify ] = ( ( uint8_t ) 2 ) ;

            switch( eAction )
            {
                case eSetBits:
                    pxTCB->ulNotifiedValue[ uxIndexToNotify ] |= ulValue;
                    break;

                case eIncrement:
                    ( pxTCB->ulNotifiedValue[ uxIndexToNotify ] )++;
                    break;

                case eSetValueWithOverwrite:
                    pxTCB->ulNotifiedValue[ uxIndexToNotify ] = ulValue;
                    break;

                case eSetValueWithoutOverwrite:

                    if( ucOriginalNotifyState != ( ( uint8_t ) 2 )  )
                    {
                        pxTCB->ulNotifiedValue[ uxIndexToNotify ] = ulValue;
                    }
                    else
                    {
                         
                        xReturn = ( ( ( BaseType_t ) 0 )  ) ;
                    }

                    break;

                case eNoAction:

                    
#line 5081 "Source/FreeRTOS/tasks.c"
 
                    break;

                default:

                    
#line 5088 "Source/FreeRTOS/tasks.c"
 
                    if( ( xTickCount == ( TickType_t ) 0 ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 5089 ) ;

                    break;
            }

             ;

            
#line 5097 "Source/FreeRTOS/tasks.c"
 
            if( ucOriginalNotifyState == ( ( uint8_t ) 1 )  )
            {
                { List_t * const pxList = ( &( pxTCB->xStateListItem ) )->pvContainer ; ( &( pxTCB->xStateListItem ) )->pxNext->pxPrevious = ( &( pxTCB->xStateListItem ) )->pxPrevious; ( &( pxTCB->xStateListItem ) )->pxPrevious->pxNext = ( &( pxTCB->xStateListItem ) )->pxNext; if( pxList->pxIndex == ( &( pxTCB->xStateListItem ) ) ) { pxList->pxIndex = ( &( pxTCB->xStateListItem ) )->pxPrevious; } ( &( pxTCB->xStateListItem ) )->pvContainer  = 0 ; ( pxList->uxNumberOfItems )--; } ;
                 ; \ ;

                 
                if( ( ( ( &( pxTCB->xEventListItem ) )->pvContainer  )  == 0  ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 5104 ) ;

#line 5107 "Source/FreeRTOS/tasks.c"

#line 5117 "Source/FreeRTOS/tasks.c"
#line 5121 "Source/FreeRTOS/tasks.c"

                if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
                {
                    
#line 5125 "Source/FreeRTOS/tasks.c"
 
                    vPortYield()  ;
                }
                else
                {
                     ;
                }
            }
            else
            {
                 ;
            }
        }
        asm( "MOVF	POSTDEC1, 1, 0" ); if( INDF1 & 0x80  ) { INTCONbits.GIE_GIEH = 1; ; }  ;

        return xReturn;
    }

#line 5144 "Source/FreeRTOS/tasks.c"
 

#line 5147 "Source/FreeRTOS/tasks.c"

    BaseType_t xTaskGenericNotifyFromISR( TaskHandle_t xTaskToNotify,
                                          UBaseType_t uxIndexToNotify,
                                          uint32_t ulValue,
                                          eNotifyAction eAction,
                                          uint32_t * pulPreviousNotificationValue,
                                          BaseType_t * pxHigherPriorityTaskWoken )
    {
        TCB_t * pxTCB;
        uint8_t ucOriginalNotifyState;
        BaseType_t xReturn = ( ( ( BaseType_t ) 1 )  ) ;
        UBaseType_t uxSavedInterruptStatus;

        if( ( xTaskToNotify ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 5160 ) ;
        if( ( uxIndexToNotify < 1  ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 5161 ) ;

        
#line 5178 "Source/FreeRTOS/tasks.c"
 
         ;

        pxTCB = xTaskToNotify;

        uxSavedInterruptStatus = 0 ;
        {
            if( pulPreviousNotificationValue != 0  )
            {
                *pulPreviousNotificationValue = pxTCB->ulNotifiedValue[ uxIndexToNotify ];
            }

            ucOriginalNotifyState = pxTCB->ucNotifyState[ uxIndexToNotify ];
            pxTCB->ucNotifyState[ uxIndexToNotify ] = ( ( uint8_t ) 2 ) ;

            switch( eAction )
            {
                case eSetBits:
                    pxTCB->ulNotifiedValue[ uxIndexToNotify ] |= ulValue;
                    break;

                case eIncrement:
                    ( pxTCB->ulNotifiedValue[ uxIndexToNotify ] )++;
                    break;

                case eSetValueWithOverwrite:
                    pxTCB->ulNotifiedValue[ uxIndexToNotify ] = ulValue;
                    break;

                case eSetValueWithoutOverwrite:

                    if( ucOriginalNotifyState != ( ( uint8_t ) 2 )  )
                    {
                        pxTCB->ulNotifiedValue[ uxIndexToNotify ] = ulValue;
                    }
                    else
                    {
                         
                        xReturn = ( ( ( BaseType_t ) 0 )  ) ;
                    }

                    break;

                case eNoAction:

                    
#line 5224 "Source/FreeRTOS/tasks.c"
 
                    break;

                default:

                    
#line 5231 "Source/FreeRTOS/tasks.c"
 
                    if( ( xTickCount == ( TickType_t ) 0 ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 5232 ) ;
                    break;
            }

             ;

            
#line 5239 "Source/FreeRTOS/tasks.c"
 
            if( ucOriginalNotifyState == ( ( uint8_t ) 1 )  )
            {
                 
                if( ( ( ( &( pxTCB->xEventListItem ) )->pvContainer  )  == 0  ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 5243 ) ;

                if( uxSchedulerSuspended == ( UBaseType_t ) ( ( BaseType_t ) 0 )  )
                {
                    { List_t * const pxList = ( &( pxTCB->xStateListItem ) )->pvContainer ; ( &( pxTCB->xStateListItem ) )->pxNext->pxPrevious = ( &( pxTCB->xStateListItem ) )->pxPrevious; ( &( pxTCB->xStateListItem ) )->pxPrevious->pxNext = ( &( pxTCB->xStateListItem ) )->pxNext; if( pxList->pxIndex == ( &( pxTCB->xStateListItem ) ) ) { pxList->pxIndex = ( &( pxTCB->xStateListItem ) )->pxPrevious; } ( &( pxTCB->xStateListItem ) )->pvContainer  = 0 ; ( pxList->uxNumberOfItems )--; } ;
                     ; \ ;
                }
                else
                {
                    
#line 5253 "Source/FreeRTOS/tasks.c"
 
                    { ListItem_t * const pxIndex = ( &( xPendingReadyList ) )->pxIndex;  ;  ; ( &( pxTCB->xEventListItem ) )->pxNext = pxIndex; ( &( pxTCB->xEventListItem ) )->pxPrevious = pxIndex->pxPrevious; pxIndex->pxPrevious->pxNext = ( &( pxTCB->xEventListItem ) ); pxIndex->pxPrevious = ( &( pxTCB->xEventListItem ) ); ( &( pxTCB->xEventListItem ) )->pvContainer  = ( &( xPendingReadyList ) ); ( ( &( xPendingReadyList ) )->uxNumberOfItems )++; } ;
                }

                if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
                {
                    
#line 5260 "Source/FreeRTOS/tasks.c"
 
                    if( pxHigherPriorityTaskWoken != 0  )
                    {
                        *pxHigherPriorityTaskWoken = ( ( BaseType_t ) 1 ) ;
                    }

                    
#line 5268 "Source/FreeRTOS/tasks.c"
 
                    xYieldPending = ( ( BaseType_t ) 1 ) ;
                }
                else
                {
                     ;
                }
            }
        }
        ( void ) ( uxSavedInterruptStatus ) ;

        return xReturn;
    }

#line 5283 "Source/FreeRTOS/tasks.c"
 

#line 5286 "Source/FreeRTOS/tasks.c"

    void vTaskGenericNotifyGiveFromISR( TaskHandle_t xTaskToNotify,
                                        UBaseType_t uxIndexToNotify,
                                        BaseType_t * pxHigherPriorityTaskWoken )
    {
        TCB_t * pxTCB;
        uint8_t ucOriginalNotifyState;
        UBaseType_t uxSavedInterruptStatus;

        if( ( xTaskToNotify ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 5295 ) ;
        if( ( uxIndexToNotify < 1  ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 5296 ) ;

        
#line 5313 "Source/FreeRTOS/tasks.c"
 
         ;

        pxTCB = xTaskToNotify;

        uxSavedInterruptStatus = 0 ;
        {
            ucOriginalNotifyState = pxTCB->ucNotifyState[ uxIndexToNotify ];
            pxTCB->ucNotifyState[ uxIndexToNotify ] = ( ( uint8_t ) 2 ) ;

            
#line 5324 "Source/FreeRTOS/tasks.c"
 
            ( pxTCB->ulNotifiedValue[ uxIndexToNotify ] )++;

             ;

            
#line 5330 "Source/FreeRTOS/tasks.c"
 
            if( ucOriginalNotifyState == ( ( uint8_t ) 1 )  )
            {
                 
                if( ( ( ( &( pxTCB->xEventListItem ) )->pvContainer  )  == 0  ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 5334 ) ;

                if( uxSchedulerSuspended == ( UBaseType_t ) ( ( BaseType_t ) 0 )  )
                {
                    { List_t * const pxList = ( &( pxTCB->xStateListItem ) )->pvContainer ; ( &( pxTCB->xStateListItem ) )->pxNext->pxPrevious = ( &( pxTCB->xStateListItem ) )->pxPrevious; ( &( pxTCB->xStateListItem ) )->pxPrevious->pxNext = ( &( pxTCB->xStateListItem ) )->pxNext; if( pxList->pxIndex == ( &( pxTCB->xStateListItem ) ) ) { pxList->pxIndex = ( &( pxTCB->xStateListItem ) )->pxPrevious; } ( &( pxTCB->xStateListItem ) )->pvContainer  = 0 ; ( pxList->uxNumberOfItems )--; } ;
                     ; \ ;
                }
                else
                {
                    
#line 5344 "Source/FreeRTOS/tasks.c"
 
                    { ListItem_t * const pxIndex = ( &( xPendingReadyList ) )->pxIndex;  ;  ; ( &( pxTCB->xEventListItem ) )->pxNext = pxIndex; ( &( pxTCB->xEventListItem ) )->pxPrevious = pxIndex->pxPrevious; pxIndex->pxPrevious->pxNext = ( &( pxTCB->xEventListItem ) ); pxIndex->pxPrevious = ( &( pxTCB->xEventListItem ) ); ( &( pxTCB->xEventListItem ) )->pvContainer  = ( &( xPendingReadyList ) ); ( ( &( xPendingReadyList ) )->uxNumberOfItems )++; } ;
                }

                if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
                {
                    
#line 5351 "Source/FreeRTOS/tasks.c"
 
                    if( pxHigherPriorityTaskWoken != 0  )
                    {
                        *pxHigherPriorityTaskWoken = ( ( BaseType_t ) 1 ) ;
                    }

                    
#line 5359 "Source/FreeRTOS/tasks.c"
 
                    xYieldPending = ( ( BaseType_t ) 1 ) ;
                }
                else
                {
                     ;
                }
            }
        }
        ( void ) ( uxSavedInterruptStatus ) ;
    }

#line 5372 "Source/FreeRTOS/tasks.c"
 

#line 5375 "Source/FreeRTOS/tasks.c"

    BaseType_t xTaskGenericNotifyStateClear( TaskHandle_t xTask,
                                             UBaseType_t uxIndexToClear )
    {
        TCB_t * pxTCB;
        BaseType_t xReturn;

        if( ( uxIndexToClear < 1  ) == 0 ) Xprintf("ASSERT:%s:%d\r\n" "Source/FreeRTOS/tasks.c", 5382 ) ;

        
#line 5385 "Source/FreeRTOS/tasks.c"
 
        pxTCB = ( ( ( xTask ) == 0  ) ? pxCurrentTCB : ( xTask ) ) ;

        POSTINC1 = INTCON; INTCONbits.GIE_GIEH = 0;  ;
        {
            if( pxTCB->ucNotifyState[ uxIndexToClear ] == ( ( uint8_t ) 2 )  )
            {
                pxTCB->ucNotifyState[ uxIndexToClear ] = ( ( uint8_t ) 0 ) ;
                xReturn = ( ( ( BaseType_t ) 1 )  ) ;
            }
            else
            {
                xReturn = ( ( ( BaseType_t ) 0 )  ) ;
            }
        }
        asm( "MOVF	POSTDEC1, 1, 0" ); if( INDF1 & 0x80  ) { INTCONbits.GIE_GIEH = 1; ; }  ;

        return xReturn;
    }

#line 5406 "Source/FreeRTOS/tasks.c"
 

#line 5409 "Source/FreeRTOS/tasks.c"

    uint32_t ulTaskGenericNotifyValueClear( TaskHandle_t xTask,
                                            UBaseType_t uxIndexToClear,
                                            uint32_t ulBitsToClear )
    {
        TCB_t * pxTCB;
        uint32_t ulReturn;

        
#line 5418 "Source/FreeRTOS/tasks.c"
 
        pxTCB = ( ( ( xTask ) == 0  ) ? pxCurrentTCB : ( xTask ) ) ;

        POSTINC1 = INTCON; INTCONbits.GIE_GIEH = 0;  ;
        {
            
#line 5424 "Source/FreeRTOS/tasks.c"
 
            ulReturn = pxTCB->ulNotifiedValue[ uxIndexToClear ];
            pxTCB->ulNotifiedValue[ uxIndexToClear ] &= ~ulBitsToClear;
        }
        asm( "MOVF	POSTDEC1, 1, 0" ); if( INDF1 & 0x80  ) { INTCONbits.GIE_GIEH = 1; ; }  ;

        return ulReturn;
    }

#line 5434 "Source/FreeRTOS/tasks.c"
 

#line 5437 "Source/FreeRTOS/tasks.c"
#line 5444 "Source/FreeRTOS/tasks.c"
 

#line 5447 "Source/FreeRTOS/tasks.c"
#line 5471 "Source/FreeRTOS/tasks.c"
 

static void prvAddCurrentTaskToDelayedList( TickType_t xTicksToWait,
                                            const BaseType_t xCanBlockIndefinitely )
{
    TickType_t xTimeToWake;
    const TickType_t xConstTickCount = xTickCount;

#line 5480 "Source/FreeRTOS/tasks.c"

#line 5483 "Source/FreeRTOS/tasks.c"
#line 5487 "Source/FreeRTOS/tasks.c"

    
#line 5489 "Source/FreeRTOS/tasks.c"
 
    if( uxListRemove( &( pxCurrentTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
    {
        
#line 5493 "Source/FreeRTOS/tasks.c"
 
         ;  
    }
    else
    {
         ;
    }

#line 5502 "Source/FreeRTOS/tasks.c"
    {
        if( ( xTicksToWait == ( TickType_t ) 0xffff  ) && ( xCanBlockIndefinitely != ( ( BaseType_t ) 0 )  ) )
        {
            
#line 5507 "Source/FreeRTOS/tasks.c"
 
            { ListItem_t * const pxIndex = ( &xSuspendedTaskList )->pxIndex;  ;  ; ( &( pxCurrentTCB->xStateListItem ) )->pxNext = pxIndex; ( &( pxCurrentTCB->xStateListItem ) )->pxPrevious = pxIndex->pxPrevious; pxIndex->pxPrevious->pxNext = ( &( pxCurrentTCB->xStateListItem ) ); pxIndex->pxPrevious = ( &( pxCurrentTCB->xStateListItem ) ); ( &( pxCurrentTCB->xStateListItem ) )->pvContainer  = ( &xSuspendedTaskList ); ( ( &xSuspendedTaskList )->uxNumberOfItems )++; } ;
        }
        else
        {
            
#line 5514 "Source/FreeRTOS/tasks.c"
 
            xTimeToWake = xConstTickCount + xTicksToWait;

             
            ( ( &( pxCurrentTCB->xStateListItem ) )->xItemValue = ( xTimeToWake ) ) ;

            if( xTimeToWake < xConstTickCount )
            {
                
#line 5523 "Source/FreeRTOS/tasks.c"
 
                vListInsert( pxOverflowDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );
            }
            else
            {
                
#line 5529 "Source/FreeRTOS/tasks.c"
 
                vListInsert( pxDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );

                
#line 5534 "Source/FreeRTOS/tasks.c"
 
                if( xTimeToWake < xNextTaskUnblockTime )
                {
                    xNextTaskUnblockTime = xTimeToWake;
                }
                else
                {
                     ;
                }
            }
        }
    }
#line 5547 "Source/FreeRTOS/tasks.c"

#line 5550 "Source/FreeRTOS/tasks.c"

#line 5568 "Source/FreeRTOS/tasks.c"
#line 5583 "Source/FreeRTOS/tasks.c"
}


#line 5587 "Source/FreeRTOS/tasks.c"
 

#line 5592 "Source/FreeRTOS/tasks.c"


#line 5595 "Source/FreeRTOS/tasks.c"
#line 5604 "Source/FreeRTOS/tasks.c"
#line 5606 "Source/FreeRTOS/tasks.c"
