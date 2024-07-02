//Deviec:FT62F08X
//-----------------------Variable---------------------------------
		_IRbitNum		EQU		74H
		_IRbitTime		EQU		75H
		_IRDataTimer		EQU		70H
		_bitdata		EQU		79H
		_ReceiveFinish		EQU		76H
		_rdata1		EQU		77H
		_rdata2		EQU		78H
//-----------------------Variable END---------------------------------
		ORG		0000H
		MOVLP 	0H 			//0000 	0180
		LJUMP 	3FH 			//0001 	383F
		ORG		0003H
		NOP 					//0003 	1000
		MOVLP 	0H 			//0004 	0180

		//;TEST_62F08x_IR_Receive.C: 183: if(T4UIE && T4UIF)
		MOVLB 	2H 			//0005 	1022
		BTSC 	12H, 0H 		//0006 	2812
		BTSS 	13H, 0H 		//0007 	2C13
		LJUMP 	11H 			//0008 	3811
		LDWI 	33H 			//0009 	0033

		//;TEST_62F08x_IR_Receive.C: 184: {
		//;TEST_62F08x_IR_Receive.C: 185: T4UIF = 1;
		BSR 	13H, 0H 			//000A 	2413
		ORG		000BH

		//;TEST_62F08x_IR_Receive.C: 187: IRbitTime++;
		INCR 	75H, 1H 		//000B 	1AF5

		//;TEST_62F08x_IR_Receive.C: 188: if(IRbitTime > 50)
		SUBWR 	75H, 0H 		//000C 	1275
		BTSS 	3H, 0H 			//000D 	2C03
		LJUMP 	11H 			//000E 	3811

		//;TEST_62F08x_IR_Receive.C: 189: {
		//;TEST_62F08x_IR_Receive.C: 190: T4UIE = 0;
		BCR 	12H, 0H 			//000F 	2012

		//;TEST_62F08x_IR_Receive.C: 191: IRbitTime = 0;
		CLRF 	75H 			//0010 	11F5

		//;TEST_62F08x_IR_Receive.C: 192: }
		//;TEST_62F08x_IR_Receive.C: 193: }
		//;TEST_62F08x_IR_Receive.C: 196: if(EPIF0 & 0x08)
		MOVLB 	0H 			//0011 	1020
		BTSS 	14H, 3H 		//0012 	2D94
		ORG		0013H
		RETI 					//0013 	1009

		//;TEST_62F08x_IR_Receive.C: 197: {
		//;TEST_62F08x_IR_Receive.C: 198: EPIF0 |= 0x08;
		BSR 	14H, 3H 			//0014 	2594

		//;TEST_62F08x_IR_Receive.C: 200: if(RC3 == 0)
		BTSC 	EH, 3H 			//0015 	298E
		RETI 					//0016 	1009

		//;TEST_62F08x_IR_Receive.C: 201: {
		//;TEST_62F08x_IR_Receive.C: 202: T4UIE = 1;
		MOVLB 	2H 			//0017 	1022
		LDWI 	16H 			//0018 	0016
		BSR 	12H, 0H 			//0019 	2412

		//;TEST_62F08x_IR_Receive.C: 203: if(IRbitTime > 21)
		SUBWR 	75H, 0H 		//001A 	1275
		ORG		001BH
		BTSS 	3H, 0H 			//001B 	2C03
		LJUMP 	24H 			//001C 	3824

		//;TEST_62F08x_IR_Receive.C: 204: {
		//;TEST_62F08x_IR_Receive.C: 205: IRDataTimer[0] = 0;
		CLRF 	70H 			//001D 	11F0

		//;TEST_62F08x_IR_Receive.C: 206: IRDataTimer[1] = 0;
		CLRF 	71H 			//001E 	11F1

		//;TEST_62F08x_IR_Receive.C: 207: IRDataTimer[2] = 0;
		CLRF 	72H 			//001F 	11F2

		//;TEST_62F08x_IR_Receive.C: 208: IRDataTimer[3] = 0;
		CLRF 	73H 			//0020 	11F3

		//;TEST_62F08x_IR_Receive.C: 209: IRbitNum = 0;
		CLRF 	74H 			//0021 	11F4

		//;TEST_62F08x_IR_Receive.C: 210: bitdata = 0x00;
		CLRF 	79H 			//0022 	11F9
		ORG		0023H

		//;TEST_62F08x_IR_Receive.C: 211: }
		LJUMP 	2EH 			//0023 	382E

		//;TEST_62F08x_IR_Receive.C: 212: else if(IRbitTime > 3)
		LDWI 	4H 			//0024 	0004
		SUBWR 	75H, 0H 		//0025 	1275
		BTSS 	3H, 0H 			//0026 	2C03
		LJUMP 	2EH 			//0027 	382E

		//;TEST_62F08x_IR_Receive.C: 213: {
		//;TEST_62F08x_IR_Receive.C: 214: IRDataTimer[IRbitNum-1] |= bitdata;
		LDR 	74H, 0H 			//0028 	1874
		ADDWI 	6FH 			//0029 	0E6F
		STR 	6H 			//002A 	1086
		ORG		002BH
		CLRF 	7H 			//002B 	1187
		LDR 	79H, 0H 			//002C 	1879
		IORWR 	1H, 1H 		//002D 	1481

		//;TEST_62F08x_IR_Receive.C: 215: }
		//;TEST_62F08x_IR_Receive.C: 216: IRbitTime = 0;
		CLRF 	75H 			//002E 	11F5

		//;TEST_62F08x_IR_Receive.C: 217: bitdata<<=1;
		LSLF 	79H, 1H 		//002F 	05F9

		//;TEST_62F08x_IR_Receive.C: 218: if(bitdata == 0)
		LDR 	79H, 1H 			//0030 	18F9
		BTSS 	3H, 2H 			//0031 	2D03
		LJUMP 	36H 			//0032 	3836
		ORG		0033H

		//;TEST_62F08x_IR_Receive.C: 219: {
		//;TEST_62F08x_IR_Receive.C: 220: bitdata = 0x01;
		CLRF 	79H 			//0033 	11F9
		INCR 	79H, 1H 		//0034 	1AF9

		//;TEST_62F08x_IR_Receive.C: 221: IRbitNum++;
		INCR 	74H, 1H 		//0035 	1AF4

		//;TEST_62F08x_IR_Receive.C: 222: }
		//;TEST_62F08x_IR_Receive.C: 223: if(IRbitNum > 4)
		LDWI 	5H 			//0036 	0005
		SUBWR 	74H, 0H 		//0037 	1274
		BTSS 	3H, 0H 			//0038 	2C03
		RETI 					//0039 	1009

		//;TEST_62F08x_IR_Receive.C: 224: {
		//;TEST_62F08x_IR_Receive.C: 225: IRbitNum = 0;
		CLRF 	74H 			//003A 	11F4
		ORG		003BH

		//;TEST_62F08x_IR_Receive.C: 226: T4UIE = 0;
		BCR 	12H, 0H 			//003B 	2012

		//;TEST_62F08x_IR_Receive.C: 227: ReceiveFinish = 1;
		CLRF 	76H 			//003C 	11F6
		INCR 	76H, 1H 		//003D 	1AF6
		RETI 					//003E 	1009
		CLRF 	8H 			//003F 	1188
		MOVLP 	7H 			//0040 	0187
		LJUMP 	791H 			//0041 	3F91
		ORG		0791H
		LDWI 	1H 			//0791 	0001
		CLRF 	70H 			//0792 	11F0
		CLRF 	71H 			//0793 	11F1
		CLRF 	72H 			//0794 	11F2
		CLRF 	73H 			//0795 	11F3
		CLRF 	74H 			//0796 	11F4
		CLRF 	75H 			//0797 	11F5
		CLRF 	76H 			//0798 	11F6
		ORG		0799H
		CLRF 	77H 			//0799 	11F7
		CLRF 	78H 			//079A 	11F8
		STR 	79H 			//079B 	10F9
		MOVLB 	0H 			//079C 	1020
		LJUMP 	79EH 			//079D 	3F9E

		//;TEST_62F08x_IR_Receive.C: 241: POWER_INITIAL();
		LCALL 	7B8H 			//079E 	37B8
		MOVLP 	7H 			//079F 	0187

		//;TEST_62F08x_IR_Receive.C: 242: TIMER4_INITIAL();
		LCALL 	7E5H 			//07A0 	37E5
		ORG		07A1H
		MOVLP 	7H 			//07A1 	0187

		//;TEST_62F08x_IR_Receive.C: 243: Px_Level_Change_INITIAL();
		LCALL 	7F4H 			//07A2 	37F4
		MOVLP 	7H 			//07A3 	0187

		//;TEST_62F08x_IR_Receive.C: 244: GIE = 1;
		BSR 	BH, 7H 			//07A4 	278B

		//;TEST_62F08x_IR_Receive.C: 247: {
		//;TEST_62F08x_IR_Receive.C: 248: if(ReceiveFinish==1)
		DECRSZ 	76H, 0H 		//07A5 	1B76
		LJUMP 	7A5H 			//07A6 	3FA5

		//;TEST_62F08x_IR_Receive.C: 249: {
		//;TEST_62F08x_IR_Receive.C: 250: ReceiveFinish = 0;
		CLRF 	76H 			//07A7 	11F6

		//;TEST_62F08x_IR_Receive.C: 251: rdata1 = 0xFF - IRDataTimer[0];
		COMR 	70H, 0H 		//07A8 	1970
		ORG		07A9H
		STR 	77H 			//07A9 	10F7

		//;TEST_62F08x_IR_Receive.C: 252: rdata2 = 0xFF - IRDataTimer[2];
		COMR 	72H, 0H 		//07AA 	1972
		STR 	78H 			//07AB 	10F8

		//;TEST_62F08x_IR_Receive.C: 253: if((rdata1 == IRDataTimer[1])&&(rdata2 == IRDataTimer[3]
		//+                          ))
		LDR 	71H, 0H 			//07AC 	1871
		XORWR 	77H, 0H 		//07AD 	1677
		BTSS 	3H, 2H 			//07AE 	2D03
		LJUMP 	7A5H 			//07AF 	3FA5
		LDR 	73H, 0H 			//07B0 	1873
		ORG		07B1H
		XORWR 	78H, 0H 		//07B1 	1678
		BTSS 	3H, 2H 			//07B2 	2D03
		LJUMP 	7A5H 			//07B3 	3FA5

		//;TEST_62F08x_IR_Receive.C: 254: {
		//;TEST_62F08x_IR_Receive.C: 255: RB3 = ~RB3;
		LDWI 	8H 			//07B4 	0008
		MOVLB 	0H 			//07B5 	1020
		XORWR 	DH, 1H 		//07B6 	168D
		LJUMP 	7A5H 			//07B7 	3FA5

		//;TEST_62F08x_IR_Receive.C: 41: OSCCON = 0B01110001;
		LDWI 	71H 			//07B8 	0071
		ORG		07B9H
		MOVLB 	1H 			//07B9 	1021
		STR 	19H 			//07BA 	1099

		//;TEST_62F08x_IR_Receive.C: 44: INTCON = 0;
		CLRF 	BH 			//07BB 	118B

		//;TEST_62F08x_IR_Receive.C: 46: PORTA = 0B00000000;
		MOVLB 	0H 			//07BC 	1020
		CLRF 	CH 			//07BD 	118C

		//;TEST_62F08x_IR_Receive.C: 47: TRISA = 0B11111111;
		LDWI 	FFH 			//07BE 	00FF
		MOVLB 	1H 			//07BF 	1021
		STR 	CH 			//07C0 	108C
		ORG		07C1H

		//;TEST_62F08x_IR_Receive.C: 48: PORTB = 0B00000000;
		MOVLB 	0H 			//07C1 	1020
		CLRF 	DH 			//07C2 	118D

		//;TEST_62F08x_IR_Receive.C: 49: TRISB = 0B11110111;
		LDWI 	F7H 			//07C3 	00F7
		MOVLB 	1H 			//07C4 	1021
		STR 	DH 			//07C5 	108D

		//;TEST_62F08x_IR_Receive.C: 50: PORTC = 0B00000000;
		MOVLB 	0H 			//07C6 	1020
		CLRF 	EH 			//07C7 	118E

		//;TEST_62F08x_IR_Receive.C: 51: TRISC = 0B11111111;
		LDWI 	FFH 			//07C8 	00FF
		ORG		07C9H
		MOVLB 	1H 			//07C9 	1021
		STR 	EH 			//07CA 	108E

		//;TEST_62F08x_IR_Receive.C: 52: PORTD = 0B00000000;
		MOVLB 	0H 			//07CB 	1020
		CLRF 	FH 			//07CC 	118F

		//;TEST_62F08x_IR_Receive.C: 53: TRISD = 0B11111111;
		MOVLB 	1H 			//07CD 	1021
		STR 	FH 			//07CE 	108F

		//;TEST_62F08x_IR_Receive.C: 55: WPUA = 0B00000000;
		MOVLB 	3H 			//07CF 	1023
		CLRF 	CH 			//07D0 	118C
		ORG		07D1H

		//;TEST_62F08x_IR_Receive.C: 56: WPUB = 0B00000000;
		CLRF 	DH 			//07D1 	118D

		//;TEST_62F08x_IR_Receive.C: 57: WPUC = 0B00001000;
		LDWI 	8H 			//07D2 	0008
		STR 	EH 			//07D3 	108E

		//;TEST_62F08x_IR_Receive.C: 58: WPUD = 0B00000000;
		CLRF 	FH 			//07D4 	118F

		//;TEST_62F08x_IR_Receive.C: 60: WPDA = 0B00000000;
		MOVLB 	4H 			//07D5 	1024
		CLRF 	CH 			//07D6 	118C

		//;TEST_62F08x_IR_Receive.C: 61: WPDB = 0B00000000;
		CLRF 	DH 			//07D7 	118D

		//;TEST_62F08x_IR_Receive.C: 62: WPDC = 0B00000000;
		CLRF 	EH 			//07D8 	118E
		ORG		07D9H

		//;TEST_62F08x_IR_Receive.C: 63: WPDD = 0B00000000;
		CLRF 	FH 			//07D9 	118F

		//;TEST_62F08x_IR_Receive.C: 65: PSRC0 = 0B11111111;
		LDWI 	FFH 			//07DA 	00FF
		MOVLB 	2H 			//07DB 	1022
		STR 	1AH 			//07DC 	109A

		//;TEST_62F08x_IR_Receive.C: 69: PSRC1 = 0B11111111;
		STR 	1BH 			//07DD 	109B

		//;TEST_62F08x_IR_Receive.C: 73: PSINK0 = 0B11111111;
		MOVLB 	3H 			//07DE 	1023
		STR 	1AH 			//07DF 	109A

		//;TEST_62F08x_IR_Receive.C: 74: PSINK1 = 0B11111111;
		STR 	1BH 			//07E0 	109B
		ORG		07E1H

		//;TEST_62F08x_IR_Receive.C: 75: PSINK2 = 0B11111111;
		STR 	1CH 			//07E1 	109C

		//;TEST_62F08x_IR_Receive.C: 76: PSINK3 = 0B11111111;
		STR 	1DH 			//07E2 	109D

		//;TEST_62F08x_IR_Receive.C: 78: ANSELA = 0B00000000;
		CLRF 	17H 			//07E3 	1197
		RET 					//07E4 	1008

		//;TEST_62F08x_IR_Receive.C: 89: PCKEN |=0B00001000;
		MOVLB 	1H 			//07E5 	1021
		BSR 	1AH, 3H 			//07E6 	259A

		//;TEST_62F08x_IR_Receive.C: 93: TIM4CR1 =0B00000101;
		LDWI 	5H 			//07E7 	0005
		MOVLB 	2H 			//07E8 	1022
		ORG		07E9H
		STR 	11H 			//07E9 	1091

		//;TEST_62F08x_IR_Receive.C: 124: TIM4IER =0B00000001;
		LDWI 	1H 			//07EA 	0001
		STR 	12H 			//07EB 	1092

		//;TEST_62F08x_IR_Receive.C: 127: TIM4SR =0B00000000;
		CLRF 	13H 			//07EC 	1193

		//;TEST_62F08x_IR_Receive.C: 136: TIM4EGR =0B00000000;
		CLRF 	14H 			//07ED 	1194

		//;TEST_62F08x_IR_Receive.C: 141: TIM4CNTR=0;
		CLRF 	15H 			//07EE 	1195

		//;TEST_62F08x_IR_Receive.C: 143: TIM4PSCR=0B00000110;
		LDWI 	6H 			//07EF 	0006
		STR 	16H 			//07F0 	1096
		ORG		07F1H

		//;TEST_62F08x_IR_Receive.C: 148: TIM4ARR =140;
		LDWI 	8CH 			//07F1 	008C
		STR 	17H 			//07F2 	1097
		RET 					//07F3 	1008

		//;TEST_62F08x_IR_Receive.C: 161: EPS0=0B10000000;
		LDWI 	80H 			//07F4 	0080
		STR 	18H 			//07F5 	1098

		//;TEST_62F08x_IR_Receive.C: 163: EPS1=0B00000000;
		CLRF 	19H 			//07F6 	1199

		//;TEST_62F08x_IR_Receive.C: 166: ITYPE0 = 0B11000000;
		LDWI 	C0H 			//07F7 	00C0
		STR 	1EH 			//07F8 	109E
		ORG		07F9H

		//;TEST_62F08x_IR_Receive.C: 167: ITYPE1 = 0B00000000;
		CLRF 	1FH 			//07F9 	119F

		//;TEST_62F08x_IR_Receive.C: 169: EPIE0 = 0B00001000;
		LDWI 	8H 			//07FA 	0008
		MOVLB 	1H 			//07FB 	1021
		STR 	14H 			//07FC 	1094

		//;TEST_62F08x_IR_Receive.C: 171: INTCON = 0B01000000;
		LDWI 	40H 			//07FD 	0040
		STR 	BH 			//07FE 	108B
		RET 					//07FF 	1008
			END
