//Deviec:FT62F08X
//-----------------------Variable---------------------------------
		_EEReadData		EQU		72H
//		EEPROMwrite@EEAddr		EQU		71H
//		EEPROMwrite@EEAddr		EQU		71H
//		EEPROMwrite@Data		EQU		70H
//		EEPROMwrite@EEAddr		EQU		71H
//		EEPROMread@EEAddr		EQU		70H
//		EEPROMread@ReEEPROMread		EQU		71H
//		EEPROMread@EEAddr		EQU		70H
//		EEPROMread@EEAddr		EQU		70H
//-----------------------Variable END---------------------------------

		MOVLP 	0H 			//0000 	0180
		LJUMP 	8H 			//0001 	3808
		ORG		0003H
		NOP 					//0003 	1000
		BSR 	7EH, 0H 			//0004 	247E
		MOVLP 	0H 			//0005 	0180
		BCR 	7EH, 0H 			//0006 	207E
		RETI 					//0007 	1009
		MOVLP 	0H 			//0008 	0180
		LJUMP 	AH 			//0009 	380A
		CLRF 	72H 			//000A 	11F2
		BCR 	7EH, 0H 			//000B 	207E
		MOVLB 	0H 			//000C 	1020
		LJUMP 	EH 			//000D 	380E

		//;TEST_62F08x_EEPROM.C: 147: POWER_INITIAL();
		LCALL 	4EH 			//000E 	304E
		MOVLP 	0H 			//000F 	0180

		//;TEST_62F08x_EEPROM.C: 148: EEPROMwrite(0xff,0xaa);
		LDWI 	AAH 			//0010 	00AA
		STR 	70H 			//0011 	10F0
		LDWI 	FFH 			//0012 	00FF
		LCALL 	25H 			//0013 	3025
		MOVLP 	0H 			//0014 	0180

		//;TEST_62F08x_EEPROM.C: 149: EEPROMwrite(0xff,0xaa);
		LDWI 	AAH 			//0015 	00AA
		STR 	70H 			//0016 	10F0
		LDWI 	FFH 			//0017 	00FF
		LCALL 	25H 			//0018 	3025
		MOVLP 	0H 			//0019 	0180

		//;TEST_62F08x_EEPROM.C: 151: EEPROMwrite(0x13,0x55);
		LDWI 	55H 			//001A 	0055
		STR 	70H 			//001B 	10F0
		LDWI 	13H 			//001C 	0013
		LCALL 	25H 			//001D 	3025
		MOVLP 	0H 			//001E 	0180

		//;TEST_62F08x_EEPROM.C: 153: EEReadData = EEPROMread(0x13);
		LDWI 	13H 			//001F 	0013
		LCALL 	41H 			//0020 	3041
		MOVLP 	0H 			//0021 	0180
		STR 	72H 			//0022 	10F2

		//;TEST_62F08x_EEPROM.C: 156: {
		//;TEST_62F08x_EEPROM.C: 157: __nop();
		NOP 					//0023 	1000
		LJUMP 	23H 			//0024 	3823
		STR 	71H 			//0025 	10F1

		//;TEST_62F08x_EEPROM.C: 115: while(GIE)
		BTSS 	BH, 7H 			//0026 	2F8B
		LJUMP 	2AH 			//0027 	382A

		//;TEST_62F08x_EEPROM.C: 116: {GIE = 0; }
		BCR 	BH, 7H 			//0028 	238B
		LJUMP 	26H 			//0029 	3826

		//;TEST_62F08x_EEPROM.C: 117: EEADRL = EEAddr;
		LDR 	71H, 0H 			//002A 	1871
		STR 	11H 			//002B 	1091

		//;TEST_62F08x_EEPROM.C: 118: EEDATL = Data;
		LDR 	70H, 0H 			//002C 	1870
		STR 	13H 			//002D 	1093

		//;TEST_62F08x_EEPROM.C: 120: CFGS =0;
		BCR 	15H, 6H 			//002E 	2315

		//;TEST_62F08x_EEPROM.C: 121: EEPGD=0;
		BCR 	15H, 7H 			//002F 	2395

		//;TEST_62F08x_EEPROM.C: 123: WREN=1;
		BSR 	15H, 2H 			//0030 	2515

		//;TEST_62F08x_EEPROM.C: 125: EEIF = 0;
		BCR 	BH, 2H 			//0031 	210B

		//;TEST_62F08x_EEPROM.C: 126: EECON2=0x55;
		LDWI 	55H 			//0032 	0055
		STR 	16H 			//0033 	1096

		//;TEST_62F08x_EEPROM.C: 127: EECON2=0xAA;
		LDWI 	AAH 			//0034 	00AA
		STR 	16H 			//0035 	1096

		//;TEST_62F08x_EEPROM.C: 129: WR = 1;
		BSR 	15H, 1H 			//0036 	2495

		//;TEST_62F08x_EEPROM.C: 130: __nop();
		NOP 					//0037 	1000

		//;TEST_62F08x_EEPROM.C: 131: __nop();
		NOP 					//0038 	1000

		//;TEST_62F08x_EEPROM.C: 132: __nop();
		NOP 					//0039 	1000

		//;TEST_62F08x_EEPROM.C: 133: __nop();
		NOP 					//003A 	1000

		//;TEST_62F08x_EEPROM.C: 134: while(WR);
		MOVLB 	3H 			//003B 	1023
		BTSC 	15H, 1H 		//003C 	2895
		LJUMP 	3BH 			//003D 	383B

		//;TEST_62F08x_EEPROM.C: 135: WREN=0;
		BCR 	15H, 2H 			//003E 	2115

		//;TEST_62F08x_EEPROM.C: 136: GIE = 1;
		BSR 	BH, 7H 			//003F 	278B
		RET 					//0040 	1008
		STR 	70H 			//0041 	10F0

		//;TEST_62F08x_EEPROM.C: 90: unsigned char ReEEPROMread;
		//;TEST_62F08x_EEPROM.C: 92: DRDEN=1;
		BSR 	18H, 0H 			//0042 	2418

		//;TEST_62F08x_EEPROM.C: 93: __nop();
		NOP 					//0043 	1000

		//;TEST_62F08x_EEPROM.C: 94: __nop();
		NOP 					//0044 	1000

		//;TEST_62F08x_EEPROM.C: 95: EEADRL = EEAddr;
		MOVLB 	3H 			//0045 	1023
		STR 	11H 			//0046 	1091

		//;TEST_62F08x_EEPROM.C: 97: CFGS =0;
		BCR 	15H, 6H 			//0047 	2315

		//;TEST_62F08x_EEPROM.C: 98: EEPGD=0;
		BCR 	15H, 7H 			//0048 	2395

		//;TEST_62F08x_EEPROM.C: 99: RD = 1;
		BSR 	15H, 0H 			//0049 	2415

		//;TEST_62F08x_EEPROM.C: 101: ReEEPROMread = EEDATL;
		LDR 	13H, 0H 			//004A 	1813
		STR 	71H 			//004B 	10F1

		//;TEST_62F08x_EEPROM.C: 102: DRDEN=0;
		BCR 	18H, 0H 			//004C 	2018

		//;TEST_62F08x_EEPROM.C: 103: return ReEEPROMread;
		RET 					//004D 	1008

		//;TEST_62F08x_EEPROM.C: 43: OSCCON = 0B01110001;
		LDWI 	71H 			//004E 	0071
		MOVLB 	1H 			//004F 	1021
		STR 	19H 			//0050 	1099

		//;TEST_62F08x_EEPROM.C: 46: INTCON = 0;
		CLRF 	BH 			//0051 	118B

		//;TEST_62F08x_EEPROM.C: 48: PORTA = 0B00000000;
		MOVLB 	0H 			//0052 	1020
		CLRF 	CH 			//0053 	118C

		//;TEST_62F08x_EEPROM.C: 49: TRISA = 0B11111111;
		LDWI 	FFH 			//0054 	00FF
		MOVLB 	1H 			//0055 	1021
		STR 	CH 			//0056 	108C

		//;TEST_62F08x_EEPROM.C: 50: PORTB = 0B00000000;
		MOVLB 	0H 			//0057 	1020
		CLRF 	DH 			//0058 	118D

		//;TEST_62F08x_EEPROM.C: 51: TRISB = 0B11110111;
		LDWI 	F7H 			//0059 	00F7
		MOVLB 	1H 			//005A 	1021
		STR 	DH 			//005B 	108D

		//;TEST_62F08x_EEPROM.C: 52: PORTC = 0B00000000;
		MOVLB 	0H 			//005C 	1020
		CLRF 	EH 			//005D 	118E

		//;TEST_62F08x_EEPROM.C: 53: TRISC = 0B11111111;
		LDWI 	FFH 			//005E 	00FF
		MOVLB 	1H 			//005F 	1021
		STR 	EH 			//0060 	108E

		//;TEST_62F08x_EEPROM.C: 54: PORTD = 0B00000000;
		MOVLB 	0H 			//0061 	1020
		CLRF 	FH 			//0062 	118F

		//;TEST_62F08x_EEPROM.C: 55: TRISD = 0B11111111;
		MOVLB 	1H 			//0063 	1021
		STR 	FH 			//0064 	108F

		//;TEST_62F08x_EEPROM.C: 57: WPUA = 0B00000000;
		MOVLB 	3H 			//0065 	1023
		CLRF 	CH 			//0066 	118C

		//;TEST_62F08x_EEPROM.C: 58: WPUB = 0B00000000;
		CLRF 	DH 			//0067 	118D

		//;TEST_62F08x_EEPROM.C: 59: WPUC = 0B00001000;
		LDWI 	8H 			//0068 	0008
		STR 	EH 			//0069 	108E

		//;TEST_62F08x_EEPROM.C: 60: WPUD = 0B00000000;
		CLRF 	FH 			//006A 	118F

		//;TEST_62F08x_EEPROM.C: 62: WPDA = 0B00000000;
		MOVLB 	4H 			//006B 	1024
		CLRF 	CH 			//006C 	118C

		//;TEST_62F08x_EEPROM.C: 63: WPDB = 0B00000000;
		CLRF 	DH 			//006D 	118D

		//;TEST_62F08x_EEPROM.C: 64: WPDC = 0B00000000;
		CLRF 	EH 			//006E 	118E

		//;TEST_62F08x_EEPROM.C: 65: WPDD = 0B00000000;
		CLRF 	FH 			//006F 	118F

		//;TEST_62F08x_EEPROM.C: 67: PSRC0 = 0B11111111;
		LDWI 	FFH 			//0070 	00FF
		MOVLB 	2H 			//0071 	1022
		STR 	1AH 			//0072 	109A

		//;TEST_62F08x_EEPROM.C: 71: PSRC1 = 0B11111111;
		STR 	1BH 			//0073 	109B

		//;TEST_62F08x_EEPROM.C: 75: PSINK0 = 0B11111111;
		MOVLB 	3H 			//0074 	1023
		STR 	1AH 			//0075 	109A

		//;TEST_62F08x_EEPROM.C: 76: PSINK1 = 0B11111111;
		STR 	1BH 			//0076 	109B

		//;TEST_62F08x_EEPROM.C: 77: PSINK2 = 0B11111111;
		STR 	1CH 			//0077 	109C

		//;TEST_62F08x_EEPROM.C: 78: PSINK3 = 0B11111111;
		STR 	1DH 			//0078 	109D

		//;TEST_62F08x_EEPROM.C: 80: ANSELA = 0B00000000;
		CLRF 	17H 			//0079 	1197
		RET 					//007A 	1008
			END
