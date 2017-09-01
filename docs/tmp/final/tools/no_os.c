#include "plasma.h"

void OS_AsmInterruptInit(void);
void OS_AsmInterruptEnable(int);
void OS_InterruptMaskSet(int mask);


void putchar(int value)
{
   while((MemoryRead(IRQ_STATUS) & IRQ_UART_WRITE_AVAILABLE) == 0)
      ;
   MemoryWrite(UART_WRITE, value);
}

int puts(const char *string)
{
   while(*string)
   {
      if(*string == '\n')
         putchar('\r');
      putchar(*string++);
   }
   return 0;
}

void print_hex(unsigned long num)
{
   long i;
   unsigned long j;
   for(i = 28; i >= 0; i -= 4) 
   {
      j = (num >> i) & 0xf;
      if(j < 10) 
         putchar('0' + j);
      else 
         putchar('a' - 10 + j);
   }
}


// substituido pela nova rotina abaixo
// void OS_InterruptServiceRoutine(unsigned int status)
// {
//    (void)status;
//    putchar('I');
// }


void OS_InterruptServiceRoutine(unsigned int status)
{
    int c = 0;
    int i =0;

      c = MemoryRead(IRQ_MASK);

// status contem o valor em IRQ_STATUS

	if(status & c) {
	    c = MemoryRead(PERIF_EXP6);
        MemoryWrite(PERIF_EXP6_RAM_WRITE, c);
	    }
    
}


int kbhit(void)
{
   return MemoryRead(IRQ_STATUS) & PERIF_EXP6;
}


int getch(void)
{
   while(!kbhit()) ;
   return MemoryRead(PERIF_EXP6);
}


// int OS_AsmInterruptEnable(int enableInterrupt)
// {
//    return enableInterrupt;
// }

// void OS_AsmInterruptInit(void)
// {
// }


/******************************************/
//Plasma hardware dependent
void OS_InterruptMaskSet(int mask)
{
   MemoryWrite(IRQ_MASK, mask);
}


/******************************************/
void OS_Init(void)
{
   OS_AsmInterruptEnable(1);
//   OS_AsmInterruptInit();               //Patch interrupt vector
   OS_InterruptMaskSet(IRQ_PERIF_EXP6);
}
