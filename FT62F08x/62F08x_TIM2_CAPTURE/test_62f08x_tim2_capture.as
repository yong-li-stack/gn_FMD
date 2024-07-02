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
	FNCALL	_main,_Time2Initial
	FNCALL	_main,_Time4Initial
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
	global	_testdata
	global	_period
	global	_dataH
	global	_dataL
	global	_y
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
	global	_RB3
psect	strings
psect	_ad3nop_text
_RB3	set	107
	global	_RB4
psect	strings
psect	_ad3nop_text
_RB4	set	108
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
	global	_TIM2CCER1
psect	strings
psect	_ad3nop_text
_TIM2CCER1	set	788
	global	_TIM2CCMR1
psect	strings
psect	_ad3nop_text
_TIM2CCMR1	set	785
	global	_TIM2CCR1H
psect	strings
psect	_ad3nop_text
_TIM2CCR1H	set	795
	global	_TIM2CCR1L
psect	strings
psect	_ad3nop_text
_TIM2CCR1L	set	796
	global	_TIM2CNTRH
psect	strings
psect	_ad3nop_text
_TIM2CNTRH	set	790
	global	_TIM2CNTRL
psect	strings
psect	_ad3nop_text
_TIM2CNTRL	set	791
	global	_TIM2CR1
psect	strings
psect	_ad3nop_text
_TIM2CR1	set	780
	global	_TIM2EGR
psect	strings
psect	_ad3nop_text
_TIM2EGR	set	784
	global	_TIM2IER
psect	strings
psect	_ad3nop_text
_TIM2IER	set	781
	global	_TIM2PSCR
psect	strings
psect	_ad3nop_text
_TIM2PSCR	set	792
	global	_TIM2SR1
psect	strings
psect	_ad3nop_text
_TIM2SR1	set	782
	global	_TIM2SR2
psect	strings
psect	_ad3nop_text
_TIM2SR2	set	783
	global	_T2CC1IE
psect	strings
psect	_ad3nop_text
_T2CC1IE	set	6249
	global	_T2CC1IF
psect	strings
psect	_ad3nop_text
_T2CC1IF	set	6257
	global	_T2CEN
psect	strings
psect	_ad3nop_text
_T2CEN	set	6240
psect	strings
psect	_ad3nop_text
psect	strings
psect	_ad3nop_text
	file	"test_62f08x_tim2_capture.as"
psect	strings
psect	_ad3nop_text
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_period:
       ds      2

_dataH:
       ds      1

_dataL:
       ds      1

_y:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_testdata:
       ds      40

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR0 containing the base address, and
;	WREG with the size to clear
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf0		;clear RAM location pointed to by FSR
	addfsr	0,1
	decfsz wreg		;Have we reached the end of clearing yet?
	goto clrloop	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	global __pbssBANK0
	movlw	low(__pbssBANK0)
	movwf	fsr0l
	movlw	high(__pbssBANK0)
	movwf	fsr0h
	movlw	028h
	fcall	clear_ram
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
	global	?_Time4Initial
?_Time4Initial:	; 0 bytes @ 0x0
	global	??_Time4Initial
??_Time4Initial:	; 0 bytes @ 0x0
	global	?_Time2Initial
?_Time2Initial:	; 0 bytes @ 0x0
	global	??_Time2Initial
??_Time2Initial:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
;;Data sizes: Strings 0, constant 0, data 0, bss 45, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      0       5
;; BANK0           80      0      40
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
;;                       _Time2Initial
;;                       _Time4Initial
;; ---------------------------------------------------------------------------------
;; (1) _Time2Initial                                         0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Time4Initial                                         0     0      0       0
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
;;   _Time2Initial
;;   _Time4Initial
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
;;COMMON               E      0       5       2       35.7%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR2              0      0       0       3        0.0%
;;SFR2                 0      0       0       3        0.0%
;;STACK                0      0       1       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0      28       5       50.0%
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
;;ABS                  0      0      2D      20        0.0%
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
;;DATA                 0      0      2E      31        0.0%
;;BITSFR31             0      0       0      32        0.0%
;;SFR31                0      0       0      32        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 490 in file "TEST_62F08x_TIM2_CAPTURE.C"
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
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_POWER_INITIAL
;;		_Time2Initial
;;		_Time4Initial
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"TEST_62F08x_TIM2_CAPTURE.C"
	line	490
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 14
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	491
	
