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
	FNCALL	_main,_TIMER4_INITIAL
	FNCALL	_main,_TIMER2_INITIAL
	FNROOT	_main
	FNCALL	_ISR,_SendCtrl
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_IRData
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"TEST_62F08x_IR_SEND.C"
	line	44

;initializer for _IRData
	retlw	0
	retlw	0FFh
	retlw	040h
	retlw	0BFh
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
	global	_SYSTime5S
	global	_IRSendData
	global	_IRSendStatus
	global	_SaveLastBit
	global	_Sendbit
	global	_TxBit
	global	_TxTime
	global	_level0
	global	_level1
	global	_SendLastBit
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
	global	_GIE
psect	strings
psect	_ad3nop_text
_GIE	set	95
	global	_RB3
psect	strings
psect	_ad3nop_text
_RB3	set	107
	global	_CKOCON
psect	strings
psect	_ad3nop_text
_CKOCON	set	149
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
	global	_PSRC0
psect	strings
psect	_ad3nop_text
_PSRC0	set	282
	global	_PSRC1
psect	strings
psect	_ad3nop_text
_PSRC1	set	283
	global	_TIM4ARR
psect	strings
psect	_ad3nop_text
_TIM4ARR	set	279
	global	_TIM4CNTR
psect	strings
psect	_ad3nop_text
_TIM4CNTR	set	277
	global	_TIM4CR1
psect	strings
psect	_ad3nop_text
_TIM4CR1	set	273
	global	_TIM4EGR
psect	strings
psect	_ad3nop_text
_TIM4EGR	set	276
	global	_TIM4IER
psect	strings
psect	_ad3nop_text
_TIM4IER	set	274
	global	_TIM4PSCR
psect	strings
psect	_ad3nop_text
_TIM4PSCR	set	278
	global	_TIM4SR
psect	strings
psect	_ad3nop_text
_TIM4SR	set	275
	global	_T4UIE
psect	strings
psect	_ad3nop_text
_T4UIE	set	2192
	global	_T4UIF
psect	strings
psect	_ad3nop_text
_T4UIF	set	2200
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
	global	_TCKSRC
psect	strings
psect	_ad3nop_text
_TCKSRC	set	799
	global	_TIM2ARRH
psect	strings
psect	_ad3nop_text
_TIM2ARRH	set	793
	global	_TIM2ARRL
psect	strings
psect	_ad3nop_text
_TIM2ARRL	set	794
	global	_TIM2CR1
psect	strings
psect	_ad3nop_text
_TIM2CR1	set	780
	global	_TIM2IER
psect	strings
psect	_ad3nop_text
_TIM2IER	set	781
	global	_T2UIE
psect	strings
psect	_ad3nop_text
_T2UIE	set	6248
	global	_T2UIF
psect	strings
psect	_ad3nop_text
_T2UIF	set	6256
psect	strings
psect	_ad3nop_text
psect	strings
psect	_ad3nop_text
	file	"test_62f08x_ir_send.as"
psect	strings
psect	_ad3nop_text
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssCOMMON,class=COMMON,bit,space=1
global __pbitbssCOMMON
__pbitbssCOMMON:
_SendLastBit:
       ds      1

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_SYSTime5S:
       ds      2

_IRSendData:
       ds      1

_IRSendStatus:
       ds      1

_SaveLastBit:
       ds      1

_Sendbit:
       ds      1

_TxBit:
       ds      1

_TxTime:
       ds      1

_level0:
       ds      1

_level1:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"TEST_62F08x_IR_SEND.C"
_IRData:
       ds      4

; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2
	global __pbitbssCOMMON
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
	clrf	((__pbssCOMMON)+5)&07Fh
	clrf	((__pbssCOMMON)+6)&07Fh
	clrf	((__pbssCOMMON)+7)&07Fh
	clrf	((__pbssCOMMON)+8)&07Fh
	clrf	((__pbssCOMMON)+9)&07Fh
; Initialize objects allocated to BANK0
	global __pidataBANK0,__pdataBANK0
psect cinit,class=CODE,delta=2
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	fcall	__pidataBANK0+3		;fetch initializer
	movwf	__pdataBANK0+3&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
movlb 0
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_POWER_INITIAL
?_POWER_INITIAL:	; 0 bytes @ 0x0
	global	?_TIMER4_INITIAL
?_TIMER4_INITIAL:	; 0 bytes @ 0x0
	global	?_TIMER2_INITIAL
