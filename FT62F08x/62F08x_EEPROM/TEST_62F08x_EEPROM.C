//********************************************************* 
/*  文件名：TEST_62F08x_EEPROM.c
*	功能：  FT62F08x-EEPROM功能演示
*   IC:    FT62F088 LQFP32
*   内部：   16M
*	empno: 500                                  
*   说明：  	此演示程序为62F08x_EEPROM的演示程序.
*		  	把0x55写入地址0x13,再读出该值

*		
*	参考原理图 TEST_62F08x_sch.pdf
*/  

//*********************************************************
#include "SYSCFG.h"
//*********************************************************
//宏定义****************************************************
#define 	unchar     	unsigned char 
#define 	unint         unsigned int
#define  	unlong 		unsigned long

volatile  unchar EEReadData; 


/*-------------------------------------------------
 *  函数名： interrupt ISR
 *	功能：  中断处理，包括定时器0中断和外部中断
 *  输入：  无
 *  输出：  无
 --------------------------------------------------*/
void interrupt ISR(void)            	//PIC_HI-TECH使用
{ 

}
/*-------------------------------------------------
 *  函数名：POWER_INITIAL
 *	功能：  上电系统初始化
 *  输入：  无
 *  输出：  无
 --------------------------------------------------*/	
void POWER_INITIAL (void) 
{ 
	OSCCON = 0B01110001;	//WDT 32KHZ IRCF=111=16MHZ/2
					 		//Bit0=1,系统时钟为内部振荡器
					 		//Bit0=0,时钟源由FOSC<2：0>决定即编译选项时选择
	INTCON = 0;  			//暂禁止所有中断
    
	PORTA = 0B00000000;		
	TRISA = 0B11111111;		//PA输入输出 0-输出 1-输入
	PORTB = 0B00000000;		
	TRISB = 0B11110111;		//PB输入输出 0-输出 1-输入							
	PORTC = 0B00000000; 	
	TRISC = 0B11111111;		//PC输入输出 0-输出 1-输入  	
    PORTD = 0B00000000;		
	TRISD = 0B11111111;		//PD输入输出 0-输出 1-输入
	
	WPUA = 0B00000000;     	//PA端口上拉控制 1-开上拉 0-关上拉
	WPUB = 0B00000000;     	//PB端口上拉控制 1-开上拉 0-关上拉
	WPUC = 0B00001000;     	//PC端口上拉控制 1-开上拉 0-关上拉
	WPUD = 0B00000000;     	//PD端口上拉控制 1-开上拉 0-关上拉
    
    WPDA = 0B00000000;     	//PA端口上拉控制 1-开下拉 0-关下拉
	WPDB = 0B00000000;     	//PB端口上拉控制 1-开下拉 0-关下拉
	WPDC = 0B00000000;     	//PC端口上拉控制 1-开下拉 0-关下拉
	WPDD = 0B00000000;     	//PD端口上拉控制 1-开下拉 0-关下拉
    
    PSRC0  = 0B11111111;  	//PORTA,PORTB源电流设置最大
    //BIT7~BIT6:PORTB[7:4]源电流能力控制,BIT5~BIT4:PORTB[3:0]源电流能力控制 
    //BIT3~BIT2:PORTA[7:4]源电流能力控制,BIT1~BIT0:PORTA[3:0]源电流能力控制
    
    PSRC1  = 0B11111111;    //PORTC,PORTD源电流设置最大    
    //BIT7~BIT6:PORTD[7:4]源电流能力控制,BIT5~BIT4:PORTD[3:0]源电流能力控制 
    //BIT3~BIT2:PORTC[7:4]源电流能力控制,BIT1~BIT0:PORTC[3:0]源电流能力控制
    
    PSINK0 = 0B11111111;  	//PORTA灌电流设置最大 0:最小，1:最大
    PSINK1 = 0B11111111; 	//PORTB灌电流设置最大 0:最小，1:最大
    PSINK2 = 0B11111111;	//PORTC灌电流设置最大 0:最小，1:最大
    PSINK3 = 0B11111111;	//PORTD灌电流设置最大 0:最小，1:最大
	
    ANSELA = 0B00000000;    //全为数字管脚
}
/*----------------------------------------------------
 *	函数名称：EEPROMread
 *	功能：   读EEPROM数据
 *	输入参数：EEAddr 需读取数据的地址
 *  返回参数；ReEEPROMread 对应地址读出的数据
 ----------------------------------------------------*/
unchar EEPROMread(unchar EEAddr)
{
	unchar ReEEPROMread;
    
    DRDEN=1;    
    NOP();
    NOP();      
   	EEADRL = EEAddr;
   
    CFGS =0;
    EEPGD=0; 
   	RD = 1;
    
	ReEEPROMread = EEDATL; 
    DRDEN=0;    	
	return ReEEPROMread;
}
/*---------------------------------------------------- 
 *	函数名称：EEPROMwrite
 *	功能：   写数据到EEPROM
 *	输入参数：EEAddr 需要写入数据的地址
 *	        Data 需要写入的数据
 *	返回参数：无
 ----------------------------------------------------*/
void EEPROMwrite(unchar EEAddr,unchar Data)
{
	
	while(GIE)					//等待GIE为0
		{GIE = 0;	}					//写数据必须关闭中断
	EEADRL = EEAddr; 	 			//EEPROM的地址
	EEDATL = Data;		 			//EEPROM的写数据  
      
    CFGS =0;                        //访问EEPROM存储器
    EEPGD=0;                        //
    
    WREN=1;                         //写使能
    
    EEIF = 0;
    EECON2=0x55;
    EECON2=0xAA;

	WR = 1;							//置位WR启动编程
    NOP();
    NOP();
    NOP();
    NOP();
	while(WR);      				//等待EE写入完成
    WREN=0;
	GIE = 1;
}

/*-------------------------------------------------
 *  函数名:  main
 *	功能：  主函数
 *  输入：  无
 *  输出：  无
 --------------------------------------------------*/
void main(void)
{
	POWER_INITIAL();				//系统初始化
	EEPROMwrite(0xff,0xaa);	
	EEPROMwrite(0xff,0xaa);			//在未使用到的随意一个地址写两次0xaa	

	EEPROMwrite(0x13,0x55); 		//0x55写入地址0x13

	EEReadData = EEPROMread(0x13); 	//读取0x13地址EEPROM值 
    
   	while(1) 
	{
		NOP();
	}
}


