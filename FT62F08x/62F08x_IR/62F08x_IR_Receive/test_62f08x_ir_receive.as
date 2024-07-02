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
	FNCALL	_main,_Px_Level_Change_INITIAL
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_bitdata
psect	idataCOMMON,class=CODE,space=0,delta=2
global __pidataCOMMON
__pidataCOMMON:
	file	"TEST_62F08x_IR_Receive.C"
	line	27

;initializer for _bitdata
	retlw	01h
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
	global	_IRDataTimer
	global	_IRbitNum
	global	_IRbitTime
	global	_ReceiveFinish
	global	_rdata1
	global	_rdata2
	global	_EPIF0
psect	strings
psect	_ad3nop_text
_EPIF0	set	20
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
	global	_RC3
psect	strings
psect	_ad3nop_text
_RC3	set	115
	global	_EPIE0
psect	strings
psect	_ad3nop_text
_EPIE0	set	148
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
	global	_EPS0
psect	strings
psect	_ad3nop_text
_EPS0	set	280
	global	_EPS1
psect	strings
psect	_ad3nop_text
_EPS1	set	281
	global	_ITYPE0
psect	strings
psect	_ad3nop_text
_ITYPE0	set	286
	global	_ITYPE1
psect	strings
psect	_ad3nop_text
_ITYPE1	set	287
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
psect	strings
psect	_ad3nop_text
psect	strings
psect	_ad3nop_text
	file	"test_62f08x_ir_receive.as"
psect	strings
psect	_ad3nop_text
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_IRDataTimer:
       ds      4

_IRbitNum:
       ds      1

_IRbitTime:
       ds      1

_ReceiveFinish:
       ds      1

_rdata1:
       ds      1

_rdata2:
       ds      1

psect	dataCOMMON,class=COMMON,space=1
global __pdataCOMMON
__pdataCOMMON:
	file	"TEST_62F08x_IR_Receive.C"
_bitdata:
       ds      1

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
; Initialize objects allocated to COMMON
	global __pidataCOMMON,__pdataCOMMON
psect cinit,class=CODE,delta=2
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
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
	global	??_POWER_INITIAL
??_POWER_INITIAL:	; 0 bytes @ 0x0
	global	?_TIMER4_INITIAL
?_TIMER4_INITIAL:	; 0 bytes @ 0x0
	global	??_TIMER4_INITIAL
??_TIMER4_INITIAL:	; 0 bytes @ 0x0
	global	?_Px_Level_Change_INITIAL
?_Px_Level_Change_INITIAL:	; 0 bytes @ 0x0
	global	??_Px_Level_Change_INITIAL
??_Px_Level_Change_INITIAL:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	??_ISR
??_ISR:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
;;Data sizes: Strings 0, constant 0, data 1, bss 9, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      0      10
;; BANK0           80      0       0
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
;;            _Px_Level_Change_INITIAL
;; ---------------------------------------------------------------------------------
;; (1) _Px_Level_Change_INITIAL                              0     0      0       0
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
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _POWER_INITIAL
;;   _TIMER4_INITIAL
;;   _Px_Level_Change_INITIAL
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
;;COMMON               E      0       A       2       71.4%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR2              0      0       0       3        0.0%
;;SFR2                 0      0       0       3        0.0%
;;STACK                0      0       1       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
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
;;ABS                  0      0       A      20        0.0%
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
;;DATA                 0      0       B      31        0.0%
;;BITSFR31             0      0       0      32        0.0%
;;SFR31                0      0       0      32        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 240 in file "TEST_62F08x_IR_Receive.C"
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
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_POWER_INITIAL
;;		_TIMER4_INITIAL
;;		_Px_Level_Change_INITIAL
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"TEST_62F08x_IR_Receive.C"
	line	240
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 14
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	241
	
l4554:	
;TEST_62F08x_IR_Receive.C: 241: POWER_INITIAL();
	fcall	_POWER_INITIAL
	line	242
;TEST_62F08x_IR_Receive.C: 242: TIMER4_INITIAL();
	fcall	_TIMER4_INITIAL
	line	243
;TEST_62F08x_IR_Receive.C: 243: Px_Level_Change_INITIAL();
	fcall	_Px_Level_Change_INITIAL
	line	244
	
l4556:	
;TEST_62F08x_IR_Receive.C: 244: GIE = 1;
	bsf	(95/8),(95)&7
	line	248
	