?_TIMER2_INITIAL:	; 0 bytes @ 0x0
	global	?_SendCtrl
?_SendCtrl:	; 0 bytes @ 0x0
	global	??_SendCtrl
??_SendCtrl:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	3
	global	??_ISR
??_ISR:	; 0 bytes @ 0x3
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_POWER_INITIAL
??_POWER_INITIAL:	; 0 bytes @ 0x0
	global	??_TIMER4_INITIAL
??_TIMER4_INITIAL:	; 0 bytes @ 0x0
	global	??_TIMER2_INITIAL
??_TIMER2_INITIAL:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
;;Data sizes: Strings 0, constant 0, data 4, bss 10, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      3      14
;; BANK0           80      0       4
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



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _ISR in COMMON
;;
;;   _ISR->_SendCtrl
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0       0
;;                      _POWER_INITIAL
;;                     _TIMER4_INITIAL
;;                     _TIMER2_INITIAL
;; ---------------------------------------------------------------------------------
;; (1) _TIMER2_INITIAL                                       0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _TIMER4_INITIAL                                       0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _POWER_INITIAL                                        0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (2) _ISR                                                  0     0      0       0
;;                           _SendCtrl
;; ---------------------------------------------------------------------------------
;; (3) _SendCtrl                                             3     3      0       0
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _POWER_INITIAL
;;   _TIMER4_INITIAL
;;   _TIMER2_INITIAL
;;
;; _ISR (ROOT)
;;   _SendCtrl
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BIGRAM             3F0      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;BITCOMMON            E      0       1       1        7.1%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;COMMON               E      3       E       2      100.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR2              0      0       0       3        0.0%
;;SFR2                 0      0       0       3        0.0%
;;STACK                0      0       5       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       4       5        5.0%
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
;;ABS                  0      0      12      20        0.0%
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
;;DATA                 0      0      17      31        0.0%
;;BITSFR31             0      0       0      32        0.0%
;;SFR31                0      0       0      32        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 426 in file "TEST_62F08x_IR_SEND.C"
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
;;		On exit  : 179/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_POWER_INITIAL
;;		_TIMER4_INITIAL
;;		_TIMER2_INITIAL
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"TEST_62F08x_IR_SEND.C"
	line	426
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 13
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	427
	
l4859:	
;TEST_62F08x_IR_SEND.C: 427: POWER_INITIAL();
	fcall	_POWER_INITIAL
	line	428
;TEST_62F08x_IR_SEND.C: 428: TIMER4_INITIAL();
	fcall	_TIMER4_INITIAL
	line	429
;TEST_62F08x_IR_SEND.C: 429: TIMER2_INITIAL();
	fcall	_TIMER2_INITIAL
	line	430
	
l4861:	
;TEST_62F08x_IR_SEND.C: 430: GIE = 1;
	bsf	(95/8),(95)&7
	line	433
	
