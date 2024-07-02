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
	FNCALL	_main,_EEPROMwrite
	FNCALL	_main,_EEPROMread
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
	global	_EEReadData
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
	global	_EEIF
psect	strings
psect	_ad3nop_text
_EEIF	set	90
	global	_GIE
psect	strings
psect	_ad3nop_text
_GIE	set	95
	global	_OSCCON
psect	strings
psect	_ad3nop_text
_OSCCON	set	153
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
	global	_EEADRL
psect	strings
psect	_ad3nop_text
_EEADRL	set	401
	global	_EECON2
psect	strings
psect	_ad3nop_text
_EECON2	set	406
	global	_EEDATL
psect	strings
psect	_ad3nop_text
_EEDATL	set	403
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
	global	_CFGS
psect	strings
psect	_ad3nop_text
_CFGS	set	3246
	global	_DRDEN
psect	strings
psect	_ad3nop_text
_DRDEN	set	3264
	global	_EEPGD
psect	strings
psect	_ad3nop_text
_EEPGD	set	3247
	global	_RD
psect	strings
psect	_ad3nop_text
_RD	set	3240
	global	_WR
psect	strings
psect	_ad3nop_text
_WR	set	3241
	global	_WREN
psect	strings
psect	_ad3nop_text
_WREN	set	3242
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
	file	"test_62f08x_eeprom.as"
psect	strings
psect	_ad3nop_text
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_EEReadData:
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
	global	??_EEPROMread
??_EEPROMread:	; 0 bytes @ 0x0
	global	?_EEPROMwrite
?_EEPROMwrite:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_EEPROMread
?_EEPROMread:	; 1 bytes @ 0x0
	global	EEPROMread@EEAddr
EEPROMread@EEAddr:	; 1 bytes @ 0x0
	global	EEPROMwrite@Data
EEPROMwrite@Data:	; 1 bytes @ 0x0
	ds	1
	global	??_EEPROMwrite
??_EEPROMwrite:	; 0 bytes @ 0x1
	global	EEPROMread@ReEEPROMread
EEPROMread@ReEEPROMread:	; 1 bytes @ 0x1
	global	EEPROMwrite@EEAddr
EEPROMwrite@EEAddr:	; 1 bytes @ 0x1
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x2
;;Data sizes: Strings 0, constant 0, data 0, bss 1, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      2       3
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
;;   _main->_EEPROMwrite
;;   _main->_EEPROMread
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
;; (0) _main                                                 0     0      0      60
;;                      _POWER_INITIAL
;;                        _EEPROMwrite
;;                         _EEPROMread
;; ---------------------------------------------------------------------------------
;; (1) _EEPROMwrite                                          2     1      1      30
;;                                              0 COMMON     2     1      1
;; ---------------------------------------------------------------------------------
;; (1) _EEPROMread                                           2     2      0      30
;;                                              0 COMMON     2     2      0
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
;;   _EEPROMwrite
;;   _EEPROMread
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
;;COMMON               E      2       3       2       21.4%
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
;;ABS                  0      0       3      20        0.0%
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
;;DATA                 0      0       4      31        0.0%
;;BITSFR31             0      0       0      32        0.0%
;;SFR31                0      0       0      32        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 146 in file "TEST_62F08x_EEPROM.C"
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
;;		_EEPROMwrite
;;		_EEPROMread
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"TEST_62F08x_EEPROM.C"
	line	146
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 14
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	147
	
l4495:	
;TEST_62F08x_EEPROM.C: 147: POWER_INITIAL();
	fcall	_POWER_INITIAL
	line	148
;TEST_62F08x_EEPROM.C: 148: EEPROMwrite(0xff,0xaa);
	movlw	(0AAh)
	movwf	(?_EEPROMwrite)
	movlw	(0FFh)
	fcall	_EEPROMwrite
	line	149
;TEST_62F08x_EEPROM.C: 149: EEPROMwrite(0xff,0xaa);
	movlw	(0AAh)
	movwf	(?_EEPROMwrite)
	movlw	(0FFh)
	fcall	_EEPROMwrite
	line	151
;TEST_62F08x_EEPROM.C: 151: EEPROMwrite(0x13,0x55);
	movlw	(055h)
	movwf	(?_EEPROMwrite)
	movlw	(013h)
	fcall	_EEPROMwrite
	line	153
	
