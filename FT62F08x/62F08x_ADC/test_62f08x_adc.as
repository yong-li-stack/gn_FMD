opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 10920"

opt pagewidth 120

	opt pm

	processor	16F1938
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
indf1	equ	1
pc	equ	2
pcl	equ	2
status	equ	3
fsr0l	equ	4
fsr0h	equ	5
fsr1l	equ	6
fsr1h	equ	7
bsr	equ	8
wreg	equ	9
intcon	equ	11
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_POWER_INITIAL
	FNCALL	_main,_ADC_INITIAL
	FNCALL	_main,_GET_ADC_DATA
	FNCALL	_main,___lmul
	FNCALL	_GET_ADC_DATA,_DelayUs
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_ad3nop
	global	_ad3nop_absaddr
_ad3nop_absaddr	set	0x3
	global	_ad3nop
	global	_ad3nop_absaddr
_ad3nop_absaddr	set	0x3
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
psect	_ad3nop_text,class=CODE,delta=2
global __p_ad3nop_text
__p_ad3nop_text:
psect	strings
psect	_ad3nop_text
_ad3nop:
psect	strings
psect	_ad3nop_text
psect	strings
psect	_ad3nop_text
	retlw	0
	global	_theVoltage
	global	_adcData
	global	_ADDLY
psect	strings
psect	_ad3nop_text
_ADDLY	set	31
	global	_INTCON
psect	strings
psect	_ad3nop_text
_INTCON	set	11
	global	_PORTA
psect	strings
psect	_ad3nop_text
_PORTA	set	12
	global	_PORTB
psect	strings
psect	_ad3nop_text
_PORTB	set	13
	global	_PORTC
psect	strings
psect	_ad3nop_text
_PORTC	set	14
	global	_PORTD
psect	strings
psect	_ad3nop_text
_PORTD	set	15
	global	_ADCON0
psect	strings
psect	_ad3nop_text
_ADCON0	set	157
	global	_ADCON1
psect	strings
psect	_ad3nop_text
_ADCON1	set	158
	global	_ADCON2
psect	strings
psect	_ad3nop_text
_ADCON2	set	159
	global	_ADRESH
psect	strings
psect	_ad3nop_text
_ADRESH	set	156
	global	_ADRESL
psect	strings
psect	_ad3nop_text
_ADRESL	set	155
	global	_OSCCON
psect	strings
psect	_ad3nop_text
_OSCCON	set	153
	global	_PCKEN
psect	strings
psect	_ad3nop_text
_PCKEN	set	154
	global	_TRISA
psect	strings
psect	_ad3nop_text
_TRISA	set	140
	global	_TRISB
psect	strings
psect	_ad3nop_text
_TRISB	set	141
	global	_TRISC
psect	strings
psect	_ad3nop_text
_TRISC	set	142
	global	_TRISD
psect	strings
psect	_ad3nop_text
_TRISD	set	143
	global	_ADCAL
psect	strings
psect	_ad3nop_text
_ADCAL	set	1259
	global	_ADON
psect	strings
psect	_ad3nop_text
_ADON	set	1256
	global	_GO
psect	strings
psect	_ad3nop_text
_GO	set	1257
	global	_PSRC0
psect	strings
psect	_ad3nop_text
_PSRC0	set	282
	global	_PSRC1
psect	strings
psect	_ad3nop_text
_PSRC1	set	283
	global	_ANSELA
psect	strings
psect	_ad3nop_text
_ANSELA	set	407
	global	_PSINK0
psect	strings
psect	_ad3nop_text
_PSINK0	set	410
	global	_PSINK1
psect	strings
psect	_ad3nop_text
_PSINK1	set	411
	global	_PSINK2
psect	strings
psect	_ad3nop_text
_PSINK2	set	412
	global	_PSINK3
psect	strings
psect	_ad3nop_text
_PSINK3	set	413
	global	_WPUA
psect	strings
psect	_ad3nop_text
_WPUA	set	396
	global	_WPUB
psect	strings
psect	_ad3nop_text
_WPUB	set	397
	global	_WPUC
psect	strings
psect	_ad3nop_text
_WPUC	set	398
	global	_WPUD
psect	strings
psect	_ad3nop_text
_WPUD	set	399
	global	_WPDA
psect	strings
psect	_ad3nop_text
_WPDA	set	524
	global	_WPDB
psect	strings
psect	_ad3nop_text
_WPDB	set	525
	global	_WPDC
