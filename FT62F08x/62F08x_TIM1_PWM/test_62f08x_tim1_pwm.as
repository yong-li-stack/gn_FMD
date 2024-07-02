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
	FNCALL	_main,_Time1Initial
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
	global	_TIM1CCER1
psect	strings
psect	_ad3nop_text
_TIM1CCER1	set	541
	global	_TIM1CCER2
psect	strings
psect	_ad3nop_text
_TIM1CCER2	set	542
	global	_TIM1CCMR1
psect	strings
psect	_ad3nop_text
_TIM1CCMR1	set	537
	global	_TIM1CCMR2
psect	strings
psect	_ad3nop_text
_TIM1CCMR2	set	538
	global	_TIM1CCMR3
psect	strings
psect	_ad3nop_text
_TIM1CCMR3	set	539
	global	_TIM1CCMR4
psect	strings
psect	_ad3nop_text
_TIM1CCMR4	set	540
	global	_TIM1CR1
psect	strings
psect	_ad3nop_text
_TIM1CR1	set	529
	global	_TIM1EGR
psect	strings
psect	_ad3nop_text
_TIM1EGR	set	536
	global	_TIM1IER
psect	strings
psect	_ad3nop_text
_TIM1IER	set	533
	global	_TIM1SMCR
psect	strings
psect	_ad3nop_text
_TIM1SMCR	set	531
	global	_TIM1SR1
psect	strings
psect	_ad3nop_text
_TIM1SR1	set	534
	global	_TIM1SR2
psect	strings
psect	_ad3nop_text
_TIM1SR2	set	535
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
	global	_TIM1ARRH
psect	strings
psect	_ad3nop_text
_TIM1ARRH	set	656
	global	_TIM1ARRL
psect	strings
psect	_ad3nop_text
_TIM1ARRL	set	657
	global	_TIM1BKR
psect	strings
psect	_ad3nop_text
_TIM1BKR	set	667
	global	_TIM1CCR1H
psect	strings
psect	_ad3nop_text
_TIM1CCR1H	set	659
	global	_TIM1CCR1L
psect	strings
psect	_ad3nop_text
_TIM1CCR1L	set	660
	global	_TIM1CNTRH
psect	strings
psect	_ad3nop_text
_TIM1CNTRH	set	652
	global	_TIM1CNTRL
psect	strings
psect	_ad3nop_text
_TIM1CNTRL	set	653
	global	_TIM1DTR
psect	strings
psect	_ad3nop_text
_TIM1DTR	set	668
	global	_TIM1OISR
psect	strings
psect	_ad3nop_text
_TIM1OISR	set	669
	global	_TIM1PSCRH
psect	strings
psect	_ad3nop_text
_TIM1PSCRH	set	654
	global	_TIM1PSCRL
psect	strings
psect	_ad3nop_text
_TIM1PSCRL	set	655
	global	_TIM1RCR
psect	strings
psect	_ad3nop_text
_TIM1RCR	set	658
	global	_TCKSRC
psect	strings
psect	_ad3nop_text
_TCKSRC	set	799
	global	_LEBCON
psect	strings
psect	_ad3nop_text
_LEBCON	set	1052
psect	strings
psect	_ad3nop_text
psect	strings
psect	_ad3nop_text
	file	"test_62f08x_tim1_pwm.as"
psect	strings
psect	_ad3nop_text
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

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
	global	?_Time1Initial
?_Time1Initial:	; 0 bytes @ 0x0
	global	??_Time1Initial
??_Time1Initial:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      0       0
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
;;                       _Time1Initial
;; ---------------------------------------------------------------------------------
;; (1) _Time1Initial                                         0     0      0       0
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
;;   _Time1Initial
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
;;COMMON               E      0       0       2        0.0%
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
;;ABS                  0      0       0      20        0.0%
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
;;DATA                 0      0       0      31        0.0%
;;BITSFR31             0      0       0      32        0.0%
;;SFR31                0      0       0      32        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 414 in file "TEST_62F08x_TIM1_PWM.C"
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
;;		_Time1Initial
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"TEST_62F08x_TIM1_PWM.C"
	line	414
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 14
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	415
	
