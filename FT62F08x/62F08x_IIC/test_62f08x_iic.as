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
	FNCALL	_main,_IIC_INITIAL
	FNCALL	_main,_IIC_WRITE
	FNCALL	_main,_DelayMs
	FNCALL	_main,_IIC_READ
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
	global	_IICReadData
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
	global	_ODCON0
psect	strings
psect	_ad3nop_text
_ODCON0	set	543
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
	global	_I2CCCRH
psect	strings
psect	_ad3nop_text
_I2CCCRH	set	1045
	global	_I2CCCRL
psect	strings
psect	_ad3nop_text
_I2CCCRL	set	1044
	global	_I2CCMD
psect	strings
psect	_ad3nop_text
_I2CCMD	set	1043
	global	_I2CCR1
psect	strings
psect	_ad3nop_text
_I2CCR1	set	1036
	global	_I2CCR2
psect	strings
psect	_ad3nop_text
_I2CCR2	set	1037
	global	_I2CCR3
psect	strings
psect	_ad3nop_text
_I2CCR3	set	1038
	global	_I2CDR
psect	strings
psect	_ad3nop_text
_I2CDR	set	1042
	global	_I2CFREQ
psect	strings
psect	_ad3nop_text
_I2CFREQ	set	1041
	global	_I2CITR
psect	strings
psect	_ad3nop_text
_I2CITR	set	1046
	global	_I2COARH
psect	strings
psect	_ad3nop_text
_I2COARH	set	1040
	global	_I2COARL
psect	strings
psect	_ad3nop_text
_I2COARL	set	1039
	global	_ENABLE
psect	strings
psect	_ad3nop_text
_ENABLE	set	8304
	global	_IICRXNE
psect	strings
psect	_ad3nop_text
_IICRXNE	set	8382
	global	_IICTXE
psect	strings
psect	_ad3nop_text
_IICTXE	set	8383
psect	strings
psect	_ad3nop_text
psect	strings
psect	_ad3nop_text
	file	"test_62f08x_iic.as"
psect	strings
psect	_ad3nop_text
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_IICReadData:
       ds      1

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
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
	global	??_IIC_READ
??_IIC_READ:	; 0 bytes @ 0x0
	global	?_IIC_WRITE
?_IIC_WRITE:	; 0 bytes @ 0x0
	global	?_IIC_INITIAL
?_IIC_INITIAL:	; 0 bytes @ 0x0
	global	??_IIC_INITIAL
??_IIC_INITIAL:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_IIC_READ
?_IIC_READ:	; 1 bytes @ 0x0
	global	DelayUs@Time
DelayUs@Time:	; 1 bytes @ 0x0
	global	IIC_READ@address
IIC_READ@address:	; 1 bytes @ 0x0
	global	IIC_WRITE@data
IIC_WRITE@data:	; 1 bytes @ 0x0
	ds	1
	global	??_IIC_WRITE
??_IIC_WRITE:	; 0 bytes @ 0x1
	global	DelayUs@a
DelayUs@a:	; 1 bytes @ 0x1
	global	IIC_READ@iicdata
IIC_READ@iicdata:	; 1 bytes @ 0x1
	global	IIC_WRITE@address
IIC_WRITE@address:	; 1 bytes @ 0x1
	ds	1
	global	??_DelayMs
??_DelayMs:	; 0 bytes @ 0x2
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
;;Data sizes: Strings 0, constant 0, data 0, bss 1, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5       6
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
;; (0) _main                                                 0     0      0     150
;;                      _POWER_INITIAL
;;                        _IIC_INITIAL
;;                          _IIC_WRITE
;;                            _DelayMs
;;                           _IIC_READ
;; ---------------------------------------------------------------------------------
;; (1) _DelayMs                                              3     3      0      90
;;                                              2 COMMON     3     3      0
;;                            _DelayUs
;; ---------------------------------------------------------------------------------
;; (2) _DelayUs                                              2     2      0      30
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _IIC_INITIAL                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _IIC_WRITE                                            2     1      1      30
;;                                              0 COMMON     2     1      1
;; ---------------------------------------------------------------------------------
;; (1) _IIC_READ                                             2     2      0      30
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
;;   _IIC_INITIAL
;;   _IIC_WRITE
;;   _DelayMs
;;     _DelayUs
;;   _IIC_READ
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
;;COMMON               E      5       6       2       42.9%
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
;;ABS                  0      0       6      20        0.0%
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
;;DATA                 0      0       8      31        0.0%
;;BITSFR31             0      0       0      32        0.0%
;;SFR31                0      0       0      32        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 230 in file "TEST_62F08x_IIC.C"
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
;;		_IIC_INITIAL
;;		_IIC_WRITE
;;		_DelayMs
;;		_IIC_READ
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"TEST_62F08x_IIC.C"
	line	230
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 13
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	231
	