psect	strings
psect	_ad3nop_text
_WPDC	set	526
	global	_WPDD
psect	strings
psect	_ad3nop_text
_WPDD	set	527
	global	_ADCMPH
psect	strings
psect	_ad3nop_text
_ADCMPH	set	1051
	global	_ADCON3
psect	strings
psect	_ad3nop_text
_ADCON3	set	1050
psect	strings
psect	_ad3nop_text
psect	strings
psect	_ad3nop_text
	file	"test_62f08x_adc.as"
psect	strings
psect	_ad3nop_text
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_adcData:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_theVoltage:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	global __pbssBANK0
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
movlb 0
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	??_ISR
??_ISR:	; 0 bytes @ 0x0
	global	?_POWER_INITIAL
?_POWER_INITIAL:	; 0 bytes @ 0x0
	global	??_POWER_INITIAL
??_POWER_INITIAL:	; 0 bytes @ 0x0
	global	?_DelayUs
?_DelayUs:	; 0 bytes @ 0x0
	global	??_DelayUs
??_DelayUs:	; 0 bytes @ 0x0
	global	?_ADC_INITIAL
?_ADC_INITIAL:	; 0 bytes @ 0x0
	global	??_ADC_INITIAL
??_ADC_INITIAL:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___lmul
?___lmul:	; 4 bytes @ 0x0
	global	DelayUs@Time
DelayUs@Time:	; 1 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
	ds	1
	global	DelayUs@a
DelayUs@a:	; 1 bytes @ 0x1
	ds	1
	global	?_GET_ADC_DATA
?_GET_ADC_DATA:	; 2 bytes @ 0x2
	ds	2
	global	??_GET_ADC_DATA
??_GET_ADC_DATA:	; 0 bytes @ 0x4
	global	GET_ADC_DATA@adcChannel
GET_ADC_DATA@adcChannel:	; 1 bytes @ 0x4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
	ds	4
	global	??___lmul
??___lmul:	; 0 bytes @ 0x8
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x8
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	4
;;Data sizes: Strings 0, constant 0, data 0, bss 4, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     12      14
;; BANK0           80      4       6
;; BANK1           80      0       0
;; BANK2           80      0       0
;; BANK3           80      0       0
;; BANK4           80      0       0
;; BANK5           80      0       0
;; BANK6           80      0       0
;; BANK7           80      0       0
;; BANK8           80      0       0
;; BANK9           80      0       0
;; BANK10          80      0       0
;; BANK11          80      0       0
;; BANK12          48      0       0

;;
;; Pointer list with targets:

;; ?___lmul	unsigned long  size(1) Largest target is 0
;;
;; ?_GET_ADC_DATA	unsigned int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___lmul
;;   _GET_ADC_DATA->_DelayUs
;;
;; Critical Paths under _ISR in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK2
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK4
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK4
;;
;;   None.
;;
;; Critical Paths under _main in BANK5
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK5
;;
;;   None.
;;
;; Critical Paths under _main in BANK6
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK6
;;
;;   None.
;;
;; Critical Paths under _main in BANK7
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK7
;;
;;   None.
;;
;; Critical Paths under _main in BANK8
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK8
;;
;;   None.
;;
;; Critical Paths under _main in BANK9
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK9
;;
;;   None.
;;
;; Critical Paths under _main in BANK10
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK10
;;
;;   None.
;;
;; Critical Paths under _main in BANK11
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK11
;;
;;   None.
;;
;; Critical Paths under _main in BANK12
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK12
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 4     4      0     160
;;                                              0 BANK0      4     4      0
;;                      _POWER_INITIAL
;;                        _ADC_INITIAL
;;                       _GET_ADC_DATA
;;                             ___lmul
;; ---------------------------------------------------------------------------------
;; (1) _GET_ADC_DATA                                         3     1      2      68
;;                                              2 COMMON     3     1      2
;;                            _DelayUs
;; ---------------------------------------------------------------------------------
;; (1) _ADC_INITIAL                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _DelayUs                                              2     2      0      46
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) ___lmul                                              12     4      8      92
;;                                              0 COMMON    12     4      8
;; ---------------------------------------------------------------------------------
;; (1) _POWER_INITIAL                                        0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (3) _ISR                                                  0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _POWER_INITIAL
;;   _ADC_INITIAL
;;   _GET_ADC_DATA
;;     _DelayUs
;;   ___lmul
;;
;; _ISR (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BIGRAM             3F0      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;BITCOMMON            E      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;COMMON               E      C       E       2      100.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR2              0      0       0       3        0.0%
;;SFR2                 0      0       0       3        0.0%
;;STACK                0      0       2       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      4       6       5        7.5%
;;BITSFR4              0      0       0       5        0.0%
;;SFR4                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BITSFR5              0      0       0       6        0.0%
;;SFR5                 0      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITSFR6              0      0       0       7        0.0%
;;SFR6                 0      0       0       7        0.0%
;;BITBANK2            50      0       0       8        0.0%
;;BITSFR7              0      0       0       8        0.0%
;;SFR7                 0      0       0       8        0.0%
;;BANK2               50      0       0       9        0.0%
;;BITSFR8              0      0       0       9        0.0%
;;SFR8                 0      0       0       9        0.0%
;;BITBANK3            50      0       0      10        0.0%
;;BITSFR9              0      0       0      10        0.0%
;;SFR9                 0      0       0      10        0.0%
;;BANK3               50      0       0      11        0.0%
;;BITSFR10             0      0       0      11        0.0%
;;SFR10                0      0       0      11        0.0%
;;BITBANK4            50      0       0      12        0.0%
;;BITSFR11             0      0       0      12        0.0%
;;SFR11                0      0       0      12        0.0%
;;BANK4               50      0       0      13        0.0%
;;BITSFR12             0      0       0      13        0.0%
;;SFR12                0      0       0      13        0.0%
;;BITBANK5            50      0       0      14        0.0%
;;BITSFR13             0      0       0      14        0.0%
;;SFR13                0      0       0      14        0.0%
;;BANK5               50      0       0      15        0.0%
;;BITSFR14             0      0       0      15        0.0%
;;SFR14                0      0       0      15        0.0%
;;BITBANK6            50      0       0      16        0.0%
;;BITSFR15             0      0       0      16        0.0%
;;SFR15                0      0       0      16        0.0%
;;BANK6               50      0       0      17        0.0%
;;BITSFR16             0      0       0      17        0.0%
;;SFR16                0      0       0      17        0.0%
;;BITBANK7            50      0       0      18        0.0%
;;BITSFR17             0      0       0      18        0.0%
;;SFR17                0      0       0      18        0.0%
;;BANK7               50      0       0      19        0.0%
;;BITSFR18             0      0       0      19        0.0%
;;SFR18                0      0       0      19        0.0%
;;BITSFR19             0      0       0      20        0.0%
;;SFR19                0      0       0      20        0.0%
;;ABS                  0      0      14      20        0.0%
;;BITBANK8            50      0       0      21        0.0%
;;BITSFR20             0      0       0      21        0.0%
;;SFR20                0      0       0      21        0.0%
;;BANK8               50      0       0      22        0.0%
;;BITSFR21             0      0       0      22        0.0%
;;SFR21                0      0       0      22        0.0%
;;BITBANK9            50      0       0      23        0.0%
;;BITSFR22             0      0       0      23        0.0%
;;SFR22                0      0       0      23        0.0%
;;BANK9               50      0       0      24        0.0%
;;BITSFR23             0      0       0      24        0.0%
;;SFR23                0      0       0      24        0.0%
;;BITBANK10           50      0       0      25        0.0%
;;BITSFR24             0      0       0      25        0.0%
;;SFR24                0      0       0      25        0.0%
;;BANK10              50      0       0      26        0.0%
;;BITSFR25             0      0       0      26        0.0%
;;SFR25                0      0       0      26        0.0%
;;BITBANK11           50      0       0      27        0.0%
;;BITSFR26             0      0       0      27        0.0%
;;SFR26                0      0       0      27        0.0%
;;BANK11              50      0       0      28        0.0%
;;BITSFR27             0      0       0      28        0.0%
;;SFR27                0      0       0      28        0.0%
;;BITBANK12           30      0       0      29        0.0%
;;BITSFR28             0      0       0      29        0.0%
;;SFR28                0      0       0      29        0.0%
;;BANK12              30      0       0      30        0.0%
;;BITSFR29             0      0       0      30        0.0%
;;SFR29                0      0       0      30        0.0%
;;BITSFR30             0      0       0      31        0.0%
;;SFR30                0      0       0      31        0.0%
;;DATA                 0      0      16      31        0.0%
;;BITSFR31             0      0       0      32        0.0%
;;SFR31                0      0       0      32        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 261 in file "TEST_62F08x_ADC.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_POWER_INITIAL
;;		_ADC_INITIAL
;;		_GET_ADC_DATA
;;		___lmul
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"TEST_62F08x_ADC.C"
	line	261
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 13
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	262
	
l4603:	
;TEST_62F08x_ADC.C: 262: POWER_INITIAL();
	fcall	_POWER_INITIAL
	line	263
;TEST_62F08x_ADC.C: 263: ADC_INITIAL();
	fcall	_ADC_INITIAL
	line	265
;TEST_62F08x_ADC.C: 265: while(1)
	
l2391:	
	line	267
;TEST_62F08x_ADC.C: 266: {
;TEST_62F08x_ADC.C: 267: adcData = GET_ADC_DATA(0);
	movlw	(0)
	fcall	_GET_ADC_DATA
	movf	(1+(?_GET_ADC_DATA)),w
	movwf	(_adcData+1)	;volatile
	movf	(0+(?_GET_ADC_DATA)),w
	movwf	(_adcData)	;volatile
	line	268
;TEST_62F08x_ADC.C: 268: theVoltage = (unsigned long)adcData*2*1000/4096;
	movf	(_adcData),w	;volatile
	movwf	(?___lmul)
	movf	(_adcData+1),w	;volatile
	movwf	((?___lmul))+1
	clrf	2+((?___lmul))
	clrf	3+((?___lmul))
	lslf	(?___lmul),f
	rlf	(?___lmul+1),f
	rlf	(?___lmul+2),f
	rlf	(?___lmul+3),f
	movlw	0
	movwf	3+(?___lmul)+04h
	movlw	0
	movwf	2+(?___lmul)+04h
	movlw	03h
	movwf	1+(?___lmul)+04h
	movlw	0E8h
	movwf	0+(?___lmul)+04h

	fcall	___lmul
	movf	(0+?___lmul),w
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(1+?___lmul),w
	movwf	((??_main+0)+0+1)
	movf	(2+?___lmul),w
	movwf	((??_main+0)+0+2)
	movf	(3+?___lmul),w
	movwf	((??_main+0)+0+3)
	movlw	0Ch
u125:
	lsrf	(??_main+0)+3,f
	rrf	(??_main+0)+2,f
	rrf	(??_main+0)+1,f
	rrf	(??_main+0)+0,f
u120:
	decfsz	wreg,f
	goto	u125
	movf	1+(??_main+0)+0,w
	movwf	(_theVoltage+1)	;volatile
	movf	0+(??_main+0)+0,w
	movwf	(_theVoltage)	;volatile
	line	269
	
l4605:	
;TEST_62F08x_ADC.C: 269: _nop();
	nop
	line	270
	
l4607:	
;TEST_62F08x_ADC.C: 270: _nop();
	nop
	goto	l2391
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	272
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_GET_ADC_DATA
psect	text143,local,class=CODE,delta=2
global __ptext143
__ptext143:

;; *************** function _GET_ADC_DATA *****************
;; Defined at:
;;		line 243 in file "TEST_62F08x_ADC.C"
;; Parameters:    Size  Location     Type
;;  adcChannel      1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  adcChannel      1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/1
;;		On exit  : 1F/1
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DelayUs
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text143
	file	"TEST_62F08x_ADC.C"
	line	243
	global	__size_of_GET_ADC_DATA
	__size_of_GET_ADC_DATA	equ	__end_of_GET_ADC_DATA-_GET_ADC_DATA
	
_GET_ADC_DATA:	
	opt	stack 13
; Regs used in _GET_ADC_DATA: [wreg+status,2+status,0+pclath+cstack]
;GET_ADC_DATA@adcChannel stored from wreg
	movwf	(GET_ADC_DATA@adcChannel)
	line	244
	
l4589:	
;TEST_62F08x_ADC.C: 244: ADCON0 &= 0B00001111;
	movlw	(0Fh)
	movlb 1	; select bank1
	andwf	(157)^080h,f	;volatile
	line	245
;TEST_62F08x_ADC.C: 245: ADCON0 |= adcChannel<<4;
	swapf	(GET_ADC_DATA@adcChannel),w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	(157)^080h,f	;volatile
	line	246
	
l4591:	
;TEST_62F08x_ADC.C: 246: DelayUs(40);
	movlw	(028h)
	fcall	_DelayUs
	line	247
	
l4593:	
;TEST_62F08x_ADC.C: 247: GO = 1;
	movlb 1	; select bank1
	bsf	(1257/8)^080h,(1257)&7
	line	248
	
l4595:	
;TEST_62F08x_ADC.C: 248: _nop();
	nop
	line	249
	
l4597:	
;TEST_62F08x_ADC.C: 249: _nop();
	nop
	line	250
;TEST_62F08x_ADC.C: 250: while(GO);
	
l2385:	
	movlb 1	; select bank1
	btfsc	(1257/8)^080h,(1257)&7
	goto	u111
	goto	u110
u111:
	goto	l2385
u110:
	line	252
	
l4599:	
;TEST_62F08x_ADC.C: 252: return (unsigned int)(ADRESH<<8|ADRESL);
	movf	(156)^080h,w	;volatile
	movwf	(?_GET_ADC_DATA+1)
	clrf	(?_GET_ADC_DATA)
	movf	(155)^080h,w	;volatile
	iorwf	(?_GET_ADC_DATA),f
	line	253
	
l2388:	
	return
	opt stack 0
GLOBAL	__end_of_GET_ADC_DATA
	__end_of_GET_ADC_DATA:
;; =============== function _GET_ADC_DATA ends ============

	signat	_GET_ADC_DATA,4218
	global	_ADC_INITIAL
psect	text144,local,class=CODE,delta=2
global __ptext144
__ptext144:

;; *************** function _ADC_INITIAL *****************
;; Defined at:
;;		line 104 in file "TEST_62F08x_ADC.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/3
;;		On exit  : 1F/1
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text144
	file	"TEST_62F08x_ADC.C"
	line	104
	global	__size_of_ADC_INITIAL
	__size_of_ADC_INITIAL	equ	__end_of_ADC_INITIAL-_ADC_INITIAL
	
_ADC_INITIAL:	
	opt	stack 14
; Regs used in _ADC_INITIAL: [wreg+status,2]
	line	106
	
l4579:	
;TEST_62F08x_ADC.C: 106: ANSELA = 0B00000001;
	movlw	(01h)
	movwf	(407)^0180h	;volatile
	line	108
;TEST_62F08x_ADC.C: 108: ADCON1 = 0B11100100;
	movlw	(0E4h)
	movlb 1	; select bank1
	movwf	(158)^080h	;volatile
	line	135
	
l4581:	
;TEST_62F08x_ADC.C: 135: ADCON0 = 0B00000000;
	clrf	(157)^080h	;volatile
	line	167
	
l4583:	
;TEST_62F08x_ADC.C: 167: ADCON2 = 0B01000000;
	movlw	(040h)
	movwf	(159)^080h	;volatile
	line	195
;TEST_62F08x_ADC.C: 195: ADCON3 = 0B00000000;
	movlb 8	; select bank8
	clrf	(1050)^0400h	;volatile
	line	222
;TEST_62F08x_ADC.C: 222: ADDLY = 0B00000000;
	movlb 0	; select bank0
	clrf	(31)	;volatile
	line	227
;TEST_62F08x_ADC.C: 227: ADCMPH = 0B00000000;
	movlb 8	; select bank8
	clrf	(1051)^0400h	;volatile
	line	230
	
l4585:	
;TEST_62F08x_ADC.C: 230: ADCAL=1;
	movlb 1	; select bank1
	bsf	(1259/8)^080h,(1259)&7
	line	231
	
l4587:	
;TEST_62F08x_ADC.C: 231: _nop();
	nop
	line	232
;TEST_62F08x_ADC.C: 232: while(ADCAL);
	
l2379:	
	movlb 1	; select bank1
	btfsc	(1259/8)^080h,(1259)&7
	goto	u101
	goto	u100
u101:
	goto	l2379
u100:
	
l2381:	
	line	234
;TEST_62F08x_ADC.C: 234: ADON=1;
	bsf	(1256/8)^080h,(1256)&7
	line	235
	
l2382:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_INITIAL
	__end_of_ADC_INITIAL:
;; =============== function _ADC_INITIAL ends ============

	signat	_ADC_INITIAL,88
	global	_DelayUs
psect	text145,local,class=CODE,delta=2
global __ptext145
__ptext145:

;; *************** function _DelayUs *****************
;; Defined at:
;;		line 90 in file "TEST_62F08x_ADC.C"
;; Parameters:    Size  Location     Type
;;  Time            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Time            1    0[COMMON] unsigned char 
;;  a               1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_GET_ADC_DATA
;; This function uses a non-reentrant model
;;
psect	text145
	file	"TEST_62F08x_ADC.C"
	line	90
	global	__size_of_DelayUs
	__size_of_DelayUs	equ	__end_of_DelayUs-_DelayUs
	
_DelayUs:	
	opt	stack 13
; Regs used in _DelayUs: [wreg+status,2+status,0]
;DelayUs@Time stored from wreg
	line	92
	movwf	(DelayUs@Time)
	
l4573:	
;TEST_62F08x_ADC.C: 91: unsigned char a;
;TEST_62F08x_ADC.C: 92: for(a=0;a<Time;a++)
	clrf	(DelayUs@a)
	goto	l4577
	line	93
	
l2374:	
	line	94
;TEST_62F08x_ADC.C: 93: {
;TEST_62F08x_ADC.C: 94: _nop();
	nop
	line	92
	
l4575:	
	incf	(DelayUs@a),f
	
l4577:	
	movf	(DelayUs@Time),w
	subwf	(DelayUs@a),w
	skipc
	goto	u91
	goto	u90
u91:
	goto	l2374
u90:
	line	96
	
l2376:	
	return
	opt stack 0
GLOBAL	__end_of_DelayUs
	__end_of_DelayUs:
;; =============== function _DelayUs ends ============

	signat	_DelayUs,4216
	global	___lmul
psect	text146,local,class=CODE,delta=2
global __ptext146
__ptext146:

;; *************** function ___lmul *****************
;; Defined at:
;;		line 3 in file "d:\program files (x86)\fmd\fmdide\data\sources\lmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4    0[COMMON] unsigned long 
;;  multiplicand    4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4    8[COMMON] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 1F/1
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         8       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text146
	file	"d:\program files (x86)\fmd\fmdide\data\sources\lmul.c"
	line	3
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:	
	opt	stack 14
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	4
	
l4561:	
	clrf	(___lmul@product)
	clrf	(___lmul@product+1)
	clrf	(___lmul@product+2)
	clrf	(___lmul@product+3)
	line	6
	
l4144:	
	line	7
	btfss	(___lmul@multiplier),(0)&7
	goto	u71
	goto	u70
u71:
	goto	l4565
u70:
	line	8
	
l4563:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	addwfc	(___lmul@product+1),f
	movf	(___lmul@multiplicand+2),w
	addwfc	(___lmul@product+2),f
	movf	(___lmul@multiplicand+3),w
	addwfc	(___lmul@product+3),f
	line	9
	
l4565:	
	lslf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	line	10
	
l4567:	
	lsrf	(___lmul@multiplier+3),f
	rrf	(___lmul@multiplier+2),f
	rrf	(___lmul@multiplier+1),f
	rrf	(___lmul@multiplier),f
	line	11
	movf	(___lmul@multiplier+3),w
	iorwf	(___lmul@multiplier+2),w
	iorwf	(___lmul@multiplier+1),w
	iorwf	(___lmul@multiplier),w
	skipz
	goto	u81
	goto	u80
u81:
	goto	l4144
u80:
	line	12
	
l4569:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	line	13
	
l4147:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
;; =============== function ___lmul ends ============

	signat	___lmul,8316
	global	_POWER_INITIAL
psect	text147,local,class=CODE,delta=2
global __ptext147
__ptext147:

;; *************** function _POWER_INITIAL *****************
;; Defined at:
;;		line 39 in file "TEST_62F08x_ADC.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/3
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text147
	file	"TEST_62F08x_ADC.C"
	line	39
	global	__size_of_POWER_INITIAL
	__size_of_POWER_INITIAL	equ	__end_of_POWER_INITIAL-_POWER_INITIAL
	
_POWER_INITIAL:	
	opt	stack 14
; Regs used in _POWER_INITIAL: [wreg+status,2]
	line	40
	
l4529:	
;TEST_62F08x_ADC.C: 40: OSCCON = 0B01110001;
	movlw	(071h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	47
	
l4531:	
;TEST_62F08x_ADC.C: 47: PCKEN |=0B00000001;
	bsf	(154)^080h+(0/8),(0)&7	;volatile
	line	49
	
l4533:	
;TEST_62F08x_ADC.C: 49: INTCON = 0;
	clrf	(11)	;volatile
	line	51
	
l4535:	
;TEST_62F08x_ADC.C: 51: PORTA = 0B00000000;
	movlb 0	; select bank0
	clrf	(12)	;volatile
	line	52
;TEST_62F08x_ADC.C: 52: TRISA = 0B11111111;
	movlw	(0FFh)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	53
	
l4537:	
;TEST_62F08x_ADC.C: 53: PORTB = 0B00000000;
	movlb 0	; select bank0
	clrf	(13)	;volatile
	line	54
	
l4539:	
;TEST_62F08x_ADC.C: 54: TRISB = 0B11111111;
	movlw	(0FFh)
	movlb 1	; select bank1
	movwf	(141)^080h	;volatile
	line	55
;TEST_62F08x_ADC.C: 55: PORTC = 0B00000000;
	movlb 0	; select bank0
	clrf	(14)	;volatile
	line	56
	
l4541:	
;TEST_62F08x_ADC.C: 56: TRISC = 0B11111111;
	movlw	(0FFh)
	movlb 1	; select bank1
	movwf	(142)^080h	;volatile
	line	57
	
l4543:	
;TEST_62F08x_ADC.C: 57: PORTD = 0B00000000;
	movlb 0	; select bank0
	clrf	(15)	;volatile
	line	58
;TEST_62F08x_ADC.C: 58: TRISD = 0B11111111;
	movlw	(0FFh)
	movlb 1	; select bank1
	movwf	(143)^080h	;volatile
	line	60
	
l4545:	
;TEST_62F08x_ADC.C: 60: WPUA = 0B00000000;
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	61
	
l4547:	
;TEST_62F08x_ADC.C: 61: WPUB = 0B00000000;
	clrf	(397)^0180h	;volatile
	line	62
	
l4549:	
;TEST_62F08x_ADC.C: 62: WPUC = 0B00000000;
	clrf	(398)^0180h	;volatile
	line	63
	
l4551:	
;TEST_62F08x_ADC.C: 63: WPUD = 0B00000000;
	clrf	(399)^0180h	;volatile
	line	65
	
l4553:	
;TEST_62F08x_ADC.C: 65: WPDA = 0B00000000;
	movlb 4	; select bank4
	clrf	(524)^0200h	;volatile
	line	66
	
l4555:	
;TEST_62F08x_ADC.C: 66: WPDB = 0B00000000;
	clrf	(525)^0200h	;volatile
	line	67
	
l4557:	
;TEST_62F08x_ADC.C: 67: WPDC = 0B00000000;
	clrf	(526)^0200h	;volatile
	line	68
	
l4559:	
;TEST_62F08x_ADC.C: 68: WPDD = 0B00000000;
	clrf	(527)^0200h	;volatile
	line	70
;TEST_62F08x_ADC.C: 70: PSRC0 = 0B11111111;
	movlw	(0FFh)
	movlb 2	; select bank2
	movwf	(282)^0100h	;volatile
	line	74
;TEST_62F08x_ADC.C: 74: PSRC1 = 0B11111111;
	movlw	(0FFh)
	movwf	(283)^0100h	;volatile
	line	78
;TEST_62F08x_ADC.C: 78: PSINK0 = 0B11111111;
	movlw	(0FFh)
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	79
;TEST_62F08x_ADC.C: 79: PSINK1 = 0B11111111;
	movlw	(0FFh)
	movwf	(411)^0180h	;volatile
	line	80
;TEST_62F08x_ADC.C: 80: PSINK2 = 0B11111111;
	movlw	(0FFh)
	movwf	(412)^0180h	;volatile
	line	81
;TEST_62F08x_ADC.C: 81: PSINK3 = 0B11111111;
	movlw	(0FFh)
	movwf	(413)^0180h	;volatile
	line	82
	
l2370:	
	return
	opt stack 0
GLOBAL	__end_of_POWER_INITIAL
	__end_of_POWER_INITIAL:
;; =============== function _POWER_INITIAL ends ============

	signat	_POWER_INITIAL,88
	global	_ISR
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:

;; *************** function _ISR *****************
;; Defined at:
;;		line 29 in file "TEST_62F08x_ADC.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFFFFFFF/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry
	file	"TEST_62F08x_ADC.C"
	line	29
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 13
; Regs used in _ISR: []
psect	intentry
	pagesel	$
	line	31
	
i1l2367:	
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
psect	intentry
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
