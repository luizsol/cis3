#include "plasma.h"


void OS_Init(void);
int putchar(int value);
int puts(const char *string);


char *itoa10(unsigned long num)
{
   static char buf[5];
   int i;
   buf[3] = 0;
   for (i = 2; i >= 0; --i)
   {
      buf[i] = (char)((num % 10) + '0');
      num /= 10;
   }
   return buf;
}

int main()
{
   unsigned long number, final, result_fibo, sinal_interrup, i;
   
   number = 22;
   //final = 4;
   final = 38;
   sinal_interrup =0;
   OS_Init();
   
  for(i=18; i<=final; i++){
	  	MemoryWrite(H_INT, sinal_interrup);
   		MemoryWrite(PERIF_EXP6, i);
		
	puts ("the Fibonacci number of ");
	puts(itoa10(i));
	puts (" is ");
	
	   do{
	   		sinal_interrup = MemoryRead(H_INT); 
		}while (sinal_interrup !=5);
	   result_fibo = MemoryRead(PERIF_EXP6_RAM_WRITE);
	   
	   puts(itoa10(result_fibo));

	putchar ('\r');
	putchar ('\n');
	
	   sinal_interrup =0;
	   number++;
   }
   number =0;
   sinal_interrup =2;
   MemoryWrite(H_INT, sinal_interrup);
   return sinal_interrup;
}