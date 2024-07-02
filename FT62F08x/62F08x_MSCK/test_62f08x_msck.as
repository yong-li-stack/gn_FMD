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
	FNCALL	_main,_SlowTimeTest
	FNCALL	_main,_DelayMs
	FNCALL	_DelayMs,_DelayUs
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
	global	_TestBuff
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
_TestBuff:
       ds      2

	global	_INTCON
_INTCON	set	11
	global	_PORTA
_PORTA	set	12
	global	_PORTB
_PORTB	set	13
	global	_PORTC
_PORTC	set	14
	global	_PORTD
_PORTD	set	15
	global	_CKMIF
_CKMIF	set	137
	global	_OSCCON
_OSCCON	set	153
	global	_PCKEN
_PCKEN	set	154
	global	_TRISA
_TRISA	set	140
	global	_TRISB
_TRISB	set	141
	global	_TRISC
_TRISC	set	142
	global	_TRISD
_TRISD	set	143
	global	_PSRC0
_PSRC0	set	282
	global	_PSRC1
_PSRC1	set	283
	global	_ANSELA
_ANSELA	set	407
	global	_PSINK0
_PSINK0	set	410
	global	_PSINK1
_PSINK1	set	411
	global	_PSINK2
_PSINK2	set	412
	global	_PSINK3
_PSINK3	set	413
	global	_WPUA
_WPUA	set	396
	global	_WPUB
_WPUB	set	397
	global	_WPUC
_WPUC	set	398
	global	_WPUD
_WPUD	set	399
	global	_WPDA
_WPDA	set	524
	global	_WPDB
_WPDB	set	525
	global	_WPDC
_WPDC	set	526
	global	_WPDD
_WPDD	set	527
	global	_TCKSRC
_TCKSRC	set	799
	global	_T2CEN
_T2CEN	set	6240
	global	_SOSCPRH
_SOSCPRH	set	1055
	global	_SOSCPRL
_SOSCPRL	set	1054
	global	_CKCNTI
_CKCNTI	set	8424
	global	_CKMAVG
_CKMAVG	set	8425
	file	"test_62f08x_msck.as"
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
	global	?_DelayUs
?_DelayUs:	; 0 bytes @ 0x0
	global	??_DelayUs
??_DelayUs:	; 0 bytes @ 0x0
	global	?_DelayMs
?_DelayMs:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_SlowTimeTest
?_SlowTimeTest:	; 2 bytes @ 0x0
	global	DelayUs@Time
DelayUs@Time:	; 1 bytes @ 0x0
	ds	1
	global	DelayUs@a
DelayUs@a:	; 1 bytes @ 0x1
	ds	1
	global	??_DelayMs
??_DelayMs:	; 0 bytes @ 0x2
	global	??_SlowTimeTest
??_SlowTimeTest:	; 0 bytes @ 0x2
	global	DelayMs@Time
DelayMs@Time:	; 1 bytes @ 0x2
	ds	1
	global	DelayMs@a
DelayMs@a:	; 1 bytes @ 0x3
	ds	1
	global	DelayMs@b
DelayMs@b:	; 1 bytes @ 0x4
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x5
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 2 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5       7
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

;; ?_SlowTimeTest	unsigned int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_DelayMs
;;   _DelayMs->_DelayUs
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
;; (0) _main                                                 0     0      0      90
;;                      _POWER_INITIAL
;;                       _SlowTimeTest
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (1) _DelayMs                                              3     3      0      90
;;                                              2 COMMON     3     3      0
;;                            _DelayUs
;; ---------------------------------------------------------------------------------
;; (1) _SlowTimeTest                                         2     0      2       0
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; (2) _DelayUs                                              2     2      0      30
;;                                              0 COMMON     2     2      0
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
;;   _SlowTimeTest
;;   _DelayMs
;;     _DelayUs
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
;;COMMON               E      5       7       2       50.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR2              0      0       0       3        0.0%
;;SFR2                 0      0       0       3        0.0%
;;STACK                0      0       2       3        0.0%
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
;;ABS                  0      0       7      20        0.0%
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
;;DATA                 0      0       9      31        0.0%
;;BITSFR31             0      0       0      32        0.0%
;;SFR31                0      0       0      32        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 165 in file "TEST_62F08x_MSCK.C"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_POWER_INITIAL
;;		_SlowTimeTest
;;		_DelayMs
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"TEST_62F08x_MSCK.C"
	line	165
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 13
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	167
	