l4566:	
;TEST_62F08x_IIC.C: 231: POWER_INITIAL();
	fcall	_POWER_INITIAL
	line	232
;TEST_62F08x_IIC.C: 232: IIC_INITIAL();
	fcall	_IIC_INITIAL
	line	234
;TEST_62F08x_IIC.C: 234: IIC_WRITE(0x12,0x55);
	movlw	(055h)
	movwf	(?_IIC_WRITE)
	movlw	(012h)
	fcall	_IIC_WRITE
	line	235
;TEST_62F08x_IIC.C: 235: DelayMs(10);
	movlw	(0Ah)
	fcall	_DelayMs
	line	236
	
l4568:	
;TEST_62F08x_IIC.C: 236: IICReadData = IIC_READ(0x12);
	movlw	(012h)
	fcall	_IIC_READ
	movwf	(_IICReadData)	;volatile
	line	240
	
l4570:	
;TEST_62F08x_IIC.C: 239: {
;TEST_62F08x_IIC.C: 240: _nop();
	nop
	goto	l4570
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	242
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_DelayMs
psect	text84,local,class=CODE,delta=2
global __ptext84
__ptext84:

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 108 in file "TEST_62F08x_IIC.C"
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
;;		On entry : 17F/8
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
psect	text84
	file	"TEST_62F08x_IIC.C"
	line	108
	global	__size_of_DelayMs
	__size_of_DelayMs	equ	__end_of_DelayMs-_DelayMs
	
_DelayMs:	
	opt	stack 13
; Regs used in _DelayMs: [wreg+status,2+status,0+pclath+cstack]
;DelayMs@Time stored from wreg
	line	110
	movwf	(DelayMs@Time)
	
l4548:	
;TEST_62F08x_IIC.C: 109: unsigned char a,b;
;TEST_62F08x_IIC.C: 110: for(a=0;a<Time;a++)
	clrf	(DelayMs@a)
	goto	l4564
	line	112
	
l4550:	
;TEST_62F08x_IIC.C: 111: {
;TEST_62F08x_IIC.C: 112: for(b=0;b<5;b++)
	clrf	(DelayMs@b)
	line	114
	
l4556:	
;TEST_62F08x_IIC.C: 113: {
;TEST_62F08x_IIC.C: 114: DelayUs(197);
	movlw	(0C5h)
	fcall	_DelayUs
	line	112
	
l4558:	
	incf	(DelayMs@b),f
	
l4560:	
	movlw	(05h)
	subwf	(DelayMs@b),w
	skipc
	goto	u81
	goto	u80
u81:
	goto	l4556
u80:
	line	110
	
l4562:	
	incf	(DelayMs@a),f
	
l4564:	
	movf	(DelayMs@Time),w
	subwf	(DelayMs@a),w
	skipc
	goto	u91
	goto	u90
u91:
	goto	l4550
u90:
	line	117
	
l2374:	
	return
	opt stack 0
GLOBAL	__end_of_DelayMs
	__end_of_DelayMs:
;; =============== function _DelayMs ends ============

	signat	_DelayMs,4216
	global	_DelayUs
psect	text85,local,class=CODE,delta=2
global __ptext85
__ptext85:

;; *************** function _DelayUs *****************
;; Defined at:
;;		line 94 in file "TEST_62F08x_IIC.C"
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
psect	text85
	file	"TEST_62F08x_IIC.C"
	line	94
	global	__size_of_DelayUs
	__size_of_DelayUs	equ	__end_of_DelayUs-_DelayUs
	
_DelayUs:	
	opt	stack 13
; Regs used in _DelayUs: [wreg+status,2+status,0]
;DelayUs@Time stored from wreg
	line	96
	movwf	(DelayUs@Time)
	
l4542:	
;TEST_62F08x_IIC.C: 95: unsigned char a;
;TEST_62F08x_IIC.C: 96: for(a=0;a<Time;a++)
	clrf	(DelayUs@a)
	goto	l4546
	line	97
	
l2364:	
	line	98
;TEST_62F08x_IIC.C: 97: {
;TEST_62F08x_IIC.C: 98: _nop();
	nop
	line	96
	
l4544:	
	incf	(DelayUs@a),f
	
l4546:	
	movf	(DelayUs@Time),w
	subwf	(DelayUs@a),w
	skipc
	goto	u71
	goto	u70
u71:
	goto	l2364
u70:
	line	100
	
l2366:	
	return
	opt stack 0
GLOBAL	__end_of_DelayUs
	__end_of_DelayUs:
;; =============== function _DelayUs ends ============

	signat	_DelayUs,4216
	global	_IIC_INITIAL
psect	text86,local,class=CODE,delta=2
global __ptext86
__ptext86:

;; *************** function _IIC_INITIAL *****************
;; Defined at:
;;		line 176 in file "TEST_62F08x_IIC.C"
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
psect	text86
	file	"TEST_62F08x_IIC.C"
	line	176
	global	__size_of_IIC_INITIAL
	__size_of_IIC_INITIAL	equ	__end_of_IIC_INITIAL-_IIC_INITIAL
	
_IIC_INITIAL:	
	opt	stack 14
; Regs used in _IIC_INITIAL: [wreg+status,2]
	line	177
	
l4522:	
;TEST_62F08x_IIC.C: 177: PCKEN |=0B01000000;
	movlb 1	; select bank1
	bsf	(154)^080h+(6/8),(6)&7	;volatile
	line	179
;TEST_62F08x_IIC.C: 179: ODCON0 |=0B00000010;
	movlb 4	; select bank4
	bsf	(543)^0200h+(1/8),(1)&7	;volatile
	line	180
	
l4524:	
;TEST_62F08x_IIC.C: 180: I2CCR1 =0B00000001;
	movlw	(01h)
	movlb 8	; select bank8
	movwf	(1036)^0400h	;volatile
	line	195
	
l4526:	
;TEST_62F08x_IIC.C: 195: I2CCR2 =0B00000000;
	clrf	(1037)^0400h	;volatile
	line	196
	
l4528:	
;TEST_62F08x_IIC.C: 196: I2CCR3 =0B00000000;
	clrf	(1038)^0400h	;volatile
	line	201
;TEST_62F08x_IIC.C: 201: I2COARL =0B01010000;
	movlw	(050h)
	movwf	(1039)^0400h	;volatile
	line	202
	
l4530:	
;TEST_62F08x_IIC.C: 202: I2COARH =0B00000000;
	clrf	(1040)^0400h	;volatile
	line	203
	
l4532:	
;TEST_62F08x_IIC.C: 203: I2CFREQ =0B00010000;
	movlw	(010h)
	movwf	(1041)^0400h	;volatile
	line	212
	
l4534:	
;TEST_62F08x_IIC.C: 212: I2CCCRL =0B01010000;
	movlw	(050h)
	movwf	(1044)^0400h	;volatile
	line	213
	
l4536:	
;TEST_62F08x_IIC.C: 213: I2CCCRH =0B00000000;
	clrf	(1045)^0400h	;volatile
	line	214
	
l4538:	
;TEST_62F08x_IIC.C: 214: I2CITR =0B00000000;
	clrf	(1046)^0400h	;volatile
	line	220
	
l4540:	
;TEST_62F08x_IIC.C: 220: ENABLE=1;
	bsf	(8304/8)^0400h,(8304)&7
	line	222
	
l2409:	
	return
	opt stack 0
GLOBAL	__end_of_IIC_INITIAL
	__end_of_IIC_INITIAL:
;; =============== function _IIC_INITIAL ends ============

	signat	_IIC_INITIAL,88
	global	_IIC_WRITE
psect	text87,local,class=CODE,delta=2
global __ptext87
__ptext87:

;; *************** function _IIC_WRITE *****************
;; Defined at:
;;		line 160 in file "TEST_62F08x_IIC.C"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;;  data            1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/8
;;		On exit  : 17F/8
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
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
psect	text87
	file	"TEST_62F08x_IIC.C"
	line	160
	global	__size_of_IIC_WRITE
	__size_of_IIC_WRITE	equ	__end_of_IIC_WRITE-_IIC_WRITE
	
_IIC_WRITE:	
	opt	stack 14
; Regs used in _IIC_WRITE: [wreg+status,2]
;IIC_WRITE@address stored from wreg
	movwf	(IIC_WRITE@address)
	line	161
	
l4514:	
;TEST_62F08x_IIC.C: 161: while(!IICTXE);
	
l2397:	
	btfss	(8383/8)^0400h,(8383)&7
	goto	u41
	goto	u40
u41:
	goto	l2397
u40:
	line	162
	
l4516:	
;TEST_62F08x_IIC.C: 162: I2CDR = address;
	movf	(IIC_WRITE@address),w
	movwf	(1042)^0400h	;volatile
	line	163
	
l4518:	
;TEST_62F08x_IIC.C: 163: I2CCMD= 0B00000000;
	clrf	(1043)^0400h	;volatile
	line	164
;TEST_62F08x_IIC.C: 164: while(!IICTXE);
	
l2400:	
	btfss	(8383/8)^0400h,(8383)&7
	goto	u51
	goto	u50
u51:
	goto	l2400
u50:
	line	165
	
l4520:	
;TEST_62F08x_IIC.C: 165: I2CDR = data;
	movf	(IIC_WRITE@data),w
	movwf	(1042)^0400h	;volatile
	line	166
;TEST_62F08x_IIC.C: 166: I2CCMD= 0B00000010;
	movlw	(02h)
	movwf	(1043)^0400h	;volatile
	line	167
;TEST_62F08x_IIC.C: 167: while(!IICTXE);
	
l2403:	
	btfss	(8383/8)^0400h,(8383)&7
	goto	u61
	goto	u60
u61:
	goto	l2403
u60:
	line	168
	
l2406:	
	return
	opt stack 0
GLOBAL	__end_of_IIC_WRITE
	__end_of_IIC_WRITE:
;; =============== function _IIC_WRITE ends ============

	signat	_IIC_WRITE,8312
	global	_IIC_READ
psect	text88,local,class=CODE,delta=2
global __ptext88
__ptext88:

;; *************** function _IIC_READ *****************
;; Defined at:
;;		line 142 in file "TEST_62F08x_IIC.C"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    0[COMMON] unsigned char 
;;  iicdata         1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 1F/8
;;		Unchanged: FFFE0/0
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text88
	file	"TEST_62F08x_IIC.C"
	line	142
	global	__size_of_IIC_READ
	__size_of_IIC_READ	equ	__end_of_IIC_READ-_IIC_READ
	
_IIC_READ:	
	opt	stack 14
; Regs used in _IIC_READ: [wreg+status,2]
;IIC_READ@address stored from wreg
	movwf	(IIC_READ@address)
	line	143
	
l4504:	
	line	144
;TEST_62F08x_IIC.C: 144: while(!IICTXE);
	
l2385:	
	movlb 8	; select bank8
	btfss	(8383/8)^0400h,(8383)&7
	goto	u11
	goto	u10
u11:
	goto	l2385
u10:
	line	145
	
l4506:	
;TEST_62F08x_IIC.C: 145: I2CDR = address;
	movf	(IIC_READ@address),w
	movwf	(1042)^0400h	;volatile
	line	146
;TEST_62F08x_IIC.C: 146: I2CCMD= 0B00000100;
	movlw	(04h)
	movwf	(1043)^0400h	;volatile
	line	147
;TEST_62F08x_IIC.C: 147: while(!IICTXE);
	
l2388:	
	btfss	(8383/8)^0400h,(8383)&7
	goto	u21
	goto	u20
u21:
	goto	l2388
u20:
	line	148
	
l4508:	
;TEST_62F08x_IIC.C: 148: I2CCMD= 0B00000011;
	movlw	(03h)
	movwf	(1043)^0400h	;volatile
	line	149
;TEST_62F08x_IIC.C: 149: while(!IICRXNE);
	
l2391:	
	btfss	(8382/8)^0400h,(8382)&7
	goto	u31
	goto	u30
u31:
	goto	l2391
u30:
	line	150
	
l4510:	
;TEST_62F08x_IIC.C: 150: iicdata =I2CDR;
	movf	(1042)^0400h,w	;volatile
	movwf	(IIC_READ@iicdata)
	line	151
;TEST_62F08x_IIC.C: 151: return iicdata;
	movf	(IIC_READ@iicdata),w
	line	152
	
l2394:	
	return
	opt stack 0
GLOBAL	__end_of_IIC_READ
	__end_of_IIC_READ:
;; =============== function _IIC_READ ends ============

	signat	_IIC_READ,4217
	global	_POWER_INITIAL
psect	text89,local,class=CODE,delta=2
global __ptext89
__ptext89:

;; *************** function _POWER_INITIAL *****************
;; Defined at:
;;		line 46 in file "TEST_62F08x_IIC.C"
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
psect	text89
	file	"TEST_62F08x_IIC.C"
	line	46
	global	__size_of_POWER_INITIAL
	__size_of_POWER_INITIAL	equ	__end_of_POWER_INITIAL-_POWER_INITIAL
	
_POWER_INITIAL:	
	opt	stack 14
; Regs used in _POWER_INITIAL: [wreg+status,2]
	line	47
	
l4454:	
;TEST_62F08x_IIC.C: 47: OSCCON = 0B01110001;
	movlw	(071h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	50
	
l4456:	
;TEST_62F08x_IIC.C: 50: INTCON = 0;
	clrf	(11)	;volatile
	line	52
	
l4458:	
;TEST_62F08x_IIC.C: 52: PORTA = 0B00000000;
	movlb 0	; select bank0
	clrf	(12)	;volatile
	line	53
	
l4460:	
;TEST_62F08x_IIC.C: 53: TRISA = 0B00000000;
	movlb 1	; select bank1
	clrf	(140)^080h	;volatile
	line	54
	
l4462:	
;TEST_62F08x_IIC.C: 54: PORTB = 0B00000000;
	movlb 0	; select bank0
	clrf	(13)	;volatile
	line	55
	
l4464:	
;TEST_62F08x_IIC.C: 55: TRISB = 0B00000000;
	movlb 1	; select bank1
	clrf	(141)^080h	;volatile
	line	56
	
l4466:	
;TEST_62F08x_IIC.C: 56: PORTC = 0B00000000;
	movlb 0	; select bank0
	clrf	(14)	;volatile
	line	57
	
l4468:	
;TEST_62F08x_IIC.C: 57: TRISC = 0B00000000;
	movlb 1	; select bank1
	clrf	(142)^080h	;volatile
	line	58
	
l4470:	
;TEST_62F08x_IIC.C: 58: PORTD = 0B00000000;
	movlb 0	; select bank0
	clrf	(15)	;volatile
	line	59
	
l4472:	
;TEST_62F08x_IIC.C: 59: TRISD = 0B00000000;
	movlb 1	; select bank1
	clrf	(143)^080h	;volatile
	line	61
	
l4474:	
;TEST_62F08x_IIC.C: 61: WPUA = 0B00000000;
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	62
	
l4476:	
;TEST_62F08x_IIC.C: 62: WPUB = 0B00000000;
	clrf	(397)^0180h	;volatile
	line	63
	
l4478:	
;TEST_62F08x_IIC.C: 63: WPUC = 0B00000000;
	clrf	(398)^0180h	;volatile
	line	64
	
l4480:	
;TEST_62F08x_IIC.C: 64: WPUD = 0B00000000;
	clrf	(399)^0180h	;volatile
	line	66
	
l4482:	
;TEST_62F08x_IIC.C: 66: WPDA = 0B00000000;
	movlb 4	; select bank4
	clrf	(524)^0200h	;volatile
	line	67
	
l4484:	
;TEST_62F08x_IIC.C: 67: WPDB = 0B00000000;
	clrf	(525)^0200h	;volatile
	line	68
	
l4486:	
;TEST_62F08x_IIC.C: 68: WPDC = 0B00000000;
	clrf	(526)^0200h	;volatile
	line	69
	
l4488:	
;TEST_62F08x_IIC.C: 69: WPDD = 0B00000000;
	clrf	(527)^0200h	;volatile
	line	71
	
l4490:	
;TEST_62F08x_IIC.C: 71: PSRC0 = 0B11111111;
	movlw	(0FFh)
	movlb 2	; select bank2
	movwf	(282)^0100h	;volatile
	line	75
	
l4492:	
;TEST_62F08x_IIC.C: 75: PSRC1 = 0B11111111;
	movlw	(0FFh)
	movwf	(283)^0100h	;volatile
	line	79
	
l4494:	
;TEST_62F08x_IIC.C: 79: PSINK0 = 0B11111111;
	movlw	(0FFh)
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	80
	
l4496:	
;TEST_62F08x_IIC.C: 80: PSINK1 = 0B11111111;
	movlw	(0FFh)
	movwf	(411)^0180h	;volatile
	line	81
	
l4498:	
;TEST_62F08x_IIC.C: 81: PSINK2 = 0B11111111;
	movlw	(0FFh)
	movwf	(412)^0180h	;volatile
	line	82
	
l4500:	
;TEST_62F08x_IIC.C: 82: PSINK3 = 0B11111111;
	movlw	(0FFh)
	movwf	(413)^0180h	;volatile
	line	84
	
l4502:	
;TEST_62F08x_IIC.C: 84: ANSELA = 0B00000000;
	clrf	(407)^0180h	;volatile
	line	86
	
l2360:	
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
;;		line 36 in file "TEST_62F08x_IIC.C"
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
	file	"TEST_62F08x_IIC.C"
	line	36
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 13
; Regs used in _ISR: []
psect	intentry
	pagesel	$
	line	38
	
i1l2357:	
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