l4478:	
;TEST_62F08x_TIM1_PWM.C: 415: POWER_INITIAL();
	fcall	_POWER_INITIAL
	line	416
;TEST_62F08x_TIM1_PWM.C: 416: Time1Initial();
	fcall	_Time1Initial
	line	420
	
l4480:	
;TEST_62F08x_TIM1_PWM.C: 419: {
;TEST_62F08x_TIM1_PWM.C: 420: _nop();
	nop
	goto	l4480
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	422
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Time1Initial
psect	text44,local,class=CODE,delta=2
global __ptext44
__ptext44:

;; *************** function _Time1Initial *****************
;; Defined at:
;;		line 89 in file "TEST_62F08x_TIM1_PWM.C"
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
;;		On exit  : 17F/8
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
psect	text44
	file	"TEST_62F08x_TIM1_PWM.C"
	line	89
	global	__size_of_Time1Initial
	__size_of_Time1Initial	equ	__end_of_Time1Initial-_Time1Initial
	
_Time1Initial:	
	opt	stack 14
; Regs used in _Time1Initial: [wreg+status,2]
	line	90
	
l4446:	
;TEST_62F08x_TIM1_PWM.C: 90: PCKEN |=0B00000010;
	movlb 1	; select bank1
	bsf	(154)^080h+(1/8),(1)&7	;volatile
	line	91
	
l4448:	
;TEST_62F08x_TIM1_PWM.C: 91: CKOCON=0B00100000;
	movlw	(020h)
	movwf	(149)^080h	;volatile
	line	92
;TEST_62F08x_TIM1_PWM.C: 92: TCKSRC=0B00000011;
	movlw	(03h)
	movlb 6	; select bank6
	movwf	(799)^0300h	;volatile
	line	117
;TEST_62F08x_TIM1_PWM.C: 117: TIM1CR1 =0B10000101;
	movlw	(085h)
	movlb 4	; select bank4
	movwf	(529)^0200h	;volatile
	line	150
	
l4450:	
;TEST_62F08x_TIM1_PWM.C: 150: TIM1SMCR=0B00000000;
	clrf	(531)^0200h	;volatile
	line	179
	
l4452:	
;TEST_62F08x_TIM1_PWM.C: 179: TIM1IER =0B00000000;
	clrf	(533)^0200h	;volatile
	line	205
	
l4454:	
;TEST_62F08x_TIM1_PWM.C: 205: TIM1SR1 =0B00000000;
	clrf	(534)^0200h	;volatile
	line	237
	
l4456:	
;TEST_62F08x_TIM1_PWM.C: 237: TIM1SR2 =0B00000000;
	clrf	(535)^0200h	;volatile
	line	239
	
l4458:	
;TEST_62F08x_TIM1_PWM.C: 239: TIM1EGR =0B00000000;
	clrf	(536)^0200h	;volatile
	line	268
	
l4460:	
;TEST_62F08x_TIM1_PWM.C: 268: TIM1CCMR1 =0B01101000;
	movlw	(068h)
	movwf	(537)^0200h	;volatile
	line	303
;TEST_62F08x_TIM1_PWM.C: 303: TIM1CCMR2 =0B00000000;
	clrf	(538)^0200h	;volatile
	line	304
;TEST_62F08x_TIM1_PWM.C: 304: TIM1CCMR3 =0B00000000;
	clrf	(539)^0200h	;volatile
	line	305
;TEST_62F08x_TIM1_PWM.C: 305: TIM1CCMR4 =0B00000000;
	clrf	(540)^0200h	;volatile
	line	307
	
l4462:	
;TEST_62F08x_TIM1_PWM.C: 307: TIM1CCER1 =0B00001111;
	movlw	(0Fh)
	movwf	(541)^0200h	;volatile
	line	347
	
l4464:	
;TEST_62F08x_TIM1_PWM.C: 347: TIM1CCER2 =0B00000000;
	clrf	(542)^0200h	;volatile
	line	349
	
l4466:	
;TEST_62F08x_TIM1_PWM.C: 349: TIM1CNTRH =0B00000000;
	movlb 5	; select bank5
	clrf	(652)^0280h	;volatile
	line	350
	
l4468:	
;TEST_62F08x_TIM1_PWM.C: 350: TIM1CNTRL =0B00000000;
	clrf	(653)^0280h	;volatile
	line	352
	
l4470:	
;TEST_62F08x_TIM1_PWM.C: 352: TIM1PSCRH =0B00000000;
	clrf	(654)^0280h	;volatile
	line	353
	
l4472:	
;TEST_62F08x_TIM1_PWM.C: 353: TIM1PSCRL =0B00000000;
	clrf	(655)^0280h	;volatile
	line	355
;TEST_62F08x_TIM1_PWM.C: 355: TIM1ARRH =0x03;
	movlw	(03h)
	movwf	(656)^0280h	;volatile
	line	356
;TEST_62F08x_TIM1_PWM.C: 356: TIM1ARRL =0xe8;
	movlw	(0E8h)
	movwf	(657)^0280h	;volatile
	line	358
;TEST_62F08x_TIM1_PWM.C: 358: TIM1RCR =0B00001111;
	movlw	(0Fh)
	movwf	(658)^0280h	;volatile
	line	360
;TEST_62F08x_TIM1_PWM.C: 360: TIM1CCR1H =0x01;
	movlw	(01h)
	movwf	(659)^0280h	;volatile
	line	361
;TEST_62F08x_TIM1_PWM.C: 361: TIM1CCR1L =0xf4;
	movlw	(0F4h)
	movwf	(660)^0280h	;volatile
	line	372
;TEST_62F08x_TIM1_PWM.C: 372: TIM1BKR =0B11000000;
	movlw	(0C0h)
	movwf	(667)^0280h	;volatile
	line	373
;TEST_62F08x_TIM1_PWM.C: 373: TIM1DTR =0B00000111;
	movlw	(07h)
	movwf	(668)^0280h	;volatile
	line	380
	
l4474:	
;TEST_62F08x_TIM1_PWM.C: 380: TIM1OISR =0B00000000;
	clrf	(669)^0280h	;volatile
	line	390
	
l4476:	
;TEST_62F08x_TIM1_PWM.C: 390: LEBCON =0B00000000;
	movlb 8	; select bank8
	clrf	(1052)^0400h	;volatile
	line	407
	
l2369:	
	return
	opt stack 0
GLOBAL	__end_of_Time1Initial
	__end_of_Time1Initial:
;; =============== function _Time1Initial ends ============

	signat	_Time1Initial,88
	global	_POWER_INITIAL
psect	text45,local,class=CODE,delta=2
global __ptext45
__ptext45:

;; *************** function _POWER_INITIAL *****************
;; Defined at:
;;		line 37 in file "TEST_62F08x_TIM1_PWM.C"
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
psect	text45
	file	"TEST_62F08x_TIM1_PWM.C"
	line	37
	global	__size_of_POWER_INITIAL
	__size_of_POWER_INITIAL	equ	__end_of_POWER_INITIAL-_POWER_INITIAL
	
_POWER_INITIAL:	
	opt	stack 14
; Regs used in _POWER_INITIAL: [wreg+status,2]
	line	38
	
l4414:	
;TEST_62F08x_TIM1_PWM.C: 38: OSCCON = 0B01110001;
	movlw	(071h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	45
	
l4416:	
;TEST_62F08x_TIM1_PWM.C: 45: INTCON = 0;
	clrf	(11)	;volatile
	line	47
	
l4418:	
;TEST_62F08x_TIM1_PWM.C: 47: PORTA = 0B00000000;
	movlb 0	; select bank0
	clrf	(12)	;volatile
	line	48
;TEST_62F08x_TIM1_PWM.C: 48: TRISA = 0B11111110;
	movlw	(0FEh)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	49
	
l4420:	
;TEST_62F08x_TIM1_PWM.C: 49: PORTB = 0B00000000;
	movlb 0	; select bank0
	clrf	(13)	;volatile
	line	50
	
l4422:	
;TEST_62F08x_TIM1_PWM.C: 50: TRISB = 0B11111111;
	movlw	(0FFh)
	movlb 1	; select bank1
	movwf	(141)^080h	;volatile
	line	51
;TEST_62F08x_TIM1_PWM.C: 51: PORTC = 0B00000000;
	movlb 0	; select bank0
	clrf	(14)	;volatile
	line	52
	
l4424:	
;TEST_62F08x_TIM1_PWM.C: 52: TRISC = 0B11111110;
	movlw	(0FEh)
	movlb 1	; select bank1
	movwf	(142)^080h	;volatile
	line	53
	
l4426:	
;TEST_62F08x_TIM1_PWM.C: 53: PORTD = 0B00000000;
	movlb 0	; select bank0
	clrf	(15)	;volatile
	line	54
;TEST_62F08x_TIM1_PWM.C: 54: TRISD = 0B11111111;
	movlw	(0FFh)
	movlb 1	; select bank1
	movwf	(143)^080h	;volatile
	line	56
	
l4428:	
;TEST_62F08x_TIM1_PWM.C: 56: WPUA = 0B00000000;
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	57
	
l4430:	
;TEST_62F08x_TIM1_PWM.C: 57: WPUB = 0B00000000;
	clrf	(397)^0180h	;volatile
	line	58
	
l4432:	
;TEST_62F08x_TIM1_PWM.C: 58: WPUC = 0B00000000;
	clrf	(398)^0180h	;volatile
	line	59
	
l4434:	
;TEST_62F08x_TIM1_PWM.C: 59: WPUD = 0B00000000;
	clrf	(399)^0180h	;volatile
	line	61
	
l4436:	
;TEST_62F08x_TIM1_PWM.C: 61: WPDA = 0B00000000;
	movlb 4	; select bank4
	clrf	(524)^0200h	;volatile
	line	62
	
l4438:	
;TEST_62F08x_TIM1_PWM.C: 62: WPDB = 0B00000000;
	clrf	(525)^0200h	;volatile
	line	63
	
l4440:	
;TEST_62F08x_TIM1_PWM.C: 63: WPDC = 0B00000000;
	clrf	(526)^0200h	;volatile
	line	64
	
l4442:	
;TEST_62F08x_TIM1_PWM.C: 64: WPDD = 0B00000000;
	clrf	(527)^0200h	;volatile
	line	66
;TEST_62F08x_TIM1_PWM.C: 66: PSRC0 = 0B11111111;
	movlw	(0FFh)
	movlb 2	; select bank2
	movwf	(282)^0100h	;volatile
	line	70
;TEST_62F08x_TIM1_PWM.C: 70: PSRC1 = 0B11111111;
	movlw	(0FFh)
	movwf	(283)^0100h	;volatile
	line	74
;TEST_62F08x_TIM1_PWM.C: 74: PSINK0 = 0B11111111;
	movlw	(0FFh)
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	75
;TEST_62F08x_TIM1_PWM.C: 75: PSINK1 = 0B11111111;
	movlw	(0FFh)
	movwf	(411)^0180h	;volatile
	line	76
;TEST_62F08x_TIM1_PWM.C: 76: PSINK2 = 0B11111111;
	movlw	(0FFh)
	movwf	(412)^0180h	;volatile
	line	77
;TEST_62F08x_TIM1_PWM.C: 77: PSINK3 = 0B11111111;
	movlw	(0FFh)
	movwf	(413)^0180h	;volatile
	line	79
	
l4444:	
;TEST_62F08x_TIM1_PWM.C: 79: ANSELA = 0B00000000;
	clrf	(407)^0180h	;volatile
	line	80
	
l2366:	
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
;;		line 25 in file "TEST_62F08x_TIM1_PWM.C"
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
	file	"TEST_62F08x_TIM1_PWM.C"
	line	25
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 14
; Regs used in _ISR: []
psect	intentry
	pagesel	$
	line	27
	
i1l2363:	
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
