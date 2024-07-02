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
	FNCALL	_main,_SPI_INITIAL
	FNCALL	_main,_SPI_Write
	FNCALL	_main,_SPI_Read
	FNCALL	_SPI_Write,_SPI_ReadStatus
	FNCALL	_SPI_Write,_WriteEnable
	FNCALL	_SPI_Write,_SPI_RW
	FNCALL	_SPI_Write,_WriteDisable
	FNCALL	_SPI_Read,_SPI_ReadStatus
	FNCALL	_SPI_Read,_SPI_RW
	FNCALL	_SPI_ReadStatus,_SPI_RW
	FNCALL	_WriteDisable,_SPI_RW
	FNCALL	_WriteEnable,_SPI_RW
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
	global	_SPIReadData
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
	global	_SPICFG
psect	strings
psect	_ad3nop_text
_SPICFG	set	23
	global	_SPICTRL
psect	strings
psect	_ad3nop_text
_SPICTRL	set	22
	global	_SPICTRL2
psect	strings
psect	_ad3nop_text
_SPICTRL2	set	29
	global	_SPIDATA
psect	strings
psect	_ad3nop_text
_SPIDATA	set	21
	global	_SPIIER
psect	strings
psect	_ad3nop_text
_SPIIER	set	28
	global	_SPIRXCRC
psect	strings
psect	_ad3nop_text
_SPIRXCRC	set	26
	global	_SPISCR
psect	strings
psect	_ad3nop_text
_SPISCR	set	24
	global	_SPISTAT
psect	strings
psect	_ad3nop_text
_SPISTAT	set	30
	global	_SPITXCRC
psect	strings
psect	_ad3nop_text
_SPITXCRC	set	27
	global	_BUSY
psect	strings
psect	_ad3nop_text
_BUSY	set	191
	global	_RB1
psect	strings
psect	_ad3nop_text
_RB1	set	105
	global	_SPIEN
psect	strings
psect	_ad3nop_text
_SPIEN	set	176
	global	_SPIF
psect	strings
psect	_ad3nop_text
_SPIF	set	183
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
	file	"test_62f08x_spi.as"
psect	strings
psect	_ad3nop_text
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_SPIReadData:
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
	global	??_SPI_RW
??_SPI_RW:	; 0 bytes @ 0x0
	global	?_WriteEnable
?_WriteEnable:	; 0 bytes @ 0x0
	global	?_WriteDisable
?_WriteDisable:	; 0 bytes @ 0x0
	global	?_SPI_INITIAL
?_SPI_INITIAL:	; 0 bytes @ 0x0
	global	??_SPI_INITIAL
??_SPI_INITIAL:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_SPI_RW
?_SPI_RW:	; 1 bytes @ 0x0
	global	?_SPI_ReadStatus
?_SPI_ReadStatus:	; 1 bytes @ 0x0
	global	SPI_RW@data
SPI_RW@data:	; 1 bytes @ 0x0
	ds	1
	global	SPI_RW@spiData
SPI_RW@spiData:	; 1 bytes @ 0x1
	ds	1
	global	??_WriteEnable
??_WriteEnable:	; 0 bytes @ 0x2
	global	??_WriteDisable
??_WriteDisable:	; 0 bytes @ 0x2
	global	??_SPI_ReadStatus
??_SPI_ReadStatus:	; 0 bytes @ 0x2
	global	SPI_ReadStatus@status
SPI_ReadStatus@status:	; 1 bytes @ 0x2
	ds	1
	global	?_SPI_Write
?_SPI_Write:	; 0 bytes @ 0x3
	global	?_SPI_Read
?_SPI_Read:	; 1 bytes @ 0x3
	global	SPI_Read@addr
SPI_Read@addr:	; 2 bytes @ 0x3
	global	SPI_Write@addr
SPI_Write@addr:	; 2 bytes @ 0x3
	ds	2
	global	??_SPI_Read
??_SPI_Read:	; 0 bytes @ 0x5
	global	SPI_Write@dat
SPI_Write@dat:	; 1 bytes @ 0x5
	ds	1
	global	??_SPI_Write
??_SPI_Write:	; 0 bytes @ 0x6
	global	SPI_Read@spidata