l4863:	
;TEST_62F08x_IR_SEND.C: 432: {
;TEST_62F08x_IR_SEND.C: 433: if(SYSTime5S >5000)
	movlw	high(01389h)
	subwf	(_SYSTime5S+1),w
	movlw	low(01389h)
	skipnz
	subwf	(_SYSTime5S),w
	skipc
	goto	u441
	goto	u440
u441:
	goto	l4863
u440:
	line	435
	
l4865:	
;TEST_62F08x_IR_SEND.C: 434: {
;TEST_62F08x_IR_SEND.C: 435: SYSTime5S = 0;
	clrf	(_SYSTime5S)
	clrf	(_SYSTime5S+1)
	line	436
	
l4867:	
;TEST_62F08x_IR_SEND.C: 436: IRSendStatus = 1;
	clrf	(_IRSendStatus)
	incf	(_IRSendStatus),f
	goto	l4863
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	440
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_TIMER2_INITIAL
psect	text206,local,class=CODE,delta=2
global __ptext206
__ptext206:

;; *************** function _TIMER2_INITIAL *****************
;; Defined at:
;;		line 175 in file "TEST_62F08x_IR_SEND.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/2
;;		On exit  : 17F/6
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text206
	file	"TEST_62F08x_IR_SEND.C"
	line	175
	global	__size_of_TIMER2_INITIAL
	__size_of_TIMER2_INITIAL	equ	__end_of_TIMER2_INITIAL-_TIMER2_INITIAL
	
_TIMER2_INITIAL:	
	opt	stack 13
; Regs used in _TIMER2_INITIAL: [wreg+status,2]
	line	176
	
l4849:	
;TEST_62F08x_IR_SEND.C: 176: CKOCON=0B00100000;
	movlw	(020h)
	movlb 1	; select bank1
	movwf	(149)^080h	;volatile
	line	177
;TEST_62F08x_IR_SEND.C: 177: TCKSRC=0B00110000;
	movlw	(030h)
	movlb 6	; select bank6
	movwf	(799)^0300h	;volatile
	line	202
;TEST_62F08x_IR_SEND.C: 202: TIM2CR1 =0B10000101;
	movlw	(085h)
	movwf	(780)^0300h	;volatile
	line	235
	
l4851:	
;TEST_62F08x_IR_SEND.C: 235: TIM2IER =0B00000000;
	clrf	(781)^0300h	;volatile
	line	265
	
l4853:	
;TEST_62F08x_IR_SEND.C: 265: TIM2ARRH =0x01;
	movlw	(01h)
	movwf	(793)^0300h	;volatile
	line	266
	
l4855:	
;TEST_62F08x_IR_SEND.C: 266: TIM2ARRL =0xA0;
	movlw	(0A0h)
	movwf	(794)^0300h	;volatile
	line	268
	
l4857:	
;TEST_62F08x_IR_SEND.C: 268: INTCON = 0B11000000;
	movlw	(0C0h)
	movwf	(11)	;volatile
	line	269
	
l2389:	
	return
	opt stack 0
GLOBAL	__end_of_TIMER2_INITIAL
	__end_of_TIMER2_INITIAL:
;; =============== function _TIMER2_INITIAL ends ============

	signat	_TIMER2_INITIAL,88
	global	_TIMER4_INITIAL
psect	text207,local,class=CODE,delta=2
global __ptext207
__ptext207:

;; *************** function _TIMER4_INITIAL *****************
;; Defined at:
;;		line 103 in file "TEST_62F08x_IR_SEND.C"
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
;;		On exit  : 17F/2
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text207
	file	"TEST_62F08x_IR_SEND.C"
	line	103
	global	__size_of_TIMER4_INITIAL
	__size_of_TIMER4_INITIAL	equ	__end_of_TIMER4_INITIAL-_TIMER4_INITIAL
	
_TIMER4_INITIAL:	
	opt	stack 13
; Regs used in _TIMER4_INITIAL: [wreg+status,2]
	line	108
	
l4837:	
;TEST_62F08x_IR_SEND.C: 108: TIM4CR1 =0B00000101;
	movlw	(05h)
	movlb 2	; select bank2
	movwf	(273)^0100h	;volatile
	line	139
;TEST_62F08x_IR_SEND.C: 139: TIM4IER =0B00000001;
	movlw	(01h)
	movwf	(274)^0100h	;volatile
	line	142
	
l4839:	
;TEST_62F08x_IR_SEND.C: 142: TIM4SR =0B00000000;
	clrf	(275)^0100h	;volatile
	line	151
	
l4841:	
;TEST_62F08x_IR_SEND.C: 151: TIM4EGR =0B00000000;
	clrf	(276)^0100h	;volatile
	line	156
	
l4843:	
;TEST_62F08x_IR_SEND.C: 156: TIM4CNTR=0;
	clrf	(277)^0100h	;volatile
	line	158
	
l4845:	
;TEST_62F08x_IR_SEND.C: 158: TIM4PSCR=0B00000110;
	movlw	(06h)
	movwf	(278)^0100h	;volatile
	line	163
	
l4847:	
;TEST_62F08x_IR_SEND.C: 163: TIM4ARR =140;
	movlw	(08Ch)
	movwf	(279)^0100h	;volatile
	line	166
	
l2386:	
	return
	opt stack 0
GLOBAL	__end_of_TIMER4_INITIAL
	__end_of_TIMER4_INITIAL:
;; =============== function _TIMER4_INITIAL ends ============

	signat	_TIMER4_INITIAL,88
	global	_POWER_INITIAL
psect	text208,local,class=CODE,delta=2
global __ptext208
__ptext208:

;; *************** function _POWER_INITIAL *****************
;; Defined at:
;;		line 53 in file "TEST_62F08x_IR_SEND.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text208
	file	"TEST_62F08x_IR_SEND.C"
	line	53
	global	__size_of_POWER_INITIAL
	__size_of_POWER_INITIAL	equ	__end_of_POWER_INITIAL-_POWER_INITIAL
	
_POWER_INITIAL:	
	opt	stack 13
; Regs used in _POWER_INITIAL: [wreg+status,2+status,0]
	line	54
	
l4785:	
;TEST_62F08x_IR_SEND.C: 54: OSCCON = 0B01110001;
	movlw	(071h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	55
	
l4787:	
;TEST_62F08x_IR_SEND.C: 55: PCKEN |=0B00001100;
	movlw	(0Ch)
	iorwf	(154)^080h,f	;volatile
	line	58
	
l4789:	
;TEST_62F08x_IR_SEND.C: 58: INTCON = 0;
	clrf	(11)	;volatile
	line	60
	
l4791:	
;TEST_62F08x_IR_SEND.C: 60: PORTA = 0B00000000;
	movlb 0	; select bank0
	clrf	(12)	;volatile
	line	61
	
l4793:	
;TEST_62F08x_IR_SEND.C: 61: TRISA = 0B11111111;
	movlw	(0FFh)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	62
	
l4795:	
;TEST_62F08x_IR_SEND.C: 62: PORTB = 0B00000000;
	movlb 0	; select bank0
	clrf	(13)	;volatile
	line	63
	
l4797:	
;TEST_62F08x_IR_SEND.C: 63: TRISB = 0B11110111;
	movlw	(0F7h)
	movlb 1	; select bank1
	movwf	(141)^080h	;volatile
	line	64
	
l4799:	
;TEST_62F08x_IR_SEND.C: 64: PORTC = 0B00000000;
	movlb 0	; select bank0
	clrf	(14)	;volatile
	line	65
	
l4801:	
;TEST_62F08x_IR_SEND.C: 65: TRISC = 0B11111111;
	movlw	(0FFh)
	movlb 1	; select bank1
	movwf	(142)^080h	;volatile
	line	66
	
l4803:	
;TEST_62F08x_IR_SEND.C: 66: PORTD = 0B00000000;
	movlb 0	; select bank0
	clrf	(15)	;volatile
	line	67
	
l4805:	
;TEST_62F08x_IR_SEND.C: 67: TRISD = 0B11111111;
	movlw	(0FFh)
	movlb 1	; select bank1
	movwf	(143)^080h	;volatile
	line	69
	
l4807:	
;TEST_62F08x_IR_SEND.C: 69: WPUA = 0B00000000;
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	70
	
l4809:	
;TEST_62F08x_IR_SEND.C: 70: WPUB = 0B00000000;
	clrf	(397)^0180h	;volatile
	line	71
	
l4811:	
;TEST_62F08x_IR_SEND.C: 71: WPUC = 0B00001000;
	movlw	(08h)
	movwf	(398)^0180h	;volatile
	line	72
	
l4813:	
;TEST_62F08x_IR_SEND.C: 72: WPUD = 0B00000000;
	clrf	(399)^0180h	;volatile
	line	74
	
l4815:	
;TEST_62F08x_IR_SEND.C: 74: WPDA = 0B00000000;
	movlb 4	; select bank4
	clrf	(524)^0200h	;volatile
	line	75
	
l4817:	
;TEST_62F08x_IR_SEND.C: 75: WPDB = 0B00000000;
	clrf	(525)^0200h	;volatile
	line	76
	
l4819:	
;TEST_62F08x_IR_SEND.C: 76: WPDC = 0B00000000;
	clrf	(526)^0200h	;volatile
	line	77
	
l4821:	
;TEST_62F08x_IR_SEND.C: 77: WPDD = 0B00000000;
	clrf	(527)^0200h	;volatile
	line	79
	
l4823:	
;TEST_62F08x_IR_SEND.C: 79: PSRC0 = 0B11111111;
	movlw	(0FFh)
	movlb 2	; select bank2
	movwf	(282)^0100h	;volatile
	line	83
	
l4825:	
;TEST_62F08x_IR_SEND.C: 83: PSRC1 = 0B11111111;
	movlw	(0FFh)
	movwf	(283)^0100h	;volatile
	line	87
	
l4827:	
;TEST_62F08x_IR_SEND.C: 87: PSINK0 = 0B11111111;
	movlw	(0FFh)
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	88
	
l4829:	
;TEST_62F08x_IR_SEND.C: 88: PSINK1 = 0B11111111;
	movlw	(0FFh)
	movwf	(411)^0180h	;volatile
	line	89
	
l4831:	
;TEST_62F08x_IR_SEND.C: 89: PSINK2 = 0B11111111;
	movlw	(0FFh)
	movwf	(412)^0180h	;volatile
	line	90
	
l4833:	
;TEST_62F08x_IR_SEND.C: 90: PSINK3 = 0B11111111;
	movlw	(0FFh)
	movwf	(413)^0180h	;volatile
	line	92
	
l4835:	
;TEST_62F08x_IR_SEND.C: 92: ANSELA = 0B00000000;
	clrf	(407)^0180h	;volatile
	line	93
	
l2383:	
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
;;		line 401 in file "TEST_62F08x_IR_SEND.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 19/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_SendCtrl
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry
	file	"TEST_62F08x_IR_SEND.C"
	line	401
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 13
; Regs used in _ISR: [wreg+fsr1l-status,0+pclath+cstack]
psect	intentry
	pagesel	$
	line	403
	
i1l4767:	
;TEST_62F08x_IR_SEND.C: 403: if(T4UIE && T4UIF)
	movlb 2	; select bank2
	btfss	(2192/8)^0100h,(2192)&7
	goto	u40_21
	goto	u40_20
u40_21:
	goto	i1l4777
u40_20:
	
i1l4769:	
	btfss	(2200/8)^0100h,(2200)&7
	goto	u41_21
	goto	u41_20
u41_21:
	goto	i1l4777
u41_20:
	line	405
	
i1l4771:	
;TEST_62F08x_IR_SEND.C: 404: {
;TEST_62F08x_IR_SEND.C: 405: T4UIF = 1;
	bsf	(2200/8)^0100h,(2200)&7
	line	407
	
i1l4773:	
;TEST_62F08x_IR_SEND.C: 407: SendCtrl();
	fcall	_SendCtrl
	line	408
	
i1l4775:	
;TEST_62F08x_IR_SEND.C: 408: SYSTime5S++;
	incf	(_SYSTime5S),f
	skipnz
	incf	(_SYSTime5S+1),f
	line	411
	
i1l4777:	
;TEST_62F08x_IR_SEND.C: 409: }
;TEST_62F08x_IR_SEND.C: 411: if(T2UIE && T2UIF)
	movlb 6	; select bank6
	btfss	(6248/8)^0300h,(6248)&7
	goto	u42_21
	goto	u42_20
u42_21:
	goto	i1l2427
u42_20:
	
i1l4779:	
	btfss	(6256/8)^0300h,(6256)&7
	goto	u43_21
	goto	u43_20
u43_21:
	goto	i1l2427
u43_20:
	line	413
	
i1l4781:	
;TEST_62F08x_IR_SEND.C: 412: {
;TEST_62F08x_IR_SEND.C: 413: T2UIF = 1;
	bsf	(6256/8)^0300h,(6256)&7
	line	415
	
i1l4783:	
;TEST_62F08x_IR_SEND.C: 415: RB3 = ~RB3;
	movlw	1<<((107)&7)
	movlb 0	; select bank0
	xorwf	((107)/8),f
	line	417
	
i1l2427:	
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
	global	_SendCtrl
psect	text210,local,class=CODE,delta=2
global __ptext210
__ptext210:

;; *************** function _SendCtrl *****************
;; Defined at:
;;		line 277 in file "TEST_62F08x_IR_SEND.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/2
;;		On exit  : 0/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text210
	file	"TEST_62F08x_IR_SEND.C"
	line	277
	global	__size_of_SendCtrl
	__size_of_SendCtrl	equ	__end_of_SendCtrl-_SendCtrl
	
_SendCtrl:	
	opt	stack 13
; Regs used in _SendCtrl: [wreg+fsr1l-status,0]
	line	279
	
i1l4671:	
;TEST_62F08x_IR_SEND.C: 279: if (IRSendStatus == 0)
	movf	(_IRSendStatus),f
	skipz
	goto	u23_21
	goto	u23_20
u23_21:
	goto	i1l4677
u23_20:
	line	281
	
i1l4673:	
;TEST_62F08x_IR_SEND.C: 280: {
;TEST_62F08x_IR_SEND.C: 281: T2UIE = 0;
	movlb 6	; select bank6
	bcf	(6248/8)^0300h,(6248)&7
	line	282
	
i1l4675:	
;TEST_62F08x_IR_SEND.C: 282: Sendbit = 0;
	clrf	(_Sendbit)
	line	283
;TEST_62F08x_IR_SEND.C: 283: TxTime = 0;
	clrf	(_TxTime)
	line	285
;TEST_62F08x_IR_SEND.C: 285: }
	goto	i1l2422
	line	286
	
i1l4677:	
;TEST_62F08x_IR_SEND.C: 286: else if (IRSendStatus == 1)
	decf	(_IRSendStatus),w
	skipz
	goto	u24_21
	goto	u24_20
u24_21:
	goto	i1l4697
u24_20:
	line	288
	
i1l4679:	
;TEST_62F08x_IR_SEND.C: 287: {
;TEST_62F08x_IR_SEND.C: 288: TxTime++;
	incf	(_TxTime),f
	line	289
	
i1l4681:	
;TEST_62F08x_IR_SEND.C: 289: if (TxTime < 17)
	movlw	(011h)
	subwf	(_TxTime),w
	skipnc
	goto	u25_21
	goto	u25_20
u25_21:
	goto	i1l4685
u25_20:
	line	291
	
i1l4683:	
;TEST_62F08x_IR_SEND.C: 290: {
;TEST_62F08x_IR_SEND.C: 291: T2UIE = 1;
	movlb 6	; select bank6
	bsf	(6248/8)^0300h,(6248)&7
	line	292
;TEST_62F08x_IR_SEND.C: 292: }
	goto	i1l4693
	line	293
	
i1l4685:	
;TEST_62F08x_IR_SEND.C: 293: else if (TxTime < 24)
	movlw	(018h)
	subwf	(_TxTime),w
	skipnc
	goto	u26_21
	goto	u26_20
u26_21:
	goto	i1l4689
u26_20:
	line	295
	
i1l4687:	
;TEST_62F08x_IR_SEND.C: 294: {
;TEST_62F08x_IR_SEND.C: 295: T2UIE = 0;
	movlb 6	; select bank6
	bcf	(6248/8)^0300h,(6248)&7
	line	296
;TEST_62F08x_IR_SEND.C: 296: }
	goto	i1l4693
	line	299
	
i1l4689:	
;TEST_62F08x_IR_SEND.C: 297: else
;TEST_62F08x_IR_SEND.C: 298: {
;TEST_62F08x_IR_SEND.C: 299: TxTime = 0;
	clrf	(_TxTime)
	line	300
	
i1l4691:	
;TEST_62F08x_IR_SEND.C: 300: IRSendStatus = 2;
	movlw	(02h)
	movwf	(_IRSendStatus)
	line	302
	
i1l4693:	
;TEST_62F08x_IR_SEND.C: 301: }
;TEST_62F08x_IR_SEND.C: 302: IRSendData = IRData[0];
	movlb 0	; select bank0
	movf	(_IRData),w
	movwf	(_IRSendData)
	line	303
	
i1l4695:	
;TEST_62F08x_IR_SEND.C: 303: TxBit = 0x01;
	clrf	(_TxBit)
	incf	(_TxBit),f
	line	304
;TEST_62F08x_IR_SEND.C: 304: }
	goto	i1l2422
	line	305
	
i1l4697:	
;TEST_62F08x_IR_SEND.C: 305: else if(IRSendStatus == 2)
	movf	(_IRSendStatus),w
	xorlw	02h&0ffh
	skipz
	goto	u27_21
	goto	u27_20
u27_21:
	goto	i1l2422
u27_20:
	line	307
	
i1l4699:	
;TEST_62F08x_IR_SEND.C: 306: {
;TEST_62F08x_IR_SEND.C: 307: if (IRSendData & TxBit)
	movf	(_IRSendData),w
	andwf	(_TxBit),w
	btfsc	status,2
	goto	u28_21
	goto	u28_20
u28_21:
	goto	i1l2401
u28_20:
	line	309
	
i1l4701:	
;TEST_62F08x_IR_SEND.C: 308: {
;TEST_62F08x_IR_SEND.C: 309: level1 = 1;
	clrf	(_level1)
	incf	(_level1),f
	line	310
	
i1l4703:	
;TEST_62F08x_IR_SEND.C: 310: level0 = 3;
	movlw	(03h)
	movwf	(_level0)
	line	311
;TEST_62F08x_IR_SEND.C: 311: }
	goto	i1l4705
	line	312
	
i1l2401:	
	line	314
;TEST_62F08x_IR_SEND.C: 312: else
;TEST_62F08x_IR_SEND.C: 313: {
;TEST_62F08x_IR_SEND.C: 314: level1 = 1;
	clrf	(_level1)
	incf	(_level1),f
	line	315
;TEST_62F08x_IR_SEND.C: 315: level0 = 1;
	clrf	(_level0)
	incf	(_level0),f
	line	317
	
i1l4705:	
;TEST_62F08x_IR_SEND.C: 316: }
;TEST_62F08x_IR_SEND.C: 317: TxTime++;
	incf	(_TxTime),f
	line	318
	
i1l4707:	
;TEST_62F08x_IR_SEND.C: 318: if (TxTime <= level1)
	movf	(_TxTime),w
	subwf	(_level1),w
	skipc
	goto	u29_21
	goto	u29_20
u29_21:
	goto	i1l4711
u29_20:
	line	320
	
i1l4709:	
;TEST_62F08x_IR_SEND.C: 319: {
;TEST_62F08x_IR_SEND.C: 320: T2UIE = 1;
	movlb 6	; select bank6
	bsf	(6248/8)^0300h,(6248)&7
	line	321
;TEST_62F08x_IR_SEND.C: 321: }
	goto	i1l2422
	line	322
	
i1l4711:	
;TEST_62F08x_IR_SEND.C: 322: else if (TxTime <= (level0+level1))
	movf	(_level0),w
	addwf	(_level1),w
	movwf	(??_SendCtrl+0)+0
	clrf	(??_SendCtrl+0)+0+1
	rlf	1+(??_SendCtrl+0)+0,f
	
	movf	1+(??_SendCtrl+0)+0,w
	xorlw	80h
	movwf	(??_SendCtrl+2)+0
	movlw	80h
	subwf	(??_SendCtrl+2)+0,w
	skipz
	goto	u30_25
	movf	(_TxTime),w
	subwf	0+(??_SendCtrl+0)+0,w
u30_25:

	skipc
	goto	u30_21
	goto	u30_20
u30_21:
	goto	i1l4715
u30_20:
	line	324
	
i1l4713:	
;TEST_62F08x_IR_SEND.C: 323: {
;TEST_62F08x_IR_SEND.C: 324: T2UIE = 0;
	movlb 6	; select bank6
	bcf	(6248/8)^0300h,(6248)&7
	line	325
;TEST_62F08x_IR_SEND.C: 325: }
	goto	i1l2422
	line	326
	
i1l4715:	
;TEST_62F08x_IR_SEND.C: 326: else if (Sendbit < 4)
	movlw	(04h)
	subwf	(_Sendbit),w
	skipnc
	goto	u31_21
	goto	u31_20
u31_21:
	goto	i1l2407
u31_20:
	line	328
	
i1l4717:	
;TEST_62F08x_IR_SEND.C: 327: {
;TEST_62F08x_IR_SEND.C: 328: TxTime = 1;
	clrf	(_TxTime)
	incf	(_TxTime),f
	line	329
;TEST_62F08x_IR_SEND.C: 329: T2UIE = 1;
	movlb 6	; select bank6
	bsf	(6248/8)^0300h,(6248)&7
	line	330
	
i1l4719:	
;TEST_62F08x_IR_SEND.C: 330: SaveLastBit = IRSendData & TxBit;
	movf	(_IRSendData),w
	movwf	(_SaveLastBit)
	
i1l4721:	
	movf	(_TxBit),w
	andwf	(_SaveLastBit),f
	line	331
	
i1l4723:	
;TEST_62F08x_IR_SEND.C: 331: TxBit <<= 1;
	lslf	(_TxBit),f
	line	332
;TEST_62F08x_IR_SEND.C: 332: if (TxBit == 0x00)
	movf	(_TxBit),f
	skipz
	goto	u32_21
	goto	u32_20
u32_21:
	goto	i1l2422
u32_20:
	line	334
	
i1l4725:	
;TEST_62F08x_IR_SEND.C: 333: {
;TEST_62F08x_IR_SEND.C: 334: TxBit = 0x01;
	clrf	(_TxBit)
	incf	(_TxBit),f
	line	335
	
i1l4727:	
;TEST_62F08x_IR_SEND.C: 335: Sendbit++;
	incf	(_Sendbit),f
	line	336
	
i1l4729:	
;TEST_62F08x_IR_SEND.C: 336: IRSendData = IRData[Sendbit];
	movf	(_Sendbit),w
	addlw	_IRData&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(_IRSendData)
	line	337
	
i1l4731:	
;TEST_62F08x_IR_SEND.C: 337: if (Sendbit > 3)
	movlw	(04h)
	subwf	(_Sendbit),w
	skipc
	goto	u33_21
	goto	u33_20
u33_21:
	goto	i1l2406
u33_20:
	line	339
	
i1l4733:	
;TEST_62F08x_IR_SEND.C: 338: {
;TEST_62F08x_IR_SEND.C: 339: SendLastBit = 1;
	bsf	(_SendLastBit/8),(_SendLastBit)&7
	goto	i1l2422
	line	343
	
i1l2407:	
	line	345
;TEST_62F08x_IR_SEND.C: 343: else
;TEST_62F08x_IR_SEND.C: 344: {
;TEST_62F08x_IR_SEND.C: 345: if(SendLastBit)
	btfss	(_SendLastBit/8),(_SendLastBit)&7
	goto	u34_21
	goto	u34_20
u34_21:
	goto	i1l2406
u34_20:
	line	347
	
i1l4735:	
;TEST_62F08x_IR_SEND.C: 346: {
;TEST_62F08x_IR_SEND.C: 347: TxTime++;
	incf	(_TxTime),f
	line	348
	
i1l4737:	
;TEST_62F08x_IR_SEND.C: 348: if(SaveLastBit)
	movf	(_SaveLastBit),w
	skipz
	goto	u35_20
	goto	i1l4753
u35_20:
	line	350
	
i1l4739:	
;TEST_62F08x_IR_SEND.C: 349: {
;TEST_62F08x_IR_SEND.C: 350: if(TxTime < 3)
	movlw	(03h)
	subwf	(_TxTime),w
	skipnc
	goto	u36_21
	goto	u36_20
u36_21:
	goto	i1l4743
u36_20:
	goto	i1l4713
	line	354
	
i1l4743:	
;TEST_62F08x_IR_SEND.C: 354: else if(TxTime < 4)
	movlw	(04h)
	subwf	(_TxTime),w
	skipnc
	goto	u37_21
	goto	u37_20
u37_21:
	goto	i1l2415
u37_20:
	goto	i1l4709
	line	358
	
i1l2415:	
	line	360
;TEST_62F08x_IR_SEND.C: 358: else
;TEST_62F08x_IR_SEND.C: 359: {
;TEST_62F08x_IR_SEND.C: 360: T2UIE = 0;
	movlb 6	; select bank6
	bcf	(6248/8)^0300h,(6248)&7
	line	361
	
i1l4747:	
;TEST_62F08x_IR_SEND.C: 361: IRSendStatus = 0;
	clrf	(_IRSendStatus)
	line	362
	
i1l4749:	
;TEST_62F08x_IR_SEND.C: 362: T2UIE = 0;
	bcf	(6248/8)^0300h,(6248)&7
	line	363
	
i1l4751:	
;TEST_62F08x_IR_SEND.C: 363: SendLastBit = 0;
	bcf	(_SendLastBit/8),(_SendLastBit)&7
	line	364
;TEST_62F08x_IR_SEND.C: 364: TxBit = 0;
	clrf	(_TxBit)
	line	365
;TEST_62F08x_IR_SEND.C: 365: TxTime = 0;
	clrf	(_TxTime)
	goto	i1l2422
	line	370
	
i1l4753:	
;TEST_62F08x_IR_SEND.C: 368: else
;TEST_62F08x_IR_SEND.C: 369: {
;TEST_62F08x_IR_SEND.C: 370: if(TxTime < 5)
	movlw	(05h)
	subwf	(_TxTime),w
	skipnc
	goto	u38_21
	goto	u38_20
u38_21:
	goto	i1l4757
u38_20:
	goto	i1l4713
	line	374
	
i1l4757:	
;TEST_62F08x_IR_SEND.C: 374: else if(TxTime < 6)
	movlw	(06h)
	subwf	(_TxTime),w
	skipnc
	goto	u39_21
	goto	u39_20
u39_21:
	goto	i1l2415
u39_20:
	goto	i1l4709
	line	389
	
i1l2406:	
	line	392
	
i1l2422:	
	return
	opt stack 0
GLOBAL	__end_of_SendCtrl
	__end_of_SendCtrl:
;; =============== function _SendCtrl ends ============

	signat	_SendCtrl,88
psect	text211,local,class=CODE,delta=2
global __ptext211
__ptext211:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
