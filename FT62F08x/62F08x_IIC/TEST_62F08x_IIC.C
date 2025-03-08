//********************************************************* 
/*  文件名: TEST_62F08x_IIC.c
*	功能：  FT62F08x-IIC功能演示
*   IC:    FT62F088 LQFP32
*   内部：  16M
*	empno: 500                                
*   说明：此演示程序位62F08x_IIC的演示程序.
*		   该程序把0x55写入(24C02)0x12地址,后读0x12地址的值，判断是否写入成功   
*		   
*   参考原理图 TEST_62F08x_sch.pdf
*/
//*********************************************************
#include "SYSCFG.h"
//*********************************************************
//***********************宏定义*****************************
#define  unchar     unsigned char 
#define  unint      unsigned int
#define  unlong     unsigned long

#define  DemoPortOut	RB3   
#define  DemoPortIn		RC3

//volatile  unchar mydata; //全局查看变量定义

volatile unchar IICReadData;



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
	OSCCON = 0B01110001;	//WDT 32KHZ IRCF=111=16MHZ
					 		//Bit0=1,系统时钟为内部振荡器
					 		//Bit0=0,时钟源由FOSC<2：0>决定即编译选项时选择
	INTCON = 0;  			//暂禁止所有中断
    
	PORTA = 0B00000000;		
	TRISA = 0B00000000;		//PA输入输出 0-输出 1-输入
	PORTB = 0B00000000;		
	TRISB = 0B00000000;		//PB输入输出 0-输出 1-输入							
	PORTC = 0B00000000; 	
	TRISC = 0B00000000;		//PC输入输出 0-输出 1-输入  	
    PORTD = 0B00000000;		
	TRISD = 0B00000000;		//PD输入输出 0-输出 1-输入
	
	WPUA = 0B00000000;     	//PA端口上拉控制 1-开上拉 0-关上拉
	WPUB = 0B00000000;     	//PB端口上拉控制 1-开上拉 0-关上拉
	WPUC = 0B00000000;     	//PC端口上拉控制 1-开上拉 0-关上拉
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
/*------------------------------------------------- 
 *	函数名称：DelayUs
 *	功能：   短延时函数 --16M-2T--大概快1%左右.
 *	输入参数：Time延时时间长度 延时时长Time Us
 *	返回参数：无 
 -------------------------------------------------*/
void DelayUs(unsigned char Time)
{
	unsigned char a;
	for(a=0;a<Time;a++)
	{
		NOP();
	}
}                  
/*-------------------------------------------------
 *	函数名称：DelayMs
 *	功能：   短延时函数
 *	输入参数：Time延时时间长度 延时时长Time ms
 *	返回参数：无 
 -------------------------------------------------*/
void DelayMs(unsigned char Time)
{
	unsigned char a,b;
	for(a=0;a<Time;a++)
	{
		for(b=0;b<5;b++)
		{
		 	DelayUs(197); //快1%
		}
	}
}
/*-------------------------------------------------
 *	函数名称：DelayS
 *	功能：   短延时函数
 *	输入参数：Time延时时间长度 延时时长Time S
 *	返回参数：无 
 -------------------------------------------------*/
void DelayS(unsigned char Time)
{
	unsigned char a,b;
	for(a=0;a<Time;a++)
	{
		for(b=0;b<10;b++)
		{
		 	DelayMs(100); 
		}
	}
}
/*-------------------------------------------------
 *  函数名：IIC_READ
 *	功能：  IIC读出特定位置的数据
 *  输入：  address
 *  输出：  读出address存储器里面的数据iicdata
 --------------------------------------------------*/
 unsigned char IIC_READ(unsigned char address)
{
	unsigned char iicdata = 0;
 	while(!IICTXE);
	I2CDR = address;	
    I2CCMD= 0B00000100;
    while(!IICTXE);
	I2CCMD= 0B00000011;
    while(!IICRXNE);
    iicdata =I2CDR;
    return iicdata;
}
 /*-------------------------------------------------
 *  函数名：IIC_WRITE
 *	功能：  IIC把数据data写入特定的位置address
 *  输入：  address，data
 *  输出：  无
 --------------------------------------------------*/
void IIC_WRITE(unsigned char address,unsigned char data)
{
	while(!IICTXE);
	I2CDR = address;
    I2CCMD= 0B00000000;
    while(!IICTXE);
    I2CDR = data;
    I2CCMD= 0B00000010;
    while(!IICTXE);
}
/*-------------------------------------------------
 *  函数名：IIC_INITIAL
 *	功能：  初始化IIC
 *  输入：  
 *  输出：  无
 --------------------------------------------------*/
void IIC_INITIAL(void)
{
	PCKEN	 |=0B01000000; //使能I2C模块时钟
    
    ODCON0   |=0B00000010;
	I2CCR1 	=0B00000001;
 	//BIT4:	主机模式下地址格式
		//0：发送7位地址格式；
		//1：发送10位地址格式；
	//BIT3:	从机模式下地址格式
		//0：响应7位地址格式；
		//1：响应10位地址格式；
	//BIT2:	保留位，读0
	//BIT1:	I2C通信速度模式
		//0：标准模式（100KHz）；
		//1：快速模式（400KHz）；
	//BIT0:	主从机模式
		//0：从机模式；
		//1：主机模式；
  
	I2CCR2	=0B00000000;
	I2CCR3	=0B00000000;
	//BIT0:I2C模块使能
		//0：禁用I2C模块；
		//1：使能I2C模块，相应的IO管脚会用作I2C的功能；

    I2COARL	=0B01010000;   //从器件地址A0
	I2COARH	=0B00000000;   //从机地址高位
	I2CFREQ	=0B00010000;   //外设时钟16M
	//外设时钟频率
	//6’b000000：不允许；
	//6’b000001：1MHz；
	//6’b000010：2MHz；
	//…
	//6’b011000：24MHz；
	//Higher values：不允许；

	I2CCCRL	=0B01010000;   //SCL周期=2*CCR*Fmaster
	I2CCCRH	=0B00000000;   //
	I2CITR	=0B00000000;   //不使能IIC中断
	//I2CSR1	=0B00000000;   //
    
	//I2CSR2	=0B00000000;   //
	//I2CSR3	=0B00000000;
    
    ENABLE=1;  				//使能I2C
    
 }
/*-------------------------------------------------
 *  函数名: main 
 *	功能：  主函数
 *  输入：  无
 *  输出：  无
 --------------------------------------------------*/
void main(void)
{
	POWER_INITIAL();		//系统初始化
    IIC_INITIAL();
    
    IIC_WRITE(0x12,0x55); 				//0x55写入地址0x12
    DelayMs(10);
	IICReadData = IIC_READ(0x12); 		//读取0x12地址EEPROM值 
    
	while(1)
	{	
      NOP();
	}
}