l4523:	
;TEST_62F08x_MSCK.C: 167: POWER_INITIAL();
	fcall	_POWER_INITIAL
	line	170
	
l4525:	
;TEST_62F08x_MSCK.C: 169: {
;TEST_62F08x_MSCK.C: 170: TestBuff = SlowTimeTest();
	fcall	_SlowTimeTest
	movf	(1+(?_SlowTimeTest)),w
	movwf	(_TestBuff+1)	;volatile
	movf	(0+(?_SlowTimeTest)),w
	movwf	(_TestBuff)	;volatile
	line	172
	
l4527:	
;TEST_62F08x_MSCK.C: 172: _nop();
	nop
	line	173
	
l4529:	
;TEST_62F08x_MSCK.C: 173: _nop();
	nop
	line	174
	
l4531:	
;TEST_62F08x_MSCK.C: 174: _nop();
	nop
	line	175
	
l4533:	
;TEST_62F08x_MSCK.C: 175: DelayMs(200);
	movlw	(0C8h)
	fcall	_DelayMs
	goto	l4525
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	177
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_DelayMs
psect	text56,local,class=CODE,delta=2
global __ptext56
__ptext56:

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 110 in file "TEST_62F08x_MSCK.C"
;; Parameters:    Size  Location     Type
;;  Time            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Time            1    2[COMMON] unsigned char 
;;  b               1    4[COMMON] unsigned char 
;;  a               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/8
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
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
psect	text56
	file	"TEST_62F08x_MSCK.C"
	line	110
	global	__size_of_DelayMs
	__size_of_DelayMs	equ	__end_of_DelayMs-_DelayMs
	
_DelayMs:	
	opt	stack 13
; Regs used in _DelayMs: [wreg+status,2+status,0+pclath+cstack]
;DelayMs@Time stored from wreg
	line	112
	movwf	(DelayMs@Time)
	
l4505:	
;TEST_62F08x_MSCK.C: 111: unsigned char a,b;
;TEST_62F08x_MSCK.C: 112: for(a=0;a<Time;a++)
	clrf	(DelayMs@a)
	goto	l4521
	line	114
	
l4507:	
;TEST_62F08x_MSCK.C: 113: {
;TEST_62F08x_MSCK.C: 114: for(b=0;b<5;b++)
	clrf	(DelayMs@b)
	line	116
	
l4513:	
;TEST_62F08x_MSCK.C: 115: {
;TEST_62F08x_MSCK.C: 116: DelayUs(197);
	movlw	(0C5h)
	fcall	_DelayUs
	line	114
	
l4515:	
	incf	(DelayMs@b),f
	
l4517:	
	movlw	(05h)
	subwf	(DelayMs@b),w
	skipc
	goto	u31
	goto	u30
u31:
	goto	l4513
u30:
	line	112
	
l4519:	
	incf	(DelayMs@a),f
	
l4521:	
	movf	(DelayMs@Time),w
	subwf	(DelayMs@a),w
	skipc
	goto	u41
	goto	u40
u41:
	goto	l4507
u40:
	line	119
	
l2382:	
	return
	opt stack 0
GLOBAL	__end_of_DelayMs
	__end_of_DelayMs:
;; =============== function _DelayMs ends ============

	signat	_DelayMs,4216
	global	_SlowTimeTest
psect	text57,local,class=CODE,delta=2
global __ptext57
__ptext57:

;; *************** function _SlowTimeTest *****************
;; Defined at:
;;		line 146 in file "TEST_62F08x_MSCK.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/3
;;		On exit  : 1F/8
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text57
	file	"TEST_62F08x_MSCK.C"
	line	146
	global	__size_of_SlowTimeTest
	__size_of_SlowTimeTest	equ	__end_of_SlowTimeTest-_SlowTimeTest
	
_SlowTimeTest:	
	opt	stack 14
; Regs used in _SlowTimeTest: [wreg]
	line	147
	
l4489:	
;TEST_62F08x_MSCK.C: 147: PCKEN |= 0B00000100;
	movlb 1	; select bank1
	bsf	(154)^080h+(2/8),(2)&7	;volatile
	line	148
	
l4491:	
;TEST_62F08x_MSCK.C: 148: TCKSRC= 0B00010000;
	movlw	(010h)
	movlb 6	; select bank6
	movwf	(799)^0300h	;volatile
	line	149
	
l4493:	
;TEST_62F08x_MSCK.C: 149: T2CEN = 1;
	bsf	(6240/8)^0300h,(6240)&7
	line	150
	
l4495:	
;TEST_62F08x_MSCK.C: 150: CKMAVG = 1;
	movlb 8	; select bank8
	bsf	(8425/8)^0400h,(8425)&7
	line	152
	
l4497:	
;TEST_62F08x_MSCK.C: 152: CKCNTI = 1;
	bsf	(8424/8)^0400h,(8424)&7
	line	153
	
l4499:	
;TEST_62F08x_MSCK.C: 153: _nop();
	nop
	line	154
;TEST_62F08x_MSCK.C: 154: while(!CKMIF);
	
l2393:	
	movlb 0	; select bank0
	btfss	(137/8),(137)&7
	goto	u21
	goto	u20
u21:
	goto	l2393
u20:
	
l2395:	
	line	155
;TEST_62F08x_MSCK.C: 155: CKMIF=0;
	bcf	(137/8),(137)&7
	line	156
	
l4501:	
;TEST_62F08x_MSCK.C: 156: return (unsigned int)(SOSCPRH<<8|SOSCPRL);
	movlb 8	; select bank8
	movf	(1055)^0400h,w	;volatile
	movwf	(?_SlowTimeTest+1)
	clrf	(?_SlowTimeTest)
	movf	(1054)^0400h,w	;volatile
	iorwf	(?_SlowTimeTest),f
	line	157
	
l2396:	
	return
	opt stack 0
GLOBAL	__end_of_SlowTimeTest
	__end_of_SlowTimeTest:
;; =============== function _SlowTimeTest ends ============

	signat	_SlowTimeTest,90
	global	_DelayUs
psect	text58,local,class=CODE,delta=2
global __ptext58
__ptext58:

;; *************** function _DelayUs *****************
;; Defined at:
;;		line 96 in file "TEST_62F08x_MSCK.C"
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
;;		On entry : 0/8
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
;;		_DelayMs
;; This function uses a non-reentrant model
;;
psect	text58
	file	"TEST_62F08x_MSCK.C"
	line	96
	global	__size_of_DelayUs
	__size_of_DelayUs	equ	__end_of_DelayUs-_DelayUs
	
_DelayUs:	
	opt	stack 13
; Regs used in _DelayUs: [wreg+status,2+status,0]
;DelayUs@Time stored from wreg
	line	98
	movwf	(DelayUs@Time)
	
l4483:	
;TEST_62F08x_MSCK.C: 97: unsigned char a;
;TEST_62F08x_MSCK.C: 98: for(a=0;a<Time;a++)
	clrf	(DelayUs@a)
	goto	l4487
	line	99
	
l2372:	
	line	100
;TEST_62F08x_MSCK.C: 99: {
;TEST_62F08x_MSCK.C: 100: _nop();
	nop
	line	98
	
l4485:	
	incf	(DelayUs@a),f
	
l4487:	
	movf	(DelayUs@Time),w
	subwf	(DelayUs@a),w
	skipc
	goto	u11
	goto	u10
u11:
	goto	l2372
u10:
	line	102
	
l2374:	
	return
	opt stack 0
GLOBAL	__end_of_DelayUs
	__end_of_DelayUs:
;; =============== function _DelayUs ends ============

	signat	_DelayUs,4216
	global	_POWER_INITIAL
psect	text59,local,class=CODE,delta=2
global __ptext59
__ptext59:

;; *************** function _POWER_INITIAL *****************
;; Defined at:
;;		line 47 in file "TEST_62F08x_MSCK.C"
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
psect	text59
	file	"TEST_62F08x_MSCK.C"
	line	47
	global	__size_of_POWER_INITIAL
	__size_of_POWER_INITIAL	equ	__end_of_POWER_INITIAL-_POWER_INITIAL
	
_POWER_INITIAL:	
	opt	stack 14
; Regs used in _POWER_INITIAL: [wreg+status,2]
	line	49
	
l4441:	
;TEST_62F08x_MSCK.C: 49: OSCCON = 0B01110001;
	movlw	(071h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	52
	
l4443:	
;TEST_62F08x_MSCK.C: 52: INTCON = 0;
	clrf	(11)	;volatile
	line	54
	
l4445:	
;TEST_62F08x_MSCK.C: 54: PORTA = 0B00000000;
	movlb 0	; select bank0
	clrf	(12)	;volatile
	line	55
;TEST_62F08x_MSCK.C: 55: TRISA = 0B11111111;
	movlw	(0FFh)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	56
	
l4447:	
;TEST_62F08x_MSCK.C: 56: PORTB = 0B00000000;
	movlb 0	; select bank0
	clrf	(13)	;volatile
	line	57
	
l4449:	
;TEST_62F08x_MSCK.C: 57: TRISB = 0B11110111;
	movlw	(0F7h)
	movlb 1	; select bank1
	movwf	(141)^080h	;volatile
	line	58
;TEST_62F08x_MSCK.C: 58: PORTC = 0B00000000;
	movlb 0	; select bank0
	clrf	(14)	;volatile
	line	59
	
l4451:	
;TEST_62F08x_MSCK.C: 59: TRISC = 0B11111111;
	movlw	(0FFh)
	movlb 1	; select bank1
	movwf	(142)^080h	;volatile
	line	60
	
l4453:	
;TEST_62F08x_MSCK.C: 60: PORTD = 0B00000000;
	movlb 0	; select bank0
	clrf	(15)	;volatile
	line	61
;TEST_62F08x_MSCK.C: 61: TRISD = 0B11111111;
	movlw	(0FFh)
	movlb 1	; select bank1
	movwf	(143)^080h	;volatile
	line	63
	
l4455:	
;TEST_62F08x_MSCK.C: 63: WPUA = 0B00000000;
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	64
	
l4457:	
;TEST_62F08x_MSCK.C: 64: WPUB = 0B00000000;
	clrf	(397)^0180h	;volatile
	line	65
;TEST_62F08x_MSCK.C: 65: WPUC = 0B00001000;
	movlw	(08h)
	movwf	(398)^0180h	;volatile
	line	66
	
l4459:	
;TEST_62F08x_MSCK.C: 66: WPUD = 0B00000000;
	clrf	(399)^0180h	;volatile
	line	68
	
l4461:	
;TEST_62F08x_MSCK.C: 68: WPDA = 0B00000000;
	movlb 4	; select bank4
	clrf	(524)^0200h	;volatile
	line	69
	
l4463:	
;TEST_62F08x_MSCK.C: 69: WPDB = 0B00000000;
	clrf	(525)^0200h	;volatile
	line	70
	
l4465:	
;TEST_62F08x_MSCK.C: 70: WPDC = 0B00000000;
	clrf	(526)^0200h	;volatile
	line	71
	
l4467:	
;TEST_62F08x_MSCK.C: 71: WPDD = 0B00000000;
	clrf	(527)^0200h	;volatile
	line	73
	
l4469:	
;TEST_62F08x_MSCK.C: 73: PSRC0 = 0B11111111;
	movlw	(0FFh)
	movlb 2	; select bank2
	movwf	(282)^0100h	;volatile
	line	77
	
l4471:	
;TEST_62F08x_MSCK.C: 77: PSRC1 = 0B11111111;
	movlw	(0FFh)
	movwf	(283)^0100h	;volatile
	line	81
	
l4473:	
;TEST_62F08x_MSCK.C: 81: PSINK0 = 0B11111111;
	movlw	(0FFh)
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	82
	
l4475:	
;TEST_62F08x_MSCK.C: 82: PSINK1 = 0B11111111;
	movlw	(0FFh)
	movwf	(411)^0180h	;volatile
	line	83
	
l4477:	
;TEST_62F08x_MSCK.C: 83: PSINK2 = 0B11111111;
	movlw	(0FFh)
	movwf	(412)^0180h	;volatile
	line	84
	
l4479:	
;TEST_62F08x_MSCK.C: 84: PSINK3 = 0B11111111;
	movlw	(0FFh)
	movwf	(413)^0180h	;volatile
	line	86
	
l4481:	
;TEST_62F08x_MSCK.C: 86: ANSELA = 0B00000000;
	clrf	(407)^0180h	;volatile
	line	88
	
l2368:	
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
;;		line 37 in file "TEST_62F08x_MSCK.C"
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
	file	"TEST_62F08x_MSCK.C"
	line	37
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 13
; Regs used in _ISR: []
psect	intentry
	pagesel	$
	line	39
	
i1l2365:	
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