l4558:	
;TEST_62F08x_IR_Receive.C: 247: {
;TEST_62F08x_IR_Receive.C: 248: if(ReceiveFinish==1)
	decf	(_ReceiveFinish),w
	skipz
	goto	u101
	goto	u100
u101:
	goto	l4558
u100:
	line	250
	
l4560:	
;TEST_62F08x_IR_Receive.C: 249: {
;TEST_62F08x_IR_Receive.C: 250: ReceiveFinish = 0;
	clrf	(_ReceiveFinish)
	line	251
	
l4562:	
;TEST_62F08x_IR_Receive.C: 251: rdata1 = 0xFF - IRDataTimer[0];
	comf	(_IRDataTimer),w	;volatile
	movwf	(_rdata1)	;volatile
	line	252
	
l4564:	
;TEST_62F08x_IR_Receive.C: 252: rdata2 = 0xFF - IRDataTimer[2];
	comf	0+(_IRDataTimer)+02h,w	;volatile
	movwf	(_rdata2)	;volatile
	line	253
	
l4566:	
;TEST_62F08x_IR_Receive.C: 253: if((rdata1 == IRDataTimer[1])&&(rdata2 == IRDataTimer[3]))
	movf	0+(_IRDataTimer)+01h,w	;volatile
	xorwf	(_rdata1),w	;volatile
	skipz
	goto	u111
	goto	u110
u111:
	goto	l4558
u110:
	
l4568:	
	movf	0+(_IRDataTimer)+03h,w	;volatile
	xorwf	(_rdata2),w	;volatile
	skipz
	goto	u121
	goto	u120
u121:
	goto	l4558
u120:
	line	255
	
l4570:	
;TEST_62F08x_IR_Receive.C: 254: {
;TEST_62F08x_IR_Receive.C: 255: RB3 = ~RB3;
	movlw	1<<((107)&7)
	movlb 0	; select bank0
	xorwf	((107)/8),f
	goto	l4558
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	259
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Px_Level_Change_INITIAL
psect	text62,local,class=CODE,delta=2
global __ptext62
__ptext62:

;; *************** function _Px_Level_Change_INITIAL *****************
;; Defined at:
;;		line 160 in file "TEST_62F08x_IR_Receive.C"
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
;;		On exit  : 17F/1
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
psect	text62
	file	"TEST_62F08x_IR_Receive.C"
	line	160
	global	__size_of_Px_Level_Change_INITIAL
	__size_of_Px_Level_Change_INITIAL	equ	__end_of_Px_Level_Change_INITIAL-_Px_Level_Change_INITIAL
	
_Px_Level_Change_INITIAL:	
	opt	stack 14
; Regs used in _Px_Level_Change_INITIAL: [wreg+status,2]
	line	161
	
l4498:	
;TEST_62F08x_IR_Receive.C: 161: EPS0=0B10000000;
	movlw	(080h)
	movwf	(280)^0100h	;volatile
	line	163
	
l4500:	
;TEST_62F08x_IR_Receive.C: 163: EPS1=0B00000000;
	clrf	(281)^0100h	;volatile
	line	166
	
l4502:	
;TEST_62F08x_IR_Receive.C: 166: ITYPE0 = 0B11000000;
	movlw	(0C0h)
	movwf	(286)^0100h	;volatile
	line	167
;TEST_62F08x_IR_Receive.C: 167: ITYPE1 = 0B00000000;
	clrf	(287)^0100h	;volatile
	line	169
	
l4504:	
;TEST_62F08x_IR_Receive.C: 169: EPIE0 = 0B00001000;
	movlw	(08h)
	movlb 1	; select bank1
	movwf	(148)^080h	;volatile
	line	171
	
l4506:	
;TEST_62F08x_IR_Receive.C: 171: INTCON = 0B01000000;
	movlw	(040h)
	movwf	(11)	;volatile
	line	172
	
l2383:	
	return
	opt stack 0
GLOBAL	__end_of_Px_Level_Change_INITIAL
	__end_of_Px_Level_Change_INITIAL:
;; =============== function _Px_Level_Change_INITIAL ends ============

	signat	_Px_Level_Change_INITIAL,88
	global	_TIMER4_INITIAL
psect	text63,local,class=CODE,delta=2
global __ptext63
__ptext63:

;; *************** function _TIMER4_INITIAL *****************
;; Defined at:
;;		line 88 in file "TEST_62F08x_IR_Receive.C"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text63
	file	"TEST_62F08x_IR_Receive.C"
	line	88
	global	__size_of_TIMER4_INITIAL
	__size_of_TIMER4_INITIAL	equ	__end_of_TIMER4_INITIAL-_TIMER4_INITIAL
	
_TIMER4_INITIAL:	
	opt	stack 14
; Regs used in _TIMER4_INITIAL: [wreg+status,2]
	line	89
	
l4484:	
;TEST_62F08x_IR_Receive.C: 89: PCKEN |=0B00001000;
	movlb 1	; select bank1
	bsf	(154)^080h+(3/8),(3)&7	;volatile
	line	93
	
l4486:	
;TEST_62F08x_IR_Receive.C: 93: TIM4CR1 =0B00000101;
	movlw	(05h)
	movlb 2	; select bank2
	movwf	(273)^0100h	;volatile
	line	124
;TEST_62F08x_IR_Receive.C: 124: TIM4IER =0B00000001;
	movlw	(01h)
	movwf	(274)^0100h	;volatile
	line	127
	
l4488:	
;TEST_62F08x_IR_Receive.C: 127: TIM4SR =0B00000000;
	clrf	(275)^0100h	;volatile
	line	136
	
l4490:	
;TEST_62F08x_IR_Receive.C: 136: TIM4EGR =0B00000000;
	clrf	(276)^0100h	;volatile
	line	141
	
l4492:	
;TEST_62F08x_IR_Receive.C: 141: TIM4CNTR=0;
	clrf	(277)^0100h	;volatile
	line	143
	
l4494:	
;TEST_62F08x_IR_Receive.C: 143: TIM4PSCR=0B00000110;
	movlw	(06h)
	movwf	(278)^0100h	;volatile
	line	148
	
l4496:	
;TEST_62F08x_IR_Receive.C: 148: TIM4ARR =140;
	movlw	(08Ch)
	movwf	(279)^0100h	;volatile
	line	151
	
l2380:	
	return
	opt stack 0
GLOBAL	__end_of_TIMER4_INITIAL
	__end_of_TIMER4_INITIAL:
;; =============== function _TIMER4_INITIAL ends ============

	signat	_TIMER4_INITIAL,88
	global	_POWER_INITIAL
psect	text64,local,class=CODE,delta=2
global __ptext64
__ptext64:

;; *************** function _POWER_INITIAL *****************
;; Defined at:
;;		line 40 in file "TEST_62F08x_IR_Receive.C"
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
psect	text64
	file	"TEST_62F08x_IR_Receive.C"
	line	40
	global	__size_of_POWER_INITIAL
	__size_of_POWER_INITIAL	equ	__end_of_POWER_INITIAL-_POWER_INITIAL
	
_POWER_INITIAL:	
	opt	stack 14
; Regs used in _POWER_INITIAL: [wreg+status,2]
	line	41
	
l4442:	
;TEST_62F08x_IR_Receive.C: 41: OSCCON = 0B01110001;
	movlw	(071h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	44
	
l4444:	
;TEST_62F08x_IR_Receive.C: 44: INTCON = 0;
	clrf	(11)	;volatile
	line	46
	
l4446:	
;TEST_62F08x_IR_Receive.C: 46: PORTA = 0B00000000;
	movlb 0	; select bank0
	clrf	(12)	;volatile
	line	47
;TEST_62F08x_IR_Receive.C: 47: TRISA = 0B11111111;
	movlw	(0FFh)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	48
	
l4448:	
;TEST_62F08x_IR_Receive.C: 48: PORTB = 0B00000000;
	movlb 0	; select bank0
	clrf	(13)	;volatile
	line	49
	
l4450:	
;TEST_62F08x_IR_Receive.C: 49: TRISB = 0B11110111;
	movlw	(0F7h)
	movlb 1	; select bank1
	movwf	(141)^080h	;volatile
	line	50
;TEST_62F08x_IR_Receive.C: 50: PORTC = 0B00000000;
	movlb 0	; select bank0
	clrf	(14)	;volatile
	line	51
	
l4452:	
;TEST_62F08x_IR_Receive.C: 51: TRISC = 0B11111111;
	movlw	(0FFh)
	movlb 1	; select bank1
	movwf	(142)^080h	;volatile
	line	52
	
l4454:	
;TEST_62F08x_IR_Receive.C: 52: PORTD = 0B00000000;
	movlb 0	; select bank0
	clrf	(15)	;volatile
	line	53
;TEST_62F08x_IR_Receive.C: 53: TRISD = 0B11111111;
	movlw	(0FFh)
	movlb 1	; select bank1
	movwf	(143)^080h	;volatile
	line	55
	
l4456:	
;TEST_62F08x_IR_Receive.C: 55: WPUA = 0B00000000;
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	56
	
l4458:	
;TEST_62F08x_IR_Receive.C: 56: WPUB = 0B00000000;
	clrf	(397)^0180h	;volatile
	line	57
;TEST_62F08x_IR_Receive.C: 57: WPUC = 0B00001000;
	movlw	(08h)
	movwf	(398)^0180h	;volatile
	line	58
	
l4460:	
;TEST_62F08x_IR_Receive.C: 58: WPUD = 0B00000000;
	clrf	(399)^0180h	;volatile
	line	60
	
l4462:	
;TEST_62F08x_IR_Receive.C: 60: WPDA = 0B00000000;
	movlb 4	; select bank4
	clrf	(524)^0200h	;volatile
	line	61
	
l4464:	
;TEST_62F08x_IR_Receive.C: 61: WPDB = 0B00000000;
	clrf	(525)^0200h	;volatile
	line	62
	
l4466:	
;TEST_62F08x_IR_Receive.C: 62: WPDC = 0B00000000;
	clrf	(526)^0200h	;volatile
	line	63
	
l4468:	
;TEST_62F08x_IR_Receive.C: 63: WPDD = 0B00000000;
	clrf	(527)^0200h	;volatile
	line	65
	
l4470:	
;TEST_62F08x_IR_Receive.C: 65: PSRC0 = 0B11111111;
	movlw	(0FFh)
	movlb 2	; select bank2
	movwf	(282)^0100h	;volatile
	line	69
	
l4472:	
;TEST_62F08x_IR_Receive.C: 69: PSRC1 = 0B11111111;
	movlw	(0FFh)
	movwf	(283)^0100h	;volatile
	line	73
	
l4474:	
;TEST_62F08x_IR_Receive.C: 73: PSINK0 = 0B11111111;
	movlw	(0FFh)
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	74
	
l4476:	
;TEST_62F08x_IR_Receive.C: 74: PSINK1 = 0B11111111;
	movlw	(0FFh)
	movwf	(411)^0180h	;volatile
	line	75
	
l4478:	
;TEST_62F08x_IR_Receive.C: 75: PSINK2 = 0B11111111;
	movlw	(0FFh)
	movwf	(412)^0180h	;volatile
	line	76
	
l4480:	
;TEST_62F08x_IR_Receive.C: 76: PSINK3 = 0B11111111;
	movlw	(0FFh)
	movwf	(413)^0180h	;volatile
	line	78
	
l4482:	
;TEST_62F08x_IR_Receive.C: 78: ANSELA = 0B00000000;
	clrf	(407)^0180h	;volatile
	line	79
	
l2377:	
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
;;		line 181 in file "TEST_62F08x_IR_Receive.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 1D/0
;;		Unchanged: FFFE0/0
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
	file	"TEST_62F08x_IR_Receive.C"
	line	181
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 14
; Regs used in _ISR: [wreg+fsr1l-status,0]
psect	intentry
	pagesel	$
	line	183
	
i1l4508:	
;TEST_62F08x_IR_Receive.C: 183: if(T4UIE && T4UIF)
	movlb 2	; select bank2
	btfss	(2192/8)^0100h,(2192)&7
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l4522
u1_20:
	
i1l4510:	
	btfss	(2200/8)^0100h,(2200)&7
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l4522
u2_20:
	line	185
	
i1l4512:	
;TEST_62F08x_IR_Receive.C: 184: {
;TEST_62F08x_IR_Receive.C: 185: T4UIF = 1;
	bsf	(2200/8)^0100h,(2200)&7
	line	187
	
i1l4514:	
;TEST_62F08x_IR_Receive.C: 187: IRbitTime++;
	incf	(_IRbitTime),f
	line	188
	
i1l4516:	
;TEST_62F08x_IR_Receive.C: 188: if(IRbitTime > 50)
	movlw	(033h)
	subwf	(_IRbitTime),w
	skipc
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l4522
u3_20:
	line	190
	
i1l4518:	
;TEST_62F08x_IR_Receive.C: 189: {
;TEST_62F08x_IR_Receive.C: 190: T4UIE = 0;
	bcf	(2192/8)^0100h,(2192)&7
	line	191
	
i1l4520:	
;TEST_62F08x_IR_Receive.C: 191: IRbitTime = 0;
	clrf	(_IRbitTime)
	line	196
	
i1l4522:	
;TEST_62F08x_IR_Receive.C: 192: }
;TEST_62F08x_IR_Receive.C: 193: }
;TEST_62F08x_IR_Receive.C: 196: if(EPIF0 & 0x08)
	movlb 0	; select bank0
	btfss	(20),(3)&7
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l2395
u4_20:
	line	198
	
i1l4524:	
;TEST_62F08x_IR_Receive.C: 197: {
;TEST_62F08x_IR_Receive.C: 198: EPIF0 |= 0x08;
	bsf	(20)+(3/8),(3)&7	;volatile
	line	200
;TEST_62F08x_IR_Receive.C: 200: if(RC3 == 0)
	btfsc	(115/8),(115)&7
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l2395
u5_20:
	line	202
	
i1l4526:	
;TEST_62F08x_IR_Receive.C: 201: {
;TEST_62F08x_IR_Receive.C: 202: T4UIE = 1;
	movlb 2	; select bank2
	bsf	(2192/8)^0100h,(2192)&7
	line	203
	
i1l4528:	
;TEST_62F08x_IR_Receive.C: 203: if(IRbitTime > 21)
	movlw	(016h)
	subwf	(_IRbitTime),w
	skipc
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l4532
u6_20:
	line	205
	
i1l4530:	
;TEST_62F08x_IR_Receive.C: 204: {
;TEST_62F08x_IR_Receive.C: 205: IRDataTimer[0] = 0;
	clrf	(_IRDataTimer)	;volatile
	line	206
;TEST_62F08x_IR_Receive.C: 206: IRDataTimer[1] = 0;
	clrf	0+(_IRDataTimer)+01h	;volatile
	line	207
;TEST_62F08x_IR_Receive.C: 207: IRDataTimer[2] = 0;
	clrf	0+(_IRDataTimer)+02h	;volatile
	line	208
;TEST_62F08x_IR_Receive.C: 208: IRDataTimer[3] = 0;
	clrf	0+(_IRDataTimer)+03h	;volatile
	line	209
;TEST_62F08x_IR_Receive.C: 209: IRbitNum = 0;
	clrf	(_IRbitNum)
	line	210
;TEST_62F08x_IR_Receive.C: 210: bitdata = 0x00;
	clrf	(_bitdata)
	line	211
;TEST_62F08x_IR_Receive.C: 211: }
	goto	i1l4536
	line	212
	
i1l4532:	
;TEST_62F08x_IR_Receive.C: 212: else if(IRbitTime > 3)
	movlw	(04h)
	subwf	(_IRbitTime),w
	skipc
	goto	u7_21
	goto	u7_20
u7_21:
	goto	i1l4536
u7_20:
	line	214
	
i1l4534:	
;TEST_62F08x_IR_Receive.C: 213: {
;TEST_62F08x_IR_Receive.C: 214: IRDataTimer[IRbitNum-1] |= bitdata;
	movf	(_IRbitNum),w
	addlw	_IRDataTimer+-1&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_bitdata),w
	iorwf	indf1,f
	line	216
	
i1l4536:	
;TEST_62F08x_IR_Receive.C: 215: }
;TEST_62F08x_IR_Receive.C: 216: IRbitTime = 0;
	clrf	(_IRbitTime)
	line	217
	
i1l4538:	
;TEST_62F08x_IR_Receive.C: 217: bitdata<<=1;
	lslf	(_bitdata),f
	line	218
	
i1l4540:	
;TEST_62F08x_IR_Receive.C: 218: if(bitdata == 0)
	movf	(_bitdata),f
	skipz
	goto	u8_21
	goto	u8_20
u8_21:
	goto	i1l4546
u8_20:
	line	220
	
i1l4542:	
;TEST_62F08x_IR_Receive.C: 219: {
;TEST_62F08x_IR_Receive.C: 220: bitdata = 0x01;
	clrf	(_bitdata)
	incf	(_bitdata),f
	line	221
	
i1l4544:	
;TEST_62F08x_IR_Receive.C: 221: IRbitNum++;
	incf	(_IRbitNum),f
	line	223
	
i1l4546:	
;TEST_62F08x_IR_Receive.C: 222: }
;TEST_62F08x_IR_Receive.C: 223: if(IRbitNum > 4)
	movlw	(05h)
	subwf	(_IRbitNum),w
	skipc
	goto	u9_21
	goto	u9_20
u9_21:
	goto	i1l2395
u9_20:
	line	225
	
i1l4548:	
;TEST_62F08x_IR_Receive.C: 224: {
;TEST_62F08x_IR_Receive.C: 225: IRbitNum = 0;
	clrf	(_IRbitNum)
	line	226
	
i1l4550:	
;TEST_62F08x_IR_Receive.C: 226: T4UIE = 0;
	bcf	(2192/8)^0100h,(2192)&7
	line	227
	
i1l4552:	
;TEST_62F08x_IR_Receive.C: 227: ReceiveFinish = 1;
	clrf	(_ReceiveFinish)
	incf	(_ReceiveFinish),f
	line	231
	
i1l2395:	
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