SPI_Read@spidata:	; 1 bytes @ 0x6
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x7
;;Data sizes: Strings 0, constant 0, data 0, bss 1, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7       8
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
;;   _main->_SPI_Write
;;   _main->_SPI_Read
;;   _SPI_Write->_SPI_ReadStatus
;;   _SPI_Read->_SPI_ReadStatus
;;   _SPI_ReadStatus->_SPI_RW
;;   _WriteDisable->_SPI_RW
;;   _WriteEnable->_SPI_RW
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
;; (0) _main                                                 0     0      0     300
;;                      _POWER_INITIAL
;;                        _SPI_INITIAL
;;                          _SPI_Write
;;                           _SPI_Read
;; ---------------------------------------------------------------------------------
;; (1) _SPI_Write                                            4     1      3     180
;;                                              3 COMMON     4     1      3
;;                     _SPI_ReadStatus
;;                        _WriteEnable
;;                             _SPI_RW
;;                       _WriteDisable
;; ---------------------------------------------------------------------------------
;; (1) _SPI_Read                                             4     2      2     120
;;                                              3 COMMON     4     2      2
;;                     _SPI_ReadStatus
;;                             _SPI_RW
;; ---------------------------------------------------------------------------------
;; (2) _SPI_ReadStatus                                       1     1      0      45
;;                                              2 COMMON     1     1      0
;;                             _SPI_RW
;; ---------------------------------------------------------------------------------
;; (2) _WriteDisable                                         0     0      0      30
;;                             _SPI_RW
;; ---------------------------------------------------------------------------------
;; (2) _WriteEnable                                          0     0      0      30
;;                             _SPI_RW
;; ---------------------------------------------------------------------------------
;; (1) _SPI_INITIAL                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _SPI_RW                                               2     2      0      30
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _POWER_INITIAL                                        0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (4) _ISR                                                  0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _POWER_INITIAL
;;   _SPI_INITIAL
;;   _SPI_Write
;;     _SPI_ReadStatus
;;       _SPI_RW
;;     _WriteEnable
;;       _SPI_RW
;;     _SPI_RW
;;     _WriteDisable
;;       _SPI_RW
;;   _SPI_Read
;;     _SPI_ReadStatus
;;       _SPI_RW
;;     _SPI_RW
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
;;COMMON               E      7       8       2       57.1%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR2              0      0       0       3        0.0%
;;SFR2                 0      0       0       3        0.0%
;;STACK                0      0       3       3        0.0%
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
;;ABS                  0      0       8      20        0.0%
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
;;		line 347 in file "TEST_62F08x_SPI.C"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_POWER_INITIAL
;;		_SPI_INITIAL
;;		_SPI_Write
;;		_SPI_Read
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"TEST_62F08x_SPI.C"
	line	347
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 12
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	348
	
l4598:	
;TEST_62F08x_SPI.C: 348: SPIReadData=0;
	clrf	(_SPIReadData)	;volatile
	line	349
	
l4600:	
;TEST_62F08x_SPI.C: 349: POWER_INITIAL();
	fcall	_POWER_INITIAL
	line	350
	
l4602:	
;TEST_62F08x_SPI.C: 350: SPI_INITIAL();
	fcall	_SPI_INITIAL
	line	352
	
l4604:	
;TEST_62F08x_SPI.C: 352: SPI_Write(0x0013,0x55);
	movlw	013h
	movwf	(?_SPI_Write)
	clrf	(?_SPI_Write+1)
	movlw	(055h)
	movwf	0+(?_SPI_Write)+02h
	fcall	_SPI_Write
	line	353
	
l4606:	
;TEST_62F08x_SPI.C: 353: SPI_Write(0x0014,0x88);
	movlw	014h
	movwf	(?_SPI_Write)
	clrf	(?_SPI_Write+1)
	movlw	(088h)
	movwf	0+(?_SPI_Write)+02h
	fcall	_SPI_Write
	line	355
	
l4608:	
;TEST_62F08x_SPI.C: 355: SPIReadData = SPI_Read(0x0013);
	movlw	013h
	movwf	(?_SPI_Read)
	clrf	(?_SPI_Read+1)
	fcall	_SPI_Read
	movwf	(_SPIReadData)	;volatile
	line	356
	
