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
	FNCALL	_main,_UART_INITIAL
	FNCALL	_main,_DelayMs
	FNCALL	_DelayMs,_DelayUs
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_toSend
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"TEST_62F08x_UART.C"
	line	30

;initializer for _toSend
	retlw	011h
	retlw	022h
	retlw	033h
	retlw	044h
	retlw	055h
	retlw	066h
	retlw	077h
	retlw	088h
	retlw	099h
	retlw	0AAh
	retlw	0
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
	global	_receivedata
	global	_i
	global	_k
	global	_senddata
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
	global	_TRISA6
psect	strings
psect	_ad3nop_text
_TRISA6	set	1126
	global	_TRISA7
psect	strings
psect	_ad3nop_text
_TRISA7	set	1127
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
	global	_UROD
psect	strings
psect	_ad3nop_text
_UROD	set	4344
	global	_URDATAL
psect	strings
psect	_ad3nop_text
_URDATAL	set	1164
	global	_URDLH
psect	strings
psect	_ad3nop_text
_URDLH	set	1173
	global	_URDLL
psect	strings
psect	_ad3nop_text
_URDLL	set	1172
	global	_URIER
psect	strings
psect	_ad3nop_text
_URIER	set	1166
	global	_URLCR
psect	strings
psect	_ad3nop_text
_URLCR	set	1167
	global	_URMCR
psect	strings
psect	_ad3nop_text
_URMCR	set	1169
	global	_RXNEF
psect	strings
psect	_ad3nop_text
_RXNEF	set	9360
	global	_TCEN
psect	strings
psect	_ad3nop_text
_TCEN	set	9333
	global	_TCF
psect	strings
psect	_ad3nop_text
_TCF	set	9440
	global	_TXEF
psect	strings
psect	_ad3nop_text
_TXEF	set	9365
	global	_URRXNE
psect	strings
psect	_ad3nop_text
_URRXNE	set	9328
psect	strings
psect	_ad3nop_text
psect	strings
psect	_ad3nop_text
	file	"test_62f08x_uart.as"
psect	strings
psect	_ad3nop_text
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_i:
       ds      1

_k:
       ds      1

_senddata:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_receivedata:
       ds      10

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"TEST_62F08x_UART.C"
_toSend:
       ds      11

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	global __pbssBANK0
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
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
	fcall	__pidataBANK0+4		;fetch initializer
	movwf	__pdataBANK0+4&07fh		
	fcall	__pidataBANK0+5		;fetch initializer
	movwf	__pdataBANK0+5&07fh		
	fcall	__pidataBANK0+6		;fetch initializer
	movwf	__pdataBANK0+6&07fh		
	fcall	__pidataBANK0+7		;fetch initializer
	movwf	__pdataBANK0+7&07fh		
	fcall	__pidataBANK0+8		;fetch initializer
	movwf	__pdataBANK0+8&07fh		
	fcall	__pidataBANK0+9		;fetch initializer
	movwf	__pdataBANK0+9&07fh		
	fcall	__pidataBANK0+10		;fetch initializer
	movwf	__pdataBANK0+10&07fh		
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
	global	?_UART_INITIAL
?_UART_INITIAL:	; 0 bytes @ 0x0
	global	??_UART_INITIAL
??_UART_INITIAL:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	DelayUs@Time
DelayUs@Time:	; 1 bytes @ 0x0
	ds	1
	global	DelayUs@a
DelayUs@a:	; 1 bytes @ 0x1
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
;;Data sizes: Strings 0, constant 0, data 11, bss 13, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5       8
;; BANK0           80      0      21
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
;; (0) _main                                                 0     0      0      90
;;                      _POWER_INITIAL
;;                       _UART_INITIAL
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (1) _DelayMs                                              3     3      0      90
;;                                              2 COMMON     3     3      0
;;                            _DelayUs
;; ---------------------------------------------------------------------------------
;; (2) _DelayUs                                              2     2      0      30
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _UART_INITIAL                                         0     0      0       0
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
;;   _UART_INITIAL
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
;;COMMON               E      5       8       2       57.1%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR2              0      0       0       3        0.0%
;;SFR2                 0      0       0       3        0.0%
;;STACK                0      0       2       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0      15       5       26.3%
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
;;ABS                  0      0      1D      20        0.0%
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
;;DATA                 0      0      1F      31        0.0%
;;BITSFR31             0      0       0      32        0.0%
;;SFR31                0      0       0      32        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 199 in file "TEST_62F08x_UART.C"
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
;;		_UART_INITIAL
;;		_DelayMs
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"TEST_62F08x_UART.C"
	line	199
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 13
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	200
	
