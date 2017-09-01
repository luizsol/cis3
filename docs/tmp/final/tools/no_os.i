# 1 "no_os.c"
# 1 "plasma.h" 1
 













 












 



 
 
 
 
 

 




 
 




 
 
 


 



 






# 1 "no_os.c" 2


void OS_AsmInterruptInit(void);
void OS_AsmInterruptEnable(int);
void OS_InterruptMaskSet(int mask);


void putchar(int value)
{
   while(((*(volatile unsigned int*)( 0x20000020  ))  & 0x02 ) == 0)
      ;
   *(volatile unsigned int*)( 0x20000000  )=(  value ) ;
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


 
 
 
 
 
 


void OS_InterruptServiceRoutine(unsigned int status)
{
    int c = 0;
    int i =0;

      c = (*(volatile unsigned int*)( 0x20000010  )) ;

 

	if(status & c) {
	    c = (*(volatile unsigned int*)( 0x20000070  )) ;
        *(volatile unsigned int*)( 0x0000fff0  )=(  c ) ;
	    }
    
}


int kbhit(void)
{
   return (*(volatile unsigned int*)( 0x20000020  ))  & 0x20000070 ;
}


int getch(void)
{
   while(!kbhit()) ;
   return (*(volatile unsigned int*)( 0x20000070  )) ;
}


 
 
 
 

 
 
 


 
 
void OS_InterruptMaskSet(int mask)
{
   *(volatile unsigned int*)( 0x20000010  )=(  mask ) ;
}


 
void OS_Init(void)
{
   OS_AsmInterruptEnable(1);
 
   OS_InterruptMaskSet(0x20 );
}