l4558:	
;TEST_62F08x_TIM2_CAPTURE.C: 491: POWER_INITIAL();
	fcall	_POWER_INITIAL
	line	492
;TEST_62F08x_TIM2_CAPTURE.C: 492: Time2Initial();
	fcall	_Time2Initial
	line	493
;TEST_62F08x_TIM2_CAPTURE.C: 493: Time4Initial();
	fcall	_Time4Initial
	line	496
	
l4560:	
;TEST_62F08x_TIM2_CAPTURE.C: 495: {
;TEST_62F08x_TIM2_CAPTURE.C: 496: _nop();
	nop
	goto	l4560
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	498
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Time2Initial
psect	text62,local,class=CODE,delta=2
global __ptext62
__ptext62:

;; *************** function _Time2Initial *****************
;; Defined at:
;;		line 249 in file "TEST_62F08x_TIM2_CAPTURE.C"
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
;;		On exit  : 17F/6
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
	file	"TEST_62F08x_TIM2_CAPTURE.C"
	line	249
	global	__size_of_Time2Initial
	__size_of_Time2Initial	equ	__end_of_Time2Initial-_Time2Initial
	
_Time2Initial:	
	opt	stack 14
; Regs used in _Time2Initial: [wreg+status,2]
	line	250
	
l4536:	
;TEST_62F08x_TIM2_CAPTURE.C: 250: PCKEN |=0B00000100;
	movlb 1	; select bank1
	bsf	(154)^080h+(2/8),(2)&7	;volatile
	line	251
	
l4538:	
;TEST_62F08x_TIM2_CAPTURE.C: 251: CKOCON=0B00100000;
	movlw	(020h)
	movwf	(149)^080h	;volatile
	line	252
;TEST_62F08x_TIM2_CAPTURE.C: 252: TCKSRC=0B00110000;
	movlw	(030h)
	movlb 6	; select bank6
	movwf	(799)^0300h	;volatile
	line	277
;TEST_62F08x_TIM2_CAPTURE.C: 277: TIM2CR1 =0B10000110;
	movlw	(086h)
	movwf	(780)^0300h	;volatile
	line	310
;TEST_62F08x_TIM2_CAPTURE.C: 310: TIM2IER =0B00000010;
	movlw	(02h)
	movwf	(781)^0300h	;volatile
	line	336
	
l4540:	
;TEST_62F08x_TIM2_CAPTURE.C: 336: TIM2SR1 =0B00000000;
	clrf	(782)^0300h	;volatile
	line	368
	
l4542:	
;TEST_62F08x_TIM2_CAPTURE.C: 368: TIM2SR2 =0B00000000;
	clrf	(783)^0300h	;volatile
	line	370
	
l4544:	
;TEST_62F08x_TIM2_CAPTURE.C: 370: TIM2EGR =0B00000000;
	clrf	(784)^0300h	;volatile
	line	399
	
l4546:	
;TEST_62F08x_TIM2_CAPTURE.C: 399: TIM2CCMR1 =0B00000001;
	movlw	(01h)
	movwf	(785)^0300h	;volatile
	line	438
	
l4548:	
;TEST_62F08x_TIM2_CAPTURE.C: 438: TIM2CCER1 =0B00000001;
	movlw	(01h)
	movwf	(788)^0300h	;volatile
	line	465
	
l4550:	
;TEST_62F08x_TIM2_CAPTURE.C: 465: TIM2CNTRH =0B00000000;
	clrf	(790)^0300h	;volatile
	line	466
	
l4552:	
;TEST_62F08x_TIM2_CAPTURE.C: 466: TIM2CNTRL =0B00000000;
	clrf	(791)^0300h	;volatile
	line	468
	
l4554:	
;TEST_62F08x_TIM2_CAPTURE.C: 468: TIM2PSCR =0B00000000;
	clrf	(792)^0300h	;volatile
	line	481
	
l4556:	
;TEST_62F08x_TIM2_CAPTURE.C: 481: T2CEN =1;
	bsf	(6240/8)^0300h,(6240)&7
	line	482
	
l2407:	
	return
	opt stack 0
GLOBAL	__end_of_Time2Initial
	__end_of_Time2Initial:
;; =============== function _Time2Initial ends ============

	signat	_Time2Initial,88
	global	_Time4Initial
psect	text63,local,class=CODE,delta=2
global __ptext63
__ptext63:

;; *************** function _Time4Initial *****************
;; Defined at:
;;		line 178 in file "TEST_62F08x_TIM2_CAPTURE.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/6
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
	file	"TEST_62F08x_TIM2_CAPTURE.C"
	line	178
	global	__size_of_Time4Initial
	__size_of_Time4Initial	equ	__end_of_Time4Initial-_Time4Initial
	
_Time4Initial:	
	opt	stack 14
; Regs used in _Time4Initial: [wreg+status,2+status,0]
	line	179
	
l4520:	
;TEST_62F08x_TIM2_CAPTURE.C: 179: PCKEN |=0B00001000;
	movlb 1	; select bank1
	bsf	(154)^080h+(3/8),(3)&7	;volatile
	line	181
	
l4522:	
;TEST_62F08x_TIM2_CAPTURE.C: 181: TIM4CR1 =0B00000001;
	movlw	(01h)
	movlb 2	; select bank2
	movwf	(273)^0100h	;volatile
	line	212
;TEST_62F08x_TIM2_CAPTURE.C: 212: TIM4IER =0B00000001;
	movlw	(01h)
	movwf	(274)^0100h	;volatile
	line	215
	
l4524:	
;TEST_62F08x_TIM2_CAPTURE.C: 215: TIM4SR =0B00000000;
	clrf	(275)^0100h	;volatile
	line	224
	
l4526:	
;TEST_62F08x_TIM2_CAPTURE.C: 224: TIM4EGR =0B00000000;
	clrf	(276)^0100h	;volatile
	line	229
	
l4528:	
;TEST_62F08x_TIM2_CAPTURE.C: 229: TIM4CNTR=0;
	clrf	(277)^0100h	;volatile
	line	231
	
l4530:	
;TEST_62F08x_TIM2_CAPTURE.C: 231: TIM4PSCR=0B00000100;
	movlw	(04h)
	movwf	(278)^0100h	;volatile
	line	236
	
l4532:	
;TEST_62F08x_TIM2_CAPTURE.C: 236: TIM4ARR =124;
	movlw	(07Ch)
	movwf	(279)^0100h	;volatile
	line	240
	
l4534:	
;TEST_62F08x_TIM2_CAPTURE.C: 240: INTCON |= 0B11000000;
	movlw	(0C0h)
	iorwf	(11),f	;volatile
	line	241
	
l2404:	
	return
	opt stack 0
GLOBAL	__end_of_Time4Initial
	__end_of_Time4Initial:
;; =============== function _Time4Initial ends ============

	signat	_Time4Initial,88
	global	_POWER_INITIAL
psect	text64,local,class=CODE,delta=2
global __ptext64
__ptext64:

;; *************** function _POWER_INITIAL *****************
;; Defined at:
;;		line 81 in file "TEST_62F08x_TIM2_CAPTURE.C"
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
	file	"TEST_62F08x_TIM2_CAPTURE.C"
	line	81
	global	__size_of_POWER_INITIAL
	__size_of_POWER_INITIAL	equ	__end_of_POWER_INITIAL-_POWER_INITIAL
	
_POWER_INITIAL:	
	opt	stack 14
; Regs used in _POWER_INITIAL: [wreg+status,2]
	line	83
	
l4488:	
;TEST_62F08x_TIM2_CAPTURE.C: 83: OSCCON = 0B01110001;
	movlw	(071h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	86
	
l4490:	
;TEST_62F08x_TIM2_CAPTURE.C: 86: INTCON = 0;
	clrf	(11)	;volatile
	line	88
	
l4492:	
;TEST_62F08x_TIM2_CAPTURE.C: 88: PORTA = 0B00000000;
	movlb 0	; select bank0
	clrf	(12)	;volatile
	line	89
;TEST_62F08x_TIM2_CAPTURE.C: 89: TRISA = 0B11111111;
	movlw	(0FFh)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	90
	
l4494:	
;TEST_62F08x_TIM2_CAPTURE.C: 90: PORTB = 0B00000000;
	movlb 0	; select bank0
	clrf	(13)	;volatile
	line	91
	
l4496:	
;TEST_62F08x_TIM2_CAPTURE.C: 91: TRISB = 0B11100111;
	movlw	(0E7h)
	movlb 1	; select bank1
	movwf	(141)^080h	;volatile
	line	92
;TEST_62F08x_TIM2_CAPTURE.C: 92: PORTC = 0B00000000;
	movlb 0	; select bank0
	clrf	(14)	;volatile
	line	93
	
l4498:	
;TEST_62F08x_TIM2_CAPTURE.C: 93: TRISC = 0B11111111;
	movlw	(0FFh)
	movlb 1	; select bank1
	movwf	(142)^080h	;volatile
	line	94
	
l4500:	
;TEST_62F08x_TIM2_CAPTURE.C: 94: PORTD = 0B00000000;
	movlb 0	; select bank0
	clrf	(15)	;volatile
	line	95
;TEST_62F08x_TIM2_CAPTURE.C: 95: TRISD = 0B11111111;
	movlw	(0FFh)
	movlb 1	; select bank1
	movwf	(143)^080h	;volatile
	line	97
	
l4502:	
;TEST_62F08x_TIM2_CAPTURE.C: 97: WPUA = 0B00000000;
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	98
	
l4504:	
;TEST_62F08x_TIM2_CAPTURE.C: 98: WPUB = 0B00000000;
	clrf	(397)^0180h	;volatile
	line	99
	
l4506:	
;TEST_62F08x_TIM2_CAPTURE.C: 99: WPUC = 0B00000000;
	clrf	(398)^0180h	;volatile
	line	100
	
l4508:	
;TEST_62F08x_TIM2_CAPTURE.C: 100: WPUD = 0B00000000;
	clrf	(399)^0180h	;volatile
	line	102
	
l4510:	
;TEST_62F08x_TIM2_CAPTURE.C: 102: WPDA = 0B00000000;
	movlb 4	; select bank4
	clrf	(524)^0200h	;volatile
	line	103
	
l4512:	
;TEST_62F08x_TIM2_CAPTURE.C: 103: WPDB = 0B00000000;
	clrf	(525)^0200h	;volatile
	line	104
	
l4514:	
;TEST_62F08x_TIM2_CAPTURE.C: 104: WPDC = 0B00000000;
	clrf	(526)^0200h	;volatile
	line	105
	
l4516:	
;TEST_62F08x_TIM2_CAPTURE.C: 105: WPDD = 0B00000000;
	clrf	(527)^0200h	;volatile
	line	107
;TEST_62F08x_TIM2_CAPTURE.C: 107: PSRC0 = 0B11111111;
	movlw	(0FFh)
	movlb 2	; select bank2
	movwf	(282)^0100h	;volatile
	line	111
;TEST_62F08x_TIM2_CAPTURE.C: 111: PSRC1 = 0B11111111;
	movlw	(0FFh)
	movwf	(283)^0100h	;volatile
	line	115
;TEST_62F08x_TIM2_CAPTURE.C: 115: PSINK0 = 0B11111111;
	movlw	(0FFh)
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	116
;TEST_62F08x_TIM2_CAPTURE.C: 116: PSINK1 = 0B11111111;
	movlw	(0FFh)
	movwf	(411)^0180h	;volatile
	line	117
;TEST_62F08x_TIM2_CAPTURE.C: 117: PSINK2 = 0B11111111;
	movlw	(0FFh)
	movwf	(412)^0180h	;volatile
	line	118
;TEST_62F08x_TIM2_CAPTURE.C: 118: PSINK3 = 0B11111111;
	movlw	(0FFh)
	movwf	(413)^0180h	;volatile
	line	120
	
l4518:	
;TEST_62F08x_TIM2_CAPTURE.C: 120: ANSELA = 0B00000000;
	clrf	(407)^0180h	;volatile
	line	122
	
l2379:	
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
;;		line 40 in file "TEST_62F08x_TIM2_CAPTURE.C"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
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
	file	"TEST_62F08x_TIM2_CAPTURE.C"
	line	40
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 14
; Regs used in _ISR: [wreg+fsr1l-status,0]
psect	intentry
	pagesel	$
	line	43
	
i1l4452:	
;TEST_62F08x_TIM2_CAPTURE.C: 43: if(T4UIE && T4UIF)
	movlb 2	; select bank2
	btfss	(2192/8)^0100h,(2192)&7
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l4460
u1_20:
	
i1l4454:	
	btfss	(2200/8)^0100h,(2200)&7
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l4460
u2_20:
	line	45
	
i1l4456:	
;TEST_62F08x_TIM2_CAPTURE.C: 44: {
;TEST_62F08x_TIM2_CAPTURE.C: 45: T4UIF = 1;
	bsf	(2200/8)^0100h,(2200)&7
	line	46
	
i1l4458:	
;TEST_62F08x_TIM2_CAPTURE.C: 46: RB3 = ~RB3;
	movlw	1<<((107)&7)
	movlb 0	; select bank0
	xorwf	((107)/8),f
	line	50
	
i1l4460:	
;TEST_62F08x_TIM2_CAPTURE.C: 47: }
;TEST_62F08x_TIM2_CAPTURE.C: 50: if(T2CC1IE && T2CC1IF)
	movlb 6	; select bank6
	btfss	(6249/8)^0300h,(6249)&7
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l2376
u3_20:
	
i1l4462:	
	btfss	(6257/8)^0300h,(6257)&7
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l2376
u4_20:
	line	52
	
i1l4464:	
;TEST_62F08x_TIM2_CAPTURE.C: 51: {
;TEST_62F08x_TIM2_CAPTURE.C: 52: T2CC1IF = 1;
	bsf	(6257/8)^0300h,(6257)&7
	line	54
	
i1l4466:	
;TEST_62F08x_TIM2_CAPTURE.C: 54: TIM2CNTRH =0x00;
	clrf	(790)^0300h	;volatile
	line	55
;TEST_62F08x_TIM2_CAPTURE.C: 55: TIM2CNTRL =0x00;
	clrf	(791)^0300h	;volatile
	line	57
	
i1l4468:	
;TEST_62F08x_TIM2_CAPTURE.C: 57: RB4 = ~RB4;
	movlw	1<<((108)&7)
	movlb 0	; select bank0
	xorwf	((108)/8),f
	line	59
	
i1l4470:	
;TEST_62F08x_TIM2_CAPTURE.C: 59: dataH = TIM2CCR1H;
	movlb 6	; select bank6
	movf	(795)^0300h,w	;volatile
	movwf	(_dataH)	;volatile
	line	60
	
i1l4472:	
;TEST_62F08x_TIM2_CAPTURE.C: 60: dataL = TIM2CCR1L;
	movf	(796)^0300h,w	;volatile
	movwf	(_dataL)	;volatile
	line	62
	
i1l4474:	
;TEST_62F08x_TIM2_CAPTURE.C: 62: testdata[y++] =(unsigned int)(dataH<<8 | dataL);
	lslf	(_y),w	;volatile
	addlw	_testdata&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_dataL),w	;volatile
	movwi	[0]fsr1
	movf	(_dataH),w	;volatile
	movwi	[1]fsr1
	
i1l4476:	
	incf	(_y),f	;volatile
	line	63
	
i1l4478:	
;TEST_62F08x_TIM2_CAPTURE.C: 63: _nop();
	nop
	line	65
	
i1l4480:	
;TEST_62F08x_TIM2_CAPTURE.C: 65: if(y>=20)
	movlw	(014h)
	subwf	(_y),w	;volatile
	skipc
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l2376
u5_20:
	line	67
	
i1l4482:	
;TEST_62F08x_TIM2_CAPTURE.C: 66: {
;TEST_62F08x_TIM2_CAPTURE.C: 67: y=0;
	clrf	(_y)	;volatile
	line	70
	
i1l4484:	
;TEST_62F08x_TIM2_CAPTURE.C: 70: period = testdata[1]/32;
	movlb 0	; select bank0
	movf	1+(_testdata)+02h,w	;volatile
	movwf	(_period+1)	;volatile
	movf	0+(_testdata)+02h,w	;volatile
	movwf	(_period)	;volatile
	
i1l4486:	
	movlw	05h
	
u6_25:
	lsrf	(_period+1),f	;volatile
	rrf	(_period),f	;volatile
	decfsz	wreg,f
	goto	u6_25
	line	73
	
i1l2376:	
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