l4610:	
;TEST_62F08x_SPI.C: 356: _nop();
	nop
	line	357
	
l4612:	
;TEST_62F08x_SPI.C: 357: SPIReadData = SPI_Read(0x0014);
	movlw	014h
	movwf	(?_SPI_Read)
	clrf	(?_SPI_Read+1)
	fcall	_SPI_Read
	movwf	(_SPIReadData)	;volatile
	line	361
	
l4614:	
;TEST_62F08x_SPI.C: 360: {
;TEST_62F08x_SPI.C: 361: _nop();
	nop
	goto	l4614
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	363
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_SPI_Write
psect	text96,local,class=CODE,delta=2
global __ptext96
__ptext96:

;; *************** function _SPI_Write *****************
;; Defined at:
;;		line 223 in file "TEST_62F08x_SPI.C"
;; Parameters:    Size  Location     Type
;;  addr            2    3[COMMON] unsigned int 
;;  dat             1    5[COMMON] unsigned char 
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
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_SPI_ReadStatus
;;		_WriteEnable
;;		_SPI_RW
;;		_WriteDisable
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text96
	file	"TEST_62F08x_SPI.C"
	line	223
	global	__size_of_SPI_Write
	__size_of_SPI_Write	equ	__end_of_SPI_Write-_SPI_Write
	
_SPI_Write:	
	opt	stack 12
; Regs used in _SPI_Write: [wreg+status,2+status,0+pclath+cstack]
	line	224
	
l4586:	
;TEST_62F08x_SPI.C: 224: while(SPI_ReadStatus()&0x01);
	
l4588:	
	fcall	_SPI_ReadStatus
	movwf	(??_SPI_Write+0)+0
	btfsc	0+(??_SPI_Write+0)+0,(0)&7
	goto	u51
	goto	u50
u51:
	goto	l4588
u50:
	line	225
	
l4590:	
;TEST_62F08x_SPI.C: 225: WriteEnable();
	fcall	_WriteEnable
	line	226
	
l4592:	
;TEST_62F08x_SPI.C: 226: RB1=0;
	bcf	(105/8),(105)&7
	line	227
;TEST_62F08x_SPI.C: 227: SPI_RW(0x02);
	movlw	(02h)
	fcall	_SPI_RW
	line	228
;TEST_62F08x_SPI.C: 228: SPI_RW((unsigned char)((addr)>>8));
	movf	(SPI_Write@addr+1),w
	fcall	_SPI_RW
	line	229
;TEST_62F08x_SPI.C: 229: SPI_RW((unsigned char)addr);
	movf	(SPI_Write@addr),w
	fcall	_SPI_RW
	line	231
;TEST_62F08x_SPI.C: 231: SPI_RW(dat);
	movf	(SPI_Write@dat),w
	fcall	_SPI_RW
	line	232
;TEST_62F08x_SPI.C: 232: WriteDisable();
	fcall	_WriteDisable
	line	233
	
l4594:	
;TEST_62F08x_SPI.C: 233: RB1=1;
	bsf	(105/8),(105)&7
	line	234
;TEST_62F08x_SPI.C: 234: while(SPI_ReadStatus()&0x01);
	
l4596:	
	fcall	_SPI_ReadStatus
	movwf	(??_SPI_Write+0)+0
	btfsc	0+(??_SPI_Write+0)+0,(0)&7
	goto	u61
	goto	u60
u61:
	goto	l4596
u60:
	line	235
	
l2426:	
	return
	opt stack 0
GLOBAL	__end_of_SPI_Write
	__end_of_SPI_Write:
;; =============== function _SPI_Write ends ============

	signat	_SPI_Write,8312
	global	_SPI_Read
psect	text97,local,class=CODE,delta=2
global __ptext97
__ptext97:

;; *************** function _SPI_Read *****************
;; Defined at:
;;		line 206 in file "TEST_62F08x_SPI.C"
;; Parameters:    Size  Location     Type
;;  addr            2    3[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  spidata         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_SPI_ReadStatus
;;		_SPI_RW
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text97
	file	"TEST_62F08x_SPI.C"
	line	206
	global	__size_of_SPI_Read
	__size_of_SPI_Read	equ	__end_of_SPI_Read-_SPI_Read
	
_SPI_Read:	
	opt	stack 12
; Regs used in _SPI_Read: [wreg+status,2+status,0+pclath+cstack]
	line	208
	
l4572:	
;TEST_62F08x_SPI.C: 207: unsigned char spidata;
;TEST_62F08x_SPI.C: 208: while(SPI_ReadStatus()&0x01);
	
l4574:	
	fcall	_SPI_ReadStatus
	movwf	(??_SPI_Read+0)+0
	btfsc	0+(??_SPI_Read+0)+0,(0)&7
	goto	u41
	goto	u40
u41:
	goto	l4574
u40:
	
l2416:	
	line	209
;TEST_62F08x_SPI.C: 209: RB1=0;
	bcf	(105/8),(105)&7
	line	210
	
l4576:	
;TEST_62F08x_SPI.C: 210: SPI_RW(0x03);
	movlw	(03h)
	fcall	_SPI_RW
	line	211
;TEST_62F08x_SPI.C: 211: SPI_RW((unsigned char)((addr)>>8));
	movf	(SPI_Read@addr+1),w
	fcall	_SPI_RW
	line	212
;TEST_62F08x_SPI.C: 212: SPI_RW((unsigned char)addr);
	movf	(SPI_Read@addr),w
	fcall	_SPI_RW
	line	213
	
l4578:	
;TEST_62F08x_SPI.C: 213: spidata = SPI_RW(0x00);
	movlw	(0)
	fcall	_SPI_RW
	movwf	(SPI_Read@spidata)
	line	214
	
l4580:	
;TEST_62F08x_SPI.C: 214: RB1=1;
	bsf	(105/8),(105)&7
	line	215
	
l4582:	
;TEST_62F08x_SPI.C: 215: return spidata;
	movf	(SPI_Read@spidata),w
	line	216
	
l2417:	
	return
	opt stack 0
GLOBAL	__end_of_SPI_Read
	__end_of_SPI_Read:
;; =============== function _SPI_Read ends ============

	signat	_SPI_Read,4217
	global	_SPI_ReadStatus
psect	text98,local,class=CODE,delta=2
global __ptext98
__ptext98:

;; *************** function _SPI_ReadStatus *****************
;; Defined at:
;;		line 178 in file "TEST_62F08x_SPI.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  status          1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_SPI_RW
;; This function is called by:
;;		_SPI_Read
;;		_SPI_Write
;; This function uses a non-reentrant model
;;
psect	text98
	file	"TEST_62F08x_SPI.C"
	line	178
	global	__size_of_SPI_ReadStatus
	__size_of_SPI_ReadStatus	equ	__end_of_SPI_ReadStatus-_SPI_ReadStatus
	
_SPI_ReadStatus:	
	opt	stack 12
; Regs used in _SPI_ReadStatus: [wreg+status,2+status,0+pclath+cstack]
	line	179
	
l4558:	
	line	180
	
l4560:	
;TEST_62F08x_SPI.C: 180: RB1=0;
	movlb 0	; select bank0
	bcf	(105/8),(105)&7
	line	181
	
l4562:	
;TEST_62F08x_SPI.C: 181: SPI_RW(0x05);
	movlw	(05h)
	fcall	_SPI_RW
	line	182
	
l4564:	
;TEST_62F08x_SPI.C: 182: status = SPI_RW(0x00);
	movlw	(0)
	fcall	_SPI_RW
	movwf	(SPI_ReadStatus@status)
	line	183
	
l4566:	
;TEST_62F08x_SPI.C: 183: RB1=1;
	bsf	(105/8),(105)&7
	line	184
	
l4568:	
;TEST_62F08x_SPI.C: 184: return status;
	movf	(SPI_ReadStatus@status),w
	line	185
	
l2408:	
	return
	opt stack 0
GLOBAL	__end_of_SPI_ReadStatus
	__end_of_SPI_ReadStatus:
;; =============== function _SPI_ReadStatus ends ============

	signat	_SPI_ReadStatus,89
	global	_WriteDisable
psect	text99,local,class=CODE,delta=2
global __ptext99
__ptext99:

;; *************** function _WriteDisable *****************
;; Defined at:
;;		line 167 in file "TEST_62F08x_SPI.C"
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_SPI_RW
;; This function is called by:
;;		_SPI_Write
;; This function uses a non-reentrant model
;;
psect	text99
	file	"TEST_62F08x_SPI.C"
	line	167
	global	__size_of_WriteDisable
	__size_of_WriteDisable	equ	__end_of_WriteDisable-_WriteDisable
	
_WriteDisable:	
	opt	stack 12
; Regs used in _WriteDisable: [wreg+status,2+status,0+pclath+cstack]
	line	168
	
l4552:	
;TEST_62F08x_SPI.C: 168: RB1=0;
	bcf	(105/8),(105)&7
	line	169
	
l4554:	
;TEST_62F08x_SPI.C: 169: SPI_RW(0x04);
	movlw	(04h)
	fcall	_SPI_RW
	line	170
	
l4556:	
;TEST_62F08x_SPI.C: 170: RB1=1;
	bsf	(105/8),(105)&7
	line	171
	
l2405:	
	return
	opt stack 0
GLOBAL	__end_of_WriteDisable
	__end_of_WriteDisable:
;; =============== function _WriteDisable ends ============

	signat	_WriteDisable,88
	global	_WriteEnable
psect	text100,local,class=CODE,delta=2
global __ptext100
__ptext100:

;; *************** function _WriteEnable *****************
;; Defined at:
;;		line 157 in file "TEST_62F08x_SPI.C"
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_SPI_RW
;; This function is called by:
;;		_SPI_Write
;; This function uses a non-reentrant model
;;
psect	text100
	file	"TEST_62F08x_SPI.C"
	line	157
	global	__size_of_WriteEnable
	__size_of_WriteEnable	equ	__end_of_WriteEnable-_WriteEnable
	
_WriteEnable:	
	opt	stack 12
; Regs used in _WriteEnable: [wreg+status,2+status,0+pclath+cstack]
	line	158
	
l4546:	
;TEST_62F08x_SPI.C: 158: RB1=0;
	bcf	(105/8),(105)&7
	line	159
	
l4548:	
;TEST_62F08x_SPI.C: 159: SPI_RW(0x06);
	movlw	(06h)
	fcall	_SPI_RW
	line	160
	
l4550:	
;TEST_62F08x_SPI.C: 160: RB1=1;
	bsf	(105/8),(105)&7
	line	161
	
l2402:	
	return
	opt stack 0
GLOBAL	__end_of_WriteEnable
	__end_of_WriteEnable:
;; =============== function _WriteEnable ends ============

	signat	_WriteEnable,88
	global	_SPI_INITIAL
psect	text101,local,class=CODE,delta=2
global __ptext101
__ptext101:

;; *************** function _SPI_INITIAL *****************
;; Defined at:
;;		line 243 in file "TEST_62F08x_SPI.C"
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
;;		On exit  : 17F/0
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
psect	text101
	file	"TEST_62F08x_SPI.C"
	line	243
	global	__size_of_SPI_INITIAL
	__size_of_SPI_INITIAL	equ	__end_of_SPI_INITIAL-_SPI_INITIAL
	
_SPI_INITIAL:	
	opt	stack 14
; Regs used in _SPI_INITIAL: [wreg+status,2]
	line	244
	
l4526:	
;TEST_62F08x_SPI.C: 244: PCKEN |=0B00010000;
	movlb 1	; select bank1
	bsf	(154)^080h+(4/8),(4)&7	;volatile
	line	246
	
l4528:	
;TEST_62F08x_SPI.C: 246: SPICTRL =0B00000000;
	movlb 0	; select bank0
	clrf	(22)	;volatile
	line	273
	
l4530:	
;TEST_62F08x_SPI.C: 273: SPICFG =0B01000000;
	movlw	(040h)
	movwf	(23)	;volatile
	line	299
	
l4532:	
;TEST_62F08x_SPI.C: 299: SPISCR =0B00000000;
	clrf	(24)	;volatile
	line	301
	
l4534:	
;TEST_62F08x_SPI.C: 301: SPIRXCRC =0B00000000;
	clrf	(26)	;volatile
	line	302
	
l4536:	
;TEST_62F08x_SPI.C: 302: SPITXCRC =0B00000000;
	clrf	(27)	;volatile
	line	303
	
l4538:	
;TEST_62F08x_SPI.C: 303: SPIIER =0B00000000;
	clrf	(28)	;volatile
	line	304
	
l4540:	
;TEST_62F08x_SPI.C: 304: SPICTRL2 =0B00000000;
	clrf	(29)	;volatile
	line	330
	
l4542:	
;TEST_62F08x_SPI.C: 330: SPISTAT =0B00000000;
	clrf	(30)	;volatile
	line	332
	
l4544:	
;TEST_62F08x_SPI.C: 332: SPIEN=1;
	bsf	(176/8),(176)&7
	line	339
	
l2429:	
	return
	opt stack 0
GLOBAL	__end_of_SPI_INITIAL
	__end_of_SPI_INITIAL:
;; =============== function _SPI_INITIAL ends ============

	signat	_SPI_INITIAL,88
	global	_SPI_RW
psect	text102,local,class=CODE,delta=2
global __ptext102
__ptext102:

;; *************** function _SPI_RW *****************
;; Defined at:
;;		line 141 in file "TEST_62F08x_SPI.C"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMMON] unsigned char 
;;  spiData         1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
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
;;		_WriteEnable
;;		_WriteDisable
;;		_SPI_ReadStatus
;;		_SPI_Read
;;		_SPI_Write
;; This function uses a non-reentrant model
;;
psect	text102
	file	"TEST_62F08x_SPI.C"
	line	141
	global	__size_of_SPI_RW
	__size_of_SPI_RW	equ	__end_of_SPI_RW-_SPI_RW
	
_SPI_RW:	
	opt	stack 13
; Regs used in _SPI_RW: [wreg]
;SPI_RW@data stored from wreg
	movwf	(SPI_RW@data)
	line	145
	
l4516:	
;TEST_62F08x_SPI.C: 143: unsigned char spiData;
;TEST_62F08x_SPI.C: 145: while(BUSY);
	
l2393:	
	btfsc	(191/8),(191)&7
	goto	u11
	goto	u10
u11:
	goto	l2393
u10:
	line	146
	
l4518:	
;TEST_62F08x_SPI.C: 146: SPIDATA=data;
	movf	(SPI_RW@data),w
	movwf	(21)	;volatile
	line	147
;TEST_62F08x_SPI.C: 147: while(BUSY || !SPIF);
	
l2396:	
	btfsc	(191/8),(191)&7
	goto	u21
	goto	u20
u21:
	goto	l2396
u20:
	
l4520:	
	btfss	(183/8),(183)&7
	goto	u31
	goto	u30
u31:
	goto	l2396
u30:
	
l2398:	
	line	148
;TEST_62F08x_SPI.C: 148: SPIF=0;
	bcf	(183/8),(183)&7
	line	149
	
l4522:	
;TEST_62F08x_SPI.C: 149: spiData = SPIDATA;
	movf	(21),w	;volatile
	movwf	(SPI_RW@spiData)
	line	150
;TEST_62F08x_SPI.C: 150: return spiData;
	movf	(SPI_RW@spiData),w
	line	151
	
l2399:	
	return
	opt stack 0
GLOBAL	__end_of_SPI_RW
	__end_of_SPI_RW:
;; =============== function _SPI_RW ends ============

	signat	_SPI_RW,4217
	global	_POWER_INITIAL
psect	text103,local,class=CODE,delta=2
global __ptext103
__ptext103:

;; *************** function _POWER_INITIAL *****************
;; Defined at:
;;		line 46 in file "TEST_62F08x_SPI.C"
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
psect	text103
	file	"TEST_62F08x_SPI.C"
	line	46
	global	__size_of_POWER_INITIAL
	__size_of_POWER_INITIAL	equ	__end_of_POWER_INITIAL-_POWER_INITIAL
	
_POWER_INITIAL:	
	opt	stack 14
; Regs used in _POWER_INITIAL: [wreg+status,2]
	line	47
	
l4474:	
;TEST_62F08x_SPI.C: 47: OSCCON = 0B01110001;
	movlw	(071h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	50
	
l4476:	
;TEST_62F08x_SPI.C: 50: INTCON = 0;
	clrf	(11)	;volatile
	line	52
	
l4478:	
;TEST_62F08x_SPI.C: 52: PORTA = 0B00000000;
	movlb 0	; select bank0
	clrf	(12)	;volatile
	line	53
;TEST_62F08x_SPI.C: 53: TRISA = 0B11111110;
	movlw	(0FEh)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	54
	
l4480:	
;TEST_62F08x_SPI.C: 54: PORTB = 0B00000000;
	movlb 0	; select bank0
	clrf	(13)	;volatile
	line	55
	
l4482:	
;TEST_62F08x_SPI.C: 55: TRISB = 0B11111100;
	movlw	(0FCh)
	movlb 1	; select bank1
	movwf	(141)^080h	;volatile
	line	56
;TEST_62F08x_SPI.C: 56: PORTC = 0B00000000;
	movlb 0	; select bank0
	clrf	(14)	;volatile
	line	57
	
l4484:	
;TEST_62F08x_SPI.C: 57: TRISC = 0B11111111;
	movlw	(0FFh)
	movlb 1	; select bank1
	movwf	(142)^080h	;volatile
	line	58
	
l4486:	
;TEST_62F08x_SPI.C: 58: PORTD = 0B00000000;
	movlb 0	; select bank0
	clrf	(15)	;volatile
	line	59
;TEST_62F08x_SPI.C: 59: TRISD = 0B11111111;
	movlw	(0FFh)
	movlb 1	; select bank1
	movwf	(143)^080h	;volatile
	line	61
	
l4488:	
;TEST_62F08x_SPI.C: 61: WPUA = 0B00000000;
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	62
	
l4490:	
;TEST_62F08x_SPI.C: 62: WPUB = 0B00000000;
	clrf	(397)^0180h	;volatile
	line	63
;TEST_62F08x_SPI.C: 63: WPUC = 0B00001000;
	movlw	(08h)
	movwf	(398)^0180h	;volatile
	line	64
	
l4492:	
;TEST_62F08x_SPI.C: 64: WPUD = 0B00000000;
	clrf	(399)^0180h	;volatile
	line	66
	
l4494:	
;TEST_62F08x_SPI.C: 66: WPDA = 0B00000000;
	movlb 4	; select bank4
	clrf	(524)^0200h	;volatile
	line	67
	
l4496:	
;TEST_62F08x_SPI.C: 67: WPDB = 0B00000000;
	clrf	(525)^0200h	;volatile
	line	68
	
l4498:	
;TEST_62F08x_SPI.C: 68: WPDC = 0B00000000;
	clrf	(526)^0200h	;volatile
	line	69
	
l4500:	
;TEST_62F08x_SPI.C: 69: WPDD = 0B00000000;
	clrf	(527)^0200h	;volatile
	line	71
	
l4502:	
;TEST_62F08x_SPI.C: 71: PSRC0 = 0B11111111;
	movlw	(0FFh)
	movlb 2	; select bank2
	movwf	(282)^0100h	;volatile
	line	75
	
l4504:	
;TEST_62F08x_SPI.C: 75: PSRC1 = 0B11111111;
	movlw	(0FFh)
	movwf	(283)^0100h	;volatile
	line	79
	
l4506:	
;TEST_62F08x_SPI.C: 79: PSINK0 = 0B11111111;
	movlw	(0FFh)
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	80
	
l4508:	
;TEST_62F08x_SPI.C: 80: PSINK1 = 0B11111111;
	movlw	(0FFh)
	movwf	(411)^0180h	;volatile
	line	81
	
l4510:	
;TEST_62F08x_SPI.C: 81: PSINK2 = 0B11111111;
	movlw	(0FFh)
	movwf	(412)^0180h	;volatile
	line	82
	
l4512:	
;TEST_62F08x_SPI.C: 82: PSINK3 = 0B11111111;
	movlw	(0FFh)
	movwf	(413)^0180h	;volatile
	line	84
	
l4514:	
;TEST_62F08x_SPI.C: 84: ANSELA = 0B00000000;
	clrf	(407)^0180h	;volatile
	line	85
	
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
;;		line 35 in file "TEST_62F08x_SPI.C"
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
	file	"TEST_62F08x_SPI.C"
	line	35
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 12
; Regs used in _ISR: []
psect	intentry
	pagesel	$
	line	37
	
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
