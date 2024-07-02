//Deviec:FT62F08X
//-----------------------Variable---------------------------------
		_adcData		EQU		7CH
		_theVoltage		EQU		24H
//-----------------------Variable END---------------------------------
		ORG		0000H
		MOVLP 	0H 			//0000 	0180
		LJUMP 	5H 			//0001 	3805
		ORG		0003H
		NOP 					//0003 	1000
		RETI 					//0004 	1009
		CLRF 	8H 			//0005 	1188
		MOVLP 	7H 			//0006 	0187
		LJUMP 	742H 			//0007 	3F42
		ORG		0742H
		CLRF 	7CH 			//0742 	11FC
		CLRF 	7DH 			//0743 	11FD
		CLRF 	24H 			//0744 	11A4
		CLRF 	25H 			//0745 	11A5
		MOVLB 	0H 			//0746 	1020
		LJUMP 	748H 			//0747 	3F48

		//;TEST_62F08x_ADC.C: 262: POWER_INITIAL();
		LCALL 	77CH 			//0748 	377C
		MOVLP 	7H 			//0749 	0187
		ORG		074AH

		//;TEST_62F08x_ADC.C: 263: ADC_INITIAL();
		LCALL 	7CAH 			//074A 	37CA
		MOVLP 	7H 			//074B 	0187

		//;TEST_62F08x_ADC.C: 265: while(1)
		//;TEST_62F08x_ADC.C: 266: {
		//;TEST_62F08x_ADC.C: 267: adcData = GET_ADC_DATA(0);
		LDWI 	0H 			//074C 	0000
		LCALL 	7E0H 			//074D 	37E0
		MOVLP 	7H 			//074E 	0187
		LDR 	73H, 0H 			//074F 	1873
		STR 	7DH 			//0750 	10FD
		LDR 	72H, 0H 			//0751 	1872
		ORG		0752H
		STR 	7CH 			//0752 	10FC

		//;TEST_62F08x_ADC.C: 268: theVoltage = (unsigned long)adcData*2*1000/4096;
		LDR 	7CH, 0H 			//0753 	187C
		STR 	70H 			//0754 	10F0
		LDR 	7DH, 0H 			//0755 	187D
		STR 	71H 			//0756 	10F1
		LDWI 	3H 			//0757 	0003
		CLRF 	72H 			//0758 	11F2
		CLRF 	73H 			//0759 	11F3
		ORG		075AH
		LSLF 	70H, 1H 		//075A 	05F0
		RLR 	71H, 1H 			//075B 	1DF1
		RLR 	72H, 1H 			//075C 	1DF2
		RLR 	73H, 1H 			//075D 	1DF3
		CLRF 	77H 			//075E 	11F7
		CLRF 	76H 			//075F 	11F6
		STR 	75H 			//0760 	10F5
		LDWI 	E8H 			//0761 	00E8
		ORG		0762H
		STR 	74H 			//0762 	10F4
		LCALL 	7A5H 			//0763 	37A5
		MOVLP 	7H 			//0764 	0187
		LDR 	70H, 0H 			//0765 	1870
		MOVLB 	0H 			//0766 	1020
		STR 	20H 			//0767 	10A0
		LDR 	71H, 0H 			//0768 	1871
		STR 	21H 			//0769 	10A1
		ORG		076AH
		LDR 	72H, 0H 			//076A 	1872
		STR 	22H 			//076B 	10A2
		LDR 	73H, 0H 			//076C 	1873
		STR 	23H 			//076D 	10A3
		LDWI 	CH 			//076E 	000C
		LSRF 	23H, 1H 		//076F 	06A3
		RRR 	22H, 1H 			//0770 	1CA2
		RRR 	21H, 1H 			//0771 	1CA1
		ORG		0772H
		RRR 	20H, 1H 			//0772 	1CA0
		DECRSZ 	9H, 1H 		//0773 	1B89
		LJUMP 	76FH 			//0774 	3F6F
		LDR 	21H, 0H 			//0775 	1821
		STR 	25H 			//0776 	10A5
		LDR 	20H, 0H 			//0777 	1820
		STR 	24H 			//0778 	10A4

		//;TEST_62F08x_ADC.C: 269: _nop();
		NOP 					//0779 	1000
		ORG		077AH

		//;TEST_62F08x_ADC.C: 270: _nop();
		NOP 					//077A 	1000
		LJUMP 	74CH 			//077B 	3F4C

		//;TEST_62F08x_ADC.C: 40: OSCCON = 0B01110001;
		LDWI 	71H 			//077C 	0071
		MOVLB 	1H 			//077D 	1021
		STR 	19H 			//077E 	1099

		//;TEST_62F08x_ADC.C: 47: PCKEN |=0B00000001;
		BSR 	1AH, 0H 			//077F 	241A

		//;TEST_62F08x_ADC.C: 49: INTCON = 0;
		CLRF 	BH 			//0780 	118B

		//;TEST_62F08x_ADC.C: 51: PORTA = 0B00000000;
		MOVLB 	0H 			//0781 	1020
		ORG		0782H
		CLRF 	CH 			//0782 	118C

		//;TEST_62F08x_ADC.C: 52: TRISA = 0B11111111;
		LDWI 	FFH 			//0783 	00FF
		MOVLB 	1H 			//0784 	1021
		STR 	CH 			//0785 	108C

		//;TEST_62F08x_ADC.C: 53: PORTB = 0B00000000;
		MOVLB 	0H 			//0786 	1020
		CLRF 	DH 			//0787 	118D

		//;TEST_62F08x_ADC.C: 54: TRISB = 0B11111111;
		MOVLB 	1H 			//0788 	1021
		STR 	DH 			//0789 	108D
		ORG		078AH

		//;TEST_62F08x_ADC.C: 55: PORTC = 0B00000000;
		MOVLB 	0H 			//078A 	1020
		CLRF 	EH 			//078B 	118E

		//;TEST_62F08x_ADC.C: 56: TRISC = 0B11111111;
		MOVLB 	1H 			//078C 	1021
		STR 	EH 			//078D 	108E

		//;TEST_62F08x_ADC.C: 57: PORTD = 0B00000000;
		MOVLB 	0H 			//078E 	1020
		CLRF 	FH 			//078F 	118F

		//;TEST_62F08x_ADC.C: 58: TRISD = 0B11111111;
		MOVLB 	1H 			//0790 	1021
		STR 	FH 			//0791 	108F
		ORG		0792H

		//;TEST_62F08x_ADC.C: 60: WPUA = 0B00000000;
		MOVLB 	3H 			//0792 	1023
		CLRF 	CH 			//0793 	118C

		//;TEST_62F08x_ADC.C: 61: WPUB = 0B00000000;
		CLRF 	DH 			//0794 	118D

		//;TEST_62F08x_ADC.C: 62: WPUC = 0B00000000;
		CLRF 	EH 			//0795 	118E

		//;TEST_62F08x_ADC.C: 63: WPUD = 0B00000000;
		CLRF 	FH 			//0796 	118F

		//;TEST_62F08x_ADC.C: 65: WPDA = 0B00000000;
		MOVLB 	4H 			//0797 	1024
		CLRF 	CH 			//0798 	118C

		//;TEST_62F08x_ADC.C: 66: WPDB = 0B00000000;
		CLRF 	DH 			//0799 	118D
		ORG		079AH

		//;TEST_62F08x_ADC.C: 67: WPDC = 0B00000000;
		CLRF 	EH 			//079A 	118E

		//;TEST_62F08x_ADC.C: 68: WPDD = 0B00000000;
		CLRF 	FH 			//079B 	118F

		//;TEST_62F08x_ADC.C: 70: PSRC0 = 0B11111111;
		MOVLB 	2H 			//079C 	1022
		STR 	1AH 			//079D 	109A

		//;TEST_62F08x_ADC.C: 74: PSRC1 = 0B11111111;
		STR 	1BH 			//079E 	109B

		//;TEST_62F08x_ADC.C: 78: PSINK0 = 0B11111111;
		MOVLB 	3H 			//079F 	1023
		STR 	1AH 			//07A0 	109A

		//;TEST_62F08x_ADC.C: 79: PSINK1 = 0B11111111;
		STR 	1BH 			//07A1 	109B
		ORG		07A2H

		//;TEST_62F08x_ADC.C: 80: PSINK2 = 0B11111111;
		STR 	1CH 			//07A2 	109C

		//;TEST_62F08x_ADC.C: 81: PSINK3 = 0B11111111;
		STR 	1DH 			//07A3 	109D
		RET 					//07A4 	1008
		CLRF 	78H 			//07A5 	11F8
		CLRF 	79H 			//07A6 	11F9
		CLRF 	7AH 			//07A7 	11FA
		CLRF 	7BH 			//07A8 	11FB
		BTSS 	70H, 0H 		//07A9 	2C70
		ORG		07AAH
		LJUMP 	7B3H 			//07AA 	3FB3
		LDR 	74H, 0H 			//07AB 	1874
		ADDWR 	78H, 1H 		//07AC 	17F8
		LDR 	75H, 0H 			//07AD 	1875
		ADDWFC 	79H, 1H 		//07AE 	0DF9
		LDR 	76H, 0H 			//07AF 	1876
		ADDWFC 	7AH, 1H 		//07B0 	0DFA
		LDR 	77H, 0H 			//07B1 	1877
		ORG		07B2H
		ADDWFC 	7BH, 1H 		//07B2 	0DFB
		LSLF 	74H, 1H 		//07B3 	05F4
		RLR 	75H, 1H 			//07B4 	1DF5
		RLR 	76H, 1H 			//07B5 	1DF6
		RLR 	77H, 1H 			//07B6 	1DF7
		LSRF 	73H, 1H 		//07B7 	06F3
		RRR 	72H, 1H 			//07B8 	1CF2
		RRR 	71H, 1H 			//07B9 	1CF1
		ORG		07BAH
		RRR 	70H, 1H 			//07BA 	1CF0
		LDR 	73H, 0H 			//07BB 	1873
		IORWR 	72H, 0H 		//07BC 	1472
		IORWR 	71H, 0H 		//07BD 	1471
		IORWR 	70H, 0H 		//07BE 	1470
		BTSS 	3H, 2H 			//07BF 	2D03
		LJUMP 	7A9H 			//07C0 	3FA9
		LDR 	7BH, 0H 			//07C1 	187B
		ORG		07C2H
		STR 	73H 			//07C2 	10F3
		LDR 	7AH, 0H 			//07C3 	187A
		STR 	72H 			//07C4 	10F2
		LDR 	79H, 0H 			//07C5 	1879
		STR 	71H 			//07C6 	10F1
		LDR 	78H, 0H 			//07C7 	1878
		STR 	70H 			//07C8 	10F0
		RET 					//07C9 	1008
		ORG		07CAH

		//;TEST_62F08x_ADC.C: 106: ANSELA = 0B00000001;
		LDWI 	1H 			//07CA 	0001
		STR 	17H 			//07CB 	1097

		//;TEST_62F08x_ADC.C: 108: ADCON1 = 0B11100100;
		LDWI 	E4H 			//07CC 	00E4
		MOVLB 	1H 			//07CD 	1021
		STR 	1EH 			//07CE 	109E

		//;TEST_62F08x_ADC.C: 135: ADCON0 = 0B00000000;
		CLRF 	1DH 			//07CF 	119D

		//;TEST_62F08x_ADC.C: 167: ADCON2 = 0B01000000;
		LDWI 	40H 			//07D0 	0040
		STR 	1FH 			//07D1 	109F
		ORG		07D2H

		//;TEST_62F08x_ADC.C: 195: ADCON3 = 0B00000000;
		MOVLB 	8H 			//07D2 	1028
		CLRF 	1AH 			//07D3 	119A

		//;TEST_62F08x_ADC.C: 222: ADDLY = 0B00000000;
		MOVLB 	0H 			//07D4 	1020
		CLRF 	1FH 			//07D5 	119F

		//;TEST_62F08x_ADC.C: 227: ADCMPH = 0B00000000;
		MOVLB 	8H 			//07D6 	1028
		CLRF 	1BH 			//07D7 	119B

		//;TEST_62F08x_ADC.C: 230: ADCAL=1;
		MOVLB 	1H 			//07D8 	1021
		BSR 	1DH, 3H 			//07D9 	259D
		ORG		07DAH

		//;TEST_62F08x_ADC.C: 231: _nop();
		NOP 					//07DA 	1000

		//;TEST_62F08x_ADC.C: 232: while(ADCAL);
		MOVLB 	1H 			//07DB 	1021
		BTSC 	1DH, 3H 		//07DC 	299D
		LJUMP 	7DBH 			//07DD 	3FDB

		//;TEST_62F08x_ADC.C: 234: ADON=1;
		BSR 	1DH, 0H 			//07DE 	241D
		RET 					//07DF 	1008
		STR 	74H 			//07E0 	10F4

		//;TEST_62F08x_ADC.C: 244: ADCON0 &= 0B00001111;
		LDWI 	FH 			//07E1 	000F
		ORG		07E2H
		MOVLB 	1H 			//07E2 	1021
		ANDWR 	1DH, 1H 		//07E3 	159D

		//;TEST_62F08x_ADC.C: 245: ADCON0 |= adcChannel<<4;
		SWAPR 	74H, 0H 		//07E4 	1E74
		ANDWI 	F0H 			//07E5 	09F0
		IORWR 	1DH, 1H 		//07E6 	149D

		//;TEST_62F08x_ADC.C: 246: DelayUs(40);
		LDWI 	28H 			//07E7 	0028
		LCALL 	7F7H 			//07E8 	37F7
		MOVLP 	7H 			//07E9 	0187
		ORG		07EAH

		//;TEST_62F08x_ADC.C: 247: GO = 1;
		MOVLB 	1H 			//07EA 	1021
		BSR 	1DH, 1H 			//07EB 	249D

		//;TEST_62F08x_ADC.C: 248: _nop();
		NOP 					//07EC 	1000

		//;TEST_62F08x_ADC.C: 249: _nop();
		NOP 					//07ED 	1000

		//;TEST_62F08x_ADC.C: 250: while(GO);
		MOVLB 	1H 			//07EE 	1021
		BTSC 	1DH, 1H 		//07EF 	289D
		LJUMP 	7EEH 			//07F0 	3FEE

		//;TEST_62F08x_ADC.C: 252: return (unsigned int)(ADRESH<<8|ADRESL);
		LDR 	1CH, 0H 			//07F1 	181C
		ORG		07F2H
		STR 	73H 			//07F2 	10F3
		CLRF 	72H 			//07F3 	11F2
		LDR 	1BH, 0H 			//07F4 	181B
		IORWR 	72H, 1H 		//07F5 	14F2
		RET 					//07F6 	1008
		STR 	70H 			//07F7 	10F0

		//;TEST_62F08x_ADC.C: 91: unsigned char a;
		//;TEST_62F08x_ADC.C: 92: for(a=0;a<Time;a++)
		CLRF 	71H 			//07F8 	11F1
		LDR 	70H, 0H 			//07F9 	1870
		ORG		07FAH
		SUBWR 	71H, 0H 		//07FA 	1271
		BTSC 	3H, 0H 			//07FB 	2803
		RET 					//07FC 	1008

		//;TEST_62F08x_ADC.C: 93: {
		//;TEST_62F08x_ADC.C: 94: _nop();
		NOP 					//07FD 	1000
		INCR 	71H, 1H 		//07FE 	1AF1
		LJUMP 	7F9H 			//07FF 	3FF9
			END