l4497:	
;TEST_62F08x_EEPROM.C: 153: EEReadData = EEPROMread(0x13);
	movlw	(013h)
	fcall	_EEPROMread
	movwf	(_EEReadData)	;volatile
	line	157
	
l4499:	
;TEST_62F08x_EEPROM.C: 156: {
;TEST_62F08x_EEPROM.C: 157: _nop();
	nop
	goto	l4499
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	159
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_EEPROMwrite
psect	text55,local,class=CODE,delta=2
global __ptext55
__ptext55:

;; *************** function _EEPROMwrite *****************
;; Defined at:
;;		line 113 in file "TEST_62F08x_EEPROM.C"
;; Parameters:    Size  Location     Type
;;  EEAddr          1    wreg     unsigned char 
;;  Data            1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  EEAddr          1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 1F/3
;;		On exit  : 1F/3
;;		Unchanged: 0/0
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
psect	text55
	file	"TEST_62F08x_EEPROM.C"
	line	113
	global	__size_of_EEPROMwrite
	__size_of_EEPROMwrite	equ	__end_of_EEPROMwrite-_EEPROMwrite
	
_EEPROMwrite:	
	opt	stack 14
; Regs used in _EEPROMwrite: [wreg]
;EEPROMwrite@EEAddr stored from wreg
	movwf	(EEPROMwrite@EEAddr)
	line	115
	
l4473:	
;TEST_62F08x_EEPROM.C: 115: while(GIE)
	goto	l2366
	
l2367:	
	line	116
;TEST_62F08x_EEPROM.C: 116: {GIE = 0; }
	bcf	(95/8),(95)&7
	
l2366:	
	line	115
	btfsc	(95/8),(95)&7
	goto	u11
	goto	u10
u11:
	goto	l2367
u10:
	line	117
	
l4475:	
;TEST_62F08x_EEPROM.C: 117: EEADRL = EEAddr;
	movf	(EEPROMwrite@EEAddr),w
	movwf	(401)^0180h	;volatile
	line	118
;TEST_62F08x_EEPROM.C: 118: EEDATL = Data;
	movf	(EEPROMwrite@Data),w
	movwf	(403)^0180h	;volatile
	line	120
	
l4477:	
;TEST_62F08x_EEPROM.C: 120: CFGS =0;
	bcf	(3246/8)^0180h,(3246)&7
	line	121
	
l4479:	
;TEST_62F08x_EEPROM.C: 121: EEPGD=0;
	bcf	(3247/8)^0180h,(3247)&7
	line	123
	
l4481:	
;TEST_62F08x_EEPROM.C: 123: WREN=1;
	bsf	(3242/8)^0180h,(3242)&7
	line	125
	
l4483:	
;TEST_62F08x_EEPROM.C: 125: EEIF = 0;
	bcf	(90/8),(90)&7
	line	126
;TEST_62F08x_EEPROM.C: 126: EECON2=0x55;
	movlw	(055h)
	movwf	(406)^0180h	;volatile
	line	127
;TEST_62F08x_EEPROM.C: 127: EECON2=0xAA;
	movlw	(0AAh)
	movwf	(406)^0180h	;volatile
	line	129
	
l4485:	
;TEST_62F08x_EEPROM.C: 129: WR = 1;
	bsf	(3241/8)^0180h,(3241)&7
	line	130
	
l4487:	
;TEST_62F08x_EEPROM.C: 130: _nop();
	nop
	line	131
	
l4489:	
;TEST_62F08x_EEPROM.C: 131: _nop();
	nop
	line	132
	
l4491:	
;TEST_62F08x_EEPROM.C: 132: _nop();
	nop
	line	133
	
l4493:	
;TEST_62F08x_EEPROM.C: 133: _nop();
	nop
	line	134
;TEST_62F08x_EEPROM.C: 134: while(WR);
	
l2369:	
	movlb 3	; select bank3
	btfsc	(3241/8)^0180h,(3241)&7
	goto	u21
	goto	u20
u21:
	goto	l2369
u20:
	
l2371:	
	line	135
;TEST_62F08x_EEPROM.C: 135: WREN=0;
	bcf	(3242/8)^0180h,(3242)&7
	line	136
;TEST_62F08x_EEPROM.C: 136: GIE = 1;
	bsf	(95/8),(95)&7
	line	137
	
l2372:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROMwrite
	__end_of_EEPROMwrite:
;; =============== function _EEPROMwrite ends ============

	signat	_EEPROMwrite,8312
	global	_EEPROMread
psect	text56,local,class=CODE,delta=2
global __ptext56
__ptext56:

;; *************** function _EEPROMread *****************
;; Defined at:
;;		line 89 in file "TEST_62F08x_EEPROM.C"
;; Parameters:    Size  Location     Type
;;  EEAddr          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  EEAddr          1    0[COMMON] unsigned char 
;;  ReEEPROMread    1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 1F/3
;;		On exit  : 1F/3
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text56
	file	"TEST_62F08x_EEPROM.C"
	line	89
	global	__size_of_EEPROMread
	__size_of_EEPROMread	equ	__end_of_EEPROMread-_EEPROMread
	
_EEPROMread:	
	opt	stack 14
; Regs used in _EEPROMread: [wreg]
;EEPROMread@EEAddr stored from wreg
	line	92
	movwf	(EEPROMread@EEAddr)
	
l4459:	
;TEST_62F08x_EEPROM.C: 90: unsigned char ReEEPROMread;
;TEST_62F08x_EEPROM.C: 92: DRDEN=1;
	bsf	(3264/8)^0180h,(3264)&7
	line	93
;TEST_62F08x_EEPROM.C: 93: _nop();
	nop
	line	94
;TEST_62F08x_EEPROM.C: 94: _nop();
	nop
	line	95
	
l4461:	
;TEST_62F08x_EEPROM.C: 95: EEADRL = EEAddr;
	movf	(EEPROMread@EEAddr),w
	movlb 3	; select bank3
	movwf	(401)^0180h	;volatile
	line	97
	
l4463:	
;TEST_62F08x_EEPROM.C: 97: CFGS =0;
	bcf	(3246/8)^0180h,(3246)&7
	line	98
	
l4465:	
;TEST_62F08x_EEPROM.C: 98: EEPGD=0;
	bcf	(3247/8)^0180h,(3247)&7
	line	99
	
l4467:	
;TEST_62F08x_EEPROM.C: 99: RD = 1;
	bsf	(3240/8)^0180h,(3240)&7
	line	101
;TEST_62F08x_EEPROM.C: 101: ReEEPROMread = EEDATL;
	movf	(403)^0180h,w	;volatile
	movwf	(EEPROMread@ReEEPROMread)
	line	102
	
l4469:	
;TEST_62F08x_EEPROM.C: 102: DRDEN=0;
	bcf	(3264/8)^0180h,(3264)&7
	line	103
;TEST_62F08x_EEPROM.C: 103: return ReEEPROMread;
	movf	(EEPROMread@ReEEPROMread),w
	line	104
	
l2363:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROMread
	__end_of_EEPROMread:
;; =============== function _EEPROMread ends ============

	signat	_EEPROMread,4217
	global	_POWER_INITIAL
psect	text57,local,class=CODE,delta=2
global __ptext57
__ptext57:

;; *************** function _POWER_INITIAL *****************
;; Defined at:
;;		line 42 in file "TEST_62F08x_EEPROM.C"
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
psect	text57
	file	"TEST_62F08x_EEPROM.C"
	line	42
	global	__size_of_POWER_INITIAL
	__size_of_POWER_INITIAL	equ	__end_of_POWER_INITIAL-_POWER_INITIAL
	
_POWER_INITIAL:	
	opt	stack 14
; Regs used in _POWER_INITIAL: [wreg+status,2]
	line	43
	
l4417:	
;TEST_62F08x_EEPROM.C: 43: OSCCON = 0B01110001;
	movlw	(071h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	46
	
l4419:	
;TEST_62F08x_EEPROM.C: 46: INTCON = 0;
	clrf	(11)	;volatile
	line	48
	
l4421:	
;TEST_62F08x_EEPROM.C: 48: PORTA = 0B00000000;
	movlb 0	; select bank0
	clrf	(12)	;volatile
	line	49
;TEST_62F08x_EEPROM.C: 49: TRISA = 0B11111111;
	movlw	(0FFh)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	50
	
l4423:	
;TEST_62F08x_EEPROM.C: 50: PORTB = 0B00000000;
	movlb 0	; select bank0
	clrf	(13)	;volatile
	line	51
	
l4425:	
;TEST_62F08x_EEPROM.C: 51: TRISB = 0B11110111;
	movlw	(0F7h)
	movlb 1	; select bank1
	movwf	(141)^080h	;volatile
	line	52
;TEST_62F08x_EEPROM.C: 52: PORTC = 0B00000000;
	movlb 0	; select bank0
	clrf	(14)	;volatile
	line	53
	
l4427:	
;TEST_62F08x_EEPROM.C: 53: TRISC = 0B11111111;
	movlw	(0FFh)
	movlb 1	; select bank1
	movwf	(142)^080h	;volatile
	line	54
	
l4429:	
;TEST_62F08x_EEPROM.C: 54: PORTD = 0B00000000;
	movlb 0	; select bank0
	clrf	(15)	;volatile
	line	55
;TEST_62F08x_EEPROM.C: 55: TRISD = 0B11111111;
	movlw	(0FFh)
	movlb 1	; select bank1
	movwf	(143)^080h	;volatile
	line	57
	
l4431:	
;TEST_62F08x_EEPROM.C: 57: WPUA = 0B00000000;
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	58
	
l4433:	
;TEST_62F08x_EEPROM.C: 58: WPUB = 0B00000000;
	clrf	(397)^0180h	;volatile
	line	59
;TEST_62F08x_EEPROM.C: 59: WPUC = 0B00001000;
	movlw	(08h)
	movwf	(398)^0180h	;volatile
	line	60
	
l4435:	
;TEST_62F08x_EEPROM.C: 60: WPUD = 0B00000000;
	clrf	(399)^0180h	;volatile
	line	62
	
l4437:	
;TEST_62F08x_EEPROM.C: 62: WPDA = 0B00000000;
	movlb 4	; select bank4
	clrf	(524)^0200h	;volatile
	line	63
	
l4439:	
;TEST_62F08x_EEPROM.C: 63: WPDB = 0B00000000;
	clrf	(525)^0200h	;volatile
	line	64
	
l4441:	
;TEST_62F08x_EEPROM.C: 64: WPDC = 0B00000000;
	clrf	(526)^0200h	;volatile
	line	65
	
l4443:	
;TEST_62F08x_EEPROM.C: 65: WPDD = 0B00000000;
	clrf	(527)^0200h	;volatile
	line	67
	
l4445:	
;TEST_62F08x_EEPROM.C: 67: PSRC0 = 0B11111111;
	movlw	(0FFh)
	movlb 2	; select bank2
	movwf	(282)^0100h	;volatile
	line	71
	
l4447:	
;TEST_62F08x_EEPROM.C: 71: PSRC1 = 0B11111111;
	movlw	(0FFh)
	movwf	(283)^0100h	;volatile
	line	75
	
l4449:	
;TEST_62F08x_EEPROM.C: 75: PSINK0 = 0B11111111;
	movlw	(0FFh)
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	76
	
l4451:	
;TEST_62F08x_EEPROM.C: 76: PSINK1 = 0B11111111;
	movlw	(0FFh)
	movwf	(411)^0180h	;volatile
	line	77
	
l4453:	
;TEST_62F08x_EEPROM.C: 77: PSINK2 = 0B11111111;
	movlw	(0FFh)
	movwf	(412)^0180h	;volatile
	line	78
	
l4455:	
;TEST_62F08x_EEPROM.C: 78: PSINK3 = 0B11111111;
	movlw	(0FFh)
	movwf	(413)^0180h	;volatile
	line	80
	
l4457:	
;TEST_62F08x_EEPROM.C: 80: ANSELA = 0B00000000;
	clrf	(407)^0180h	;volatile
	line	81
	
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
;;		line 32 in file "TEST_62F08x_EEPROM.C"
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
	file	"TEST_62F08x_EEPROM.C"
	line	32
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 14
; Regs used in _ISR: []
psect	intentry
	pagesel	$
	line	34
	
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
