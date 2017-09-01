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


void fibo (int data_in,  int *data_o)
{
   int n_anterior1,n_anterior2,n_fibonacci;
   int n,n_max; 
  

	n_anterior1=1; /*f(n-1) o número de fibonacci requer da suma dos dois valores anteriores */
  	n_anterior2=0; /*f(n-2) o número de fibonacci requer da suma dos dois valores anteriores */
  	n_fibonacci = 0;
	n_max=data_in;  /* n_max é o valor do número de fibonacci a avaliar.*/

	if ( n_max==1 || n_max==0 ){
		n_fibonacci=n_max;
		*data_o = n_fibonacci;
	}else{
		while(n_max>1) {
			n_fibonacci=n_anterior1+n_anterior2; /* f(n)=f(n-1)+f(n-2)*/ 
			n_anterior2=n_anterior1; /* necessário para ter a próxima operação f(n-2)=f(n-1)*/
			n_anterior1=n_fibonacci; /* necessário para ter  a próxima operação f(n-1)=f(n)*/
			n_max=n_max-1; /* número de iterações */ 
		}
	   *data_o = n_fibonacci;  
	}
}




int main()
{
 

   int data_o;

   unsigned long number_m, number_n, final, i=0;

   number_m = 38;  
   number_n = 18;
   final= number_m-number_n;

   for(i = 0; i <= final; ++i)
   	{
   
	fibo(number_n, &data_o);

	puts ("the Fibonacci number of ");
	puts(itoa10(number_n));
	puts (" is ");
	puts(itoa10(data_o));

	putchar ('\r');
	putchar ('\n');
	
	number_n++;
	}

return 0;
 
}