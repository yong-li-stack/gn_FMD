//Deviec:FT62F08X
//-----------------------Variable---------------------------------
		_TestBuff		EQU		75H
//-----------------------Variable END---------------------------------
		ORG		0000H
		MOVLP 	0H 			//0000 	0180
		LJUMP 	5H 			//0001 	3805
		ORG		0003H
		NOP 					//0003 	1000
		RETI 					//0004 	1009
		CLRF 	8H 			//0005 	1188
		MOVLP 	7H 			//0006 	0187
		LJUMP 	793H 			//0007 	3F93
		ORG		0793H
		MOVLB 	0H 			//0793 	1020
		LJUMP 	795H 			//0794 	3F95

		//;TEST_62F08x_MSCK.C: 167: POWER_INITIAL();
		LCALL 	7A4H 			//0795 	37A4
		MOVLP 	7H 			//0796 	0187

		//;TEST_62F08x_MSCK.C: 169: {
		//;TEST_62F08x_MSCK.C: 170: TestBuff = SlowTimeTest();
		LCALL 	7D1H 			//0797 	37D1
		MOVLP 	7H 			//0798 	0187
		LDR 	71H, 0H 			//0799 	1871
		STR 	76H 			//079A 	10F6
		ORG		079BH
		LDR 	70H, 0H 			//079B 	1870
		STR 	75H 			//079C 	10F5

		//;TEST_62F08x_MSCK.C: 172: _nop();
		NOP 					//079D 	1000

		//;TEST_62F08x_MSCK.C: 173: _nop();
		NOP 					//079E 	1000

		//;TEST_62F08x_MSCK.C: 174: _nop();
		NOP 					//079F 	1000

		//;TEST_62F08x_MSCK.C: 175: DelayMs(200);
		LDWI 	C8H 			//07A0 	00C8
		LCALL 	7E6H 			//07A1 	37E6
		MOVLP 	7H 			//07A2 	0187
		ORG		07A3H
		LJUMP 	797H 			//07A3 	3F97

		//;TEST_62F08x_MSCK.C: 49: OSCCON = 0B01110001;
		LDWI 	71H 			//07A4 	0071
		MOVLB 	1H 			//07A5 	1021
		STR 	19H 			//07A6 	1099

		//;TEST_62F08x_MSCK.C: 52: INTCON = 0;
		CLRF 	BH 			//07A7 	118B

		//;TEST_62F08x_MSCK.C: 54: PORTA = 0B00000000;
		MOVLB 	0H 			//07A8 	1020
		CLRF 	CH 			//07A9 	118C

		//;TEST_62F08x_MSCK.C: 55: TRISA = 0B11111111;
		LDWI 	FFH 			//07AA 	00FF
		ORG		07ABH
		MOVLB 	1H 			//07AB 	1021
		STR 	CH 			//07AC 	108C

		//;TEST_62F08x_MSCK.C: 56: PORTB = 0B00000000;
		MOVLB 	0H 			//07AD 	1020
		CLRF 	DH 			//07AE 	118D

		//;TEST_62F08x_MSCK.C: 57: TRISB = 0B11110111;
		LDWI 	F7H 			//07AF 	00F7
		MOVLB 	1H 			//07B0 	1021
		STR 	DH 			//07B1 	108D

		//;TEST_62F08x_MSCK.C: 58: PORTC = 0B00000000;
		MOVLB 	0H 			//07B2 	1020
		ORG		07B3H
		CLRF 	EH 			//07B3 	118E

		//;TEST_62F08x_MSCK.C: 59: TRISC = 0B11111111;
		LDWI 	FFH 			//07B4 	00FF
		MOVLB 	1H 			//07B5 	1021
		STR 	EH 			//07B6 	108E

		//;TEST_62F08x_MSCK.C: 60: PORTD = 0B00000000;
		MOVLB 	0H 			//07B7 	1020
		CLRF 	FH 			//07B8 	118F

		//;TEST_62F08x_MSCK.C: 61: TRISD = 0B11111111;
		MOVLB 	1H 			//07B9 	1021
		STR 	FH 			//07BA 	108F
		ORG		07BBH

		//;TEST_62F08x_MSCK.C: 63: WPUA = 0B00000000;
		MOVLB 	3H 			//07BB 	1023
		CLRF 	CH 			//07BC 	118C

		//;TEST_62F08x_MSCK.C: 64: WPUB = 0B00000000;
		CLRF 	DH 			//07BD 	118D

		//;TEST_62F08x_MSCK.C: 65: WPUC = 0B00001000;
		LDWI 	8H 			//07BE 	0008
		STR 	EH 			//07BF 	108E

		//;TEST_62F08x_MSCK.C: 66: WPUD = 0B00000000;
		CLRF 	FH 			//07C0 	118F

		//;TEST_62F08x_MSCK.C: 68: WPDA = 0B00000000;
		MOVLB 	4H 			//07C1 	1024
		CLRF 	CH 			//07C2 	118C
		ORG		07C3H

		//;TEST_62F08x_MSCK.C: 69: WPDB = 0B00000000;
		CLRF 	DH 			//07C3 	118D

		//;TEST_62F08x_MSCK.C: 70: WPDC = 0B00000000;
		CLRF 	EH 			//07C4 	118E

		//;TEST_62F08x_MSCK.C: 71: WPDD = 0B00000000;
		CLRF 	FH 			//07C5 	118F

		//;TEST_62F08x_MSCK.C: 73: PSRC0 = 0B11111111;
		LDWI 	FFH 			//07C6 	00FF
		MOVLB 	2H 			//07C7 	1022
		STR 	1AH 			//07C8 	109A

		//;TEST_62F08x_MSCK.C: 77: PSRC1 = 0B11111111;
		STR 	1BH 			//07C9 	109B

		//;TEST_62F08x_MSCK.C: 81: PSINK0 = 0B11111111;
		MOVLB 	3H 			//07CA 	1023
		ORG		07CBH
		STR 	1AH 			//07CB 	109A

		//;TEST_62F08x_MSCK.C: 82: PSINK1 = 0B11111111;
		STR 	1BH 			//07CC 	109B

		//;TEST_62F08x_MSCK.C: 83: PSINK2 = 0B11111111;
		STR 	1CH 			//07CD 	109C

		//;TEST_62F08x_MSCK.C: 84: PSINK3 = 0B11111111;
		STR 	1DH 			//07CE 	109D

		//;TEST_62F08x_MSCK.C: 86: ANSELA = 0B00000000;
		CLRF 	17H 			//07CF 	1197
		RET 					//07D0 	1008

		//;TEST_62F08x_MSCK.C: 147: PCKEN |= 0B00000100;
		MOVLB 	1H 			//07D1 	1021
		BSR 	1AH, 2H 			//07D2 	251A
		ORG		07D3H

		//;TEST_62F08x_MSCK.C: 148: TCKSRC= 0B00010000;
		LDWI 	10H 			//07D3 	0010
		MOVLB 	6H 			//07D4 	1026
		STR 	1FH 			//07D5 	109F

		//;TEST_62F08x_MSCK.C: 149: T2CEN = 1;
		BSR 	CH, 0H 			//07D6 	240C

		//;TEST_62F08x_MSCK.C: 150: CKMAVG = 1;
		MOVLB 	8H 			//07D7 	1028
		BSR 	1DH, 1H 			//07D8 	249D

		//;TEST_62F08x_MSCK.C: 152: CKCNTI = 1;
		BSR 	1DH, 0H 			//07D9 	241D

		//;TEST_62F08x_MSCK.C: 153: _nop();
		NOP 					//07DA 	1000
		ORG		07DBH

		//;TEST_62F08x_MSCK.C: 154: while(!CKMIF);
		MOVLB 	0H 			//07DB 	1020
		BTSS 	11H, 1H 		//07DC 	2C91
		LJUMP 	7DBH 			//07DD 	3FDB

		//;TEST_62F08x_MSCK.C: 155: CKMIF=0;
		BCR 	11H, 1H 			//07DE 	2091

		//;TEST_62F08x_MSCK.C: 156: return (unsigned int)(SOSCPRH<<8|SOSCPRL);
		MOVLB 	8H 			//07DF 	1028
		LDR 	1FH, 0H 			//07E0 	181F
		STR 	71H 			//07E1 	10F1
		CLRF 	70H 			//07E2 	11F0
		ORG		07E3H
		LDR 	1EH, 0H 			//07E3 	181E
		IORWR 	70H, 1H 		//07E4 	14F0
		RET 					//07E5 	1008
		STR 	72H 			//07E6 	10F2

		//;TEST_62F08x_MSCK.C: 111: unsigned char a,b;
		//;TEST_62F08x_MSCK.C: 112: for(a=0;a<Time;a++)
		CLRF 	73H 			//07E7 	11F3
		LDR 	72H, 0H 			//07E8 	1872
		SUBWR 	73H, 0H 		//07E9 	1273
		BTSC 	3H, 0H 			//07EA 	2803
		ORG		07EBH
		RET 					//07EB 	1008

		//;TEST_62F08x_MSCK.C: 113: {
		//;TEST_62F08x_MSCK.C: 114: for(b=0;b<5;b++)
		CLRF 	74H 			//07EC 	11F4

		//;TEST_62F08x_MSCK.C: 115: {
		//;TEST_62F08x_MSCK.C: 116: DelayUs(197);
		LDWI 	C5H 			//07ED 	00C5
		LCALL 	7F7H 			//07EE 	37F7
		MOVLP 	7H 			//07EF 	0187
		LDWI 	5H 			//07F0 	0005
		INCR 	74H, 1H 		//07F1 	1AF4
		SUBWR 	74H, 0H 		//07F2 	1274
		ORG		07F3H
		BTSS 	3H, 0H 			//07F3 	2C03
		LJUMP 	7EDH 			//07F4 	3FED
		INCR 	73H, 1H 		//07F5 	1AF3
		LJUMP 	7E8H 			//07F6 	3FE8
		STR 	70H 			//07F7 	10F0

		//;TEST_62F08x_MSCK.C: 97: unsigned char a;
		//;TEST_62F08x_MSCK.C: 98: for(a=0;a<Time;a++)
		CLRF 	71H 			//07F8 	11F1
		LDR 	70H, 0H 			//07F9 	1870
		SUBWR 	71H, 0H 		//07FA 	1271
		ORG		07FBH
		BTSC 	3H, 0H 			//07FB 	2803
		RET 					//07FC 	1008

		//;TEST_62F08x_MSCK.C: 99: {
		//;TEST_62F08x_MSCK.C: 100: _nop();
		NOP 					//07FD 	1000
		INCR 	71H, 1H 		//07FE 	1AF1
		LJUMP 	7F9H 			//07FF 	3FF9
			END