l4562:	
;TEST_62F08x_UART.C: 200: POWER_INITIAL();
	fcall	_POWER_INITIAL
	line	201
;TEST_62F08x_UART.C: 201: UART_INITIAL();
	fcall	_UART_INITIAL
	line	202
;TEST_62F08x_UART.C: 202: DelayMs(100);
	movlw	(064h)
	fcall	_DelayMs
	line	204
	
l4564:	
;TEST_62F08x_UART.C: 204: if(TXEF)
	movlb 9	; select bank9
	btfss	(9365/8)^0480h,(9365)&7
	goto	u101
	goto	u100
u101:
	goto	l4568
u100:
	line	206
	
l4566:	
;TEST_62F08x_UART.C: 205: {
;TEST_62F08x_UART.C: 206: URDATAL =0xaa;
	movlw	(0AAh)
	movwf	(1164)^0480h	;volatile
	line	211
	
l4568:	
;TEST_62F08x_UART.C: 210: {
;TEST_62F08x_UART.C: 211: _nop();
	nop
	goto	l4568
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	213
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_DelayMs
psect	text133,local,class=CODE,delta=2
global __ptext133
__ptext133:

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 139 in file "TEST_62F08x_UART.C"
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
;;		On entry : 17F/4
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
psect	text133
	file	"TEST_62F08x_UART.C"
	line	139
	global	__size_of_DelayMs
	__size_of_DelayMs	equ	__end_of_DelayMs-_DelayMs
	
_DelayMs:	
	opt	stack 13
; Regs used in _DelayMs: [wreg+status,2+status,0+pclath+cstack]
;DelayMs@Time stored from wreg
	line	141
	movwf	(DelayMs@Time)
	
l4544:	
;TEST_62F08x_UART.C: 140: unsigned char a,b;
;TEST_62F08x_UART.C: 141: for(a=0;a<Time;a++)
	clrf	(DelayMs@a)
	goto	l4560
	line	143
	
l4546:	
;TEST_62F08x_UART.C: 142: {
;TEST_62F08x_UART.C: 143: for(b=0;b<5;b++)
	clrf	(DelayMs@b)
	line	145
	
l4552:	
;TEST_62F08x_UART.C: 144: {
;TEST_62F08x_UART.C: 145: DelayUs(197);
	movlw	(0C5h)
	fcall	_DelayUs
	line	143
	
l4554:	
	incf	(DelayMs@b),f
	
l4556:	
	movlw	(05h)
	subwf	(DelayMs@b),w
	skipc
	goto	u81
	goto	u80
u81:
	goto	l4552
u80:
	line	141
	
l4558:	
	incf	(DelayMs@a),f
	
l4560:	
	movf	(DelayMs@Time),w
	subwf	(DelayMs@a),w
	skipc
	goto	u91
	goto	u90
u91:
	goto	l4546
u90:
	line	148
	
l2387:	
	return
	opt stack 0
GLOBAL	__end_of_DelayMs
	__end_of_DelayMs:
;; =============== function _DelayMs ends ============

	signat	_DelayMs,4216
	global	_DelayUs
psect	text134,local,class=CODE,delta=2
global __ptext134
__ptext134:

;; *************** function _DelayUs *****************
;; Defined at:
;;		line 125 in file "TEST_62F08x_UART.C"
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
;;		On entry : 0/4
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
psect	text134
	file	"TEST_62F08x_UART.C"
	line	125
	global	__size_of_DelayUs
	__size_of_DelayUs	equ	__end_of_DelayUs-_DelayUs
	
_DelayUs:	
	opt	stack 13
; Regs used in _DelayUs: [wreg+status,2+status,0]
;DelayUs@Time stored from wreg
	line	127
	movwf	(DelayUs@Time)
	
l4538:	
;TEST_62F08x_UART.C: 126: unsigned char a;
;TEST_62F08x_UART.C: 127: for(a=0;a<Time;a++)
	clrf	(DelayUs@a)
	goto	l4542
	line	128
	
l2377:	
	line	129
;TEST_62F08x_UART.C: 128: {
;TEST_62F08x_UART.C: 129: _nop();
	nop
	line	127
	
l4540:	
	incf	(DelayUs@a),f
	
l4542:	
	movf	(DelayUs@Time),w
	subwf	(DelayUs@a),w
	skipc
	goto	u71
	goto	u70
u71:
	goto	l2377
u70:
	line	131
	
l2379:	
	return
	opt stack 0
GLOBAL	__end_of_DelayUs
	__end_of_DelayUs:
;; =============== function _DelayUs ends ============

	signat	_DelayUs,4216
	global	_UART_INITIAL
psect	text135,local,class=CODE,delta=2
global __ptext135
__ptext135:

;; *************** function _UART_INITIAL *****************
;; Defined at:
;;		line 173 in file "TEST_62F08x_UART.C"
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
;;		On exit  : 17F/4
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
psect	text135
	file	"TEST_62F08x_UART.C"
	line	173
	global	__size_of_UART_INITIAL
	__size_of_UART_INITIAL	equ	__end_of_UART_INITIAL-_UART_INITIAL
	
_UART_INITIAL:	
	opt	stack 14
; Regs used in _UART_INITIAL: [wreg+status,2]
	line	174
	
l4526:	
;TEST_62F08x_UART.C: 174: PCKEN |=0B00100000;
	movlb 1	; select bank1
	bsf	(154)^080h+(5/8),(5)&7	;volatile
	line	175
;TEST_62F08x_UART.C: 175: TRISA7=1;
	bsf	(1127/8)^080h,(1127)&7
	line	176
;TEST_62F08x_UART.C: 176: TRISA6=0;
	bcf	(1126/8)^080h,(1126)&7
	line	178
	
l4528:	
;TEST_62F08x_UART.C: 178: URIER =0B00100001;
	movlw	(021h)
	movlb 9	; select bank9
	movwf	(1166)^0480h	;volatile
	line	179
;TEST_62F08x_UART.C: 179: URLCR =0B00000001;
	movlw	(01h)
	movwf	(1167)^0480h	;volatile
	line	180
;TEST_62F08x_UART.C: 180: URMCR =0B00011000;
	movlw	(018h)
	movwf	(1169)^0480h	;volatile
	line	182
;TEST_62F08x_UART.C: 182: URDLL =104;
	movlw	(068h)
	movwf	(1172)^0480h	;volatile
	line	183
	
l4530:	
;TEST_62F08x_UART.C: 183: URDLH =0;
	clrf	(1173)^0480h	;volatile
	line	184
	
l4532:	
;TEST_62F08x_UART.C: 184: TCF=1;
	bsf	(9440/8)^0480h,(9440)&7
	line	185
	
l4534:	
;TEST_62F08x_UART.C: 185: INTCON=0B11000000;
	movlw	(0C0h)
	movwf	(11)	;volatile
	line	186
	
l4536:	
;TEST_62F08x_UART.C: 186: UROD=1;
	movlb 4	; select bank4
	bsf	(4344/8)^0200h,(4344)&7
	line	191
	
l2398:	
	return
	opt stack 0
GLOBAL	__end_of_UART_INITIAL
	__end_of_UART_INITIAL:
;; =============== function _UART_INITIAL ends ============

	signat	_UART_INITIAL,88
	global	_POWER_INITIAL
psect	text136,local,class=CODE,delta=2
global __ptext136
__ptext136:

;; *************** function _POWER_INITIAL *****************
;; Defined at:
;;		line 76 in file "TEST_62F08x_UART.C"
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
psect	text136
	file	"TEST_62F08x_UART.C"
	line	76
	global	__size_of_POWER_INITIAL
	__size_of_POWER_INITIAL	equ	__end_of_POWER_INITIAL-_POWER_INITIAL
	
_POWER_INITIAL:	
	opt	stack 14
; Regs used in _POWER_INITIAL: [wreg+status,2]
	line	78
	
l4476:	
;TEST_62F08x_UART.C: 78: OSCCON = 0B01110001;
	movlw	(071h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	81
	
l4478:	
;TEST_62F08x_UART.C: 81: INTCON = 0;
	clrf	(11)	;volatile
	line	83
	
l4480:	
;TEST_62F08x_UART.C: 83: PORTA = 0B00000000;
	movlb 0	; select bank0
	clrf	(12)	;volatile
	line	84
	
l4482:	
;TEST_62F08x_UART.C: 84: TRISA = 0B00000000;
	movlb 1	; select bank1
	clrf	(140)^080h	;volatile
	line	85
	
l4484:	
;TEST_62F08x_UART.C: 85: PORTB = 0B00000000;
	movlb 0	; select bank0
	clrf	(13)	;volatile
	line	86
	
l4486:	
;TEST_62F08x_UART.C: 86: TRISB = 0B00000000;
	movlb 1	; select bank1
	clrf	(141)^080h	;volatile
	line	87
	
l4488:	
;TEST_62F08x_UART.C: 87: PORTC = 0B00000000;
	movlb 0	; select bank0
	clrf	(14)	;volatile
	line	88
	
l4490:	
;TEST_62F08x_UART.C: 88: TRISC = 0B00000000;
	movlb 1	; select bank1
	clrf	(142)^080h	;volatile
	line	89
	
l4492:	
;TEST_62F08x_UART.C: 89: PORTD = 0B00000000;
	movlb 0	; select bank0
	clrf	(15)	;volatile
	line	90
	
l4494:	
;TEST_62F08x_UART.C: 90: TRISD = 0B00000000;
	movlb 1	; select bank1
	clrf	(143)^080h	;volatile
	line	92
	
l4496:	
;TEST_62F08x_UART.C: 92: WPUA = 0B00000000;
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	93
	
l4498:	
;TEST_62F08x_UART.C: 93: WPUB = 0B00000000;
	clrf	(397)^0180h	;volatile
	line	94
	
l4500:	
;TEST_62F08x_UART.C: 94: WPUC = 0B00000000;
	clrf	(398)^0180h	;volatile
	line	95
	
l4502:	
;TEST_62F08x_UART.C: 95: WPUD = 0B00000000;
	clrf	(399)^0180h	;volatile
	line	97
	
l4504:	
;TEST_62F08x_UART.C: 97: WPDA = 0B00000000;
	movlb 4	; select bank4
	clrf	(524)^0200h	;volatile
	line	98
	
l4506:	
;TEST_62F08x_UART.C: 98: WPDB = 0B00000000;
	clrf	(525)^0200h	;volatile
	line	99
	
l4508:	
;TEST_62F08x_UART.C: 99: WPDC = 0B00000000;
	clrf	(526)^0200h	;volatile
	line	100
	
l4510:	
;TEST_62F08x_UART.C: 100: WPDD = 0B00000000;
	clrf	(527)^0200h	;volatile
	line	102
	
l4512:	
;TEST_62F08x_UART.C: 102: PSRC0 = 0B11111111;
	movlw	(0FFh)
	movlb 2	; select bank2
	movwf	(282)^0100h	;volatile
	line	106
	
l4514:	
;TEST_62F08x_UART.C: 106: PSRC1 = 0B11111111;
	movlw	(0FFh)
	movwf	(283)^0100h	;volatile
	line	110
	
l4516:	
;TEST_62F08x_UART.C: 110: PSINK0 = 0B11111111;
	movlw	(0FFh)
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	111
	
l4518:	
;TEST_62F08x_UART.C: 111: PSINK1 = 0B11111111;
	movlw	(0FFh)
	movwf	(411)^0180h	;volatile
	line	112
	
l4520:	
;TEST_62F08x_UART.C: 112: PSINK2 = 0B11111111;
	movlw	(0FFh)
	movwf	(412)^0180h	;volatile
	line	113
	
l4522:	
;TEST_62F08x_UART.C: 113: PSINK3 = 0B11111111;
	movlw	(0FFh)
	movwf	(413)^0180h	;volatile
	line	115
	
l4524:	
;TEST_62F08x_UART.C: 115: ANSELA = 0B00000000;
	clrf	(407)^0180h	;volatile
	line	117
	
l2373:	
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
;;		line 40 in file "TEST_62F08x_UART.C"
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
	file	"TEST_62F08x_UART.C"
	line	40
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 13
; Regs used in _ISR: [wreg+fsr1l-status,0]
psect	intentry
	pagesel	$
	line	42
	
i1l4570:	
;TEST_62F08x_UART.C: 42: if(URRXNE && RXNEF)
	movlb 9	; select bank9
	btfss	(9328/8)^0480h,(9328)&7
	goto	u11_21
	goto	u11_20
u11_21:
	goto	i1l4586
u11_20:
	
i1l4572:	
	btfss	(9360/8)^0480h,(9360)&7
	goto	u12_21
	goto	u12_20
u12_21:
	goto	i1l4586
u12_20:
	line	44
	
i1l4574:	
;TEST_62F08x_UART.C: 43: {
;TEST_62F08x_UART.C: 44: receivedata[k++] =URDATAL;
	movf	(_k),w
	addlw	_receivedata&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(1164)^0480h,w	;volatile
	movwf	indf1
	
i1l4576:	
	incf	(_k),f	;volatile
	line	46
	
i1l4578:	
;TEST_62F08x_UART.C: 46: if(k >= 10)
	movlw	(0Ah)
	subwf	(_k),w	;volatile
	skipc
	goto	u13_21
	goto	u13_20
u13_21:
	goto	i1l4584
u13_20:
	line	48
	
i1l4580:	
;TEST_62F08x_UART.C: 47: {
;TEST_62F08x_UART.C: 48: k=0;
	clrf	(_k)	;volatile
	line	49
	
i1l4582:	
;TEST_62F08x_UART.C: 49: _nop();
	nop
	line	51
	
i1l4584:	
;TEST_62F08x_UART.C: 50: }
;TEST_62F08x_UART.C: 51: _nop();
	nop
	line	54
	
i1l4586:	
;TEST_62F08x_UART.C: 52: }
;TEST_62F08x_UART.C: 54: if(TCEN && TCF)
	movlb 9	; select bank9
	btfss	(9333/8)^0480h,(9333)&7
	goto	u14_21
	goto	u14_20
u14_21:
	goto	i1l2370
u14_20:
	
i1l4588:	
	btfss	(9440/8)^0480h,(9440)&7
	goto	u15_21
	goto	u15_20
u15_21:
	goto	i1l2370
u15_20:
	line	56
	
i1l4590:	
;TEST_62F08x_UART.C: 55: {
;TEST_62F08x_UART.C: 56: TCF=1;
	bsf	(9440/8)^0480h,(9440)&7
	line	58
	
i1l4592:	
;TEST_62F08x_UART.C: 58: if(i<10)
	movlw	(0Ah)
	subwf	(_i),w
	skipnc
	goto	u16_21
	goto	u16_20
u16_21:
	goto	i1l4598
u16_20:
	line	60
	
i1l4594:	
;TEST_62F08x_UART.C: 59: {
;TEST_62F08x_UART.C: 60: URDATAL =toSend[i++];
	movf	(_i),w
	addlw	_toSend&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(1164)^0480h	;volatile
	
i1l4596:	
	incf	(_i),f
	line	61
;TEST_62F08x_UART.C: 61: }
	goto	i1l4600
	line	64
	
i1l4598:	
;TEST_62F08x_UART.C: 62: else
;TEST_62F08x_UART.C: 63: {
;TEST_62F08x_UART.C: 64: i=0;
	clrf	(_i)
	line	66
	
i1l4600:	
;TEST_62F08x_UART.C: 65: }
;TEST_62F08x_UART.C: 66: _nop();
	nop
	line	68
	
i1l2370:	
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
