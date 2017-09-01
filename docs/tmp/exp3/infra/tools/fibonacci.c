
void fibo (int data_in,  int *data_o)
{
   int n_anterior1,n_anterior2,n_fibonacci;
   int n_max; 
   int x[22];

   //inicialização do vetor com valores de números primos.
   //apague linhas do trecho a seguir, seguindo as orientaçõs da apostila
  
   x[1] = 3;
   x[2] = 5;
   x[3] = 7;
   x[4] = 11;
   x[5] = 13;
   x[6] = 17;
   x[7] = 19;
   x[8] = 23;
   x[9] = 29;
   x[10] = 31;
   x[11] = 37;
   x[12] = 41;
   x[13] = 43;
   x[14] = 47;
   x[15] = 53;
   x[16] = 59;
   x[17] = 61;
   x[18] = 67;
   x[19] = 71;
   x[20] = 73;
   x[21] = 79;

n_anterior1=1; /*f(n-1) o numero de fibonacci requer a soma dos dois valores anteriores */
  	n_anterior2=0; /*f(n-2) o numero de fibonacci requer a soma dos dois valores anteriores */
  	n_fibonacci = 0;
	n_max=data_in;  /* n_max eh o valor do numero de fibonacci a avaliar.*/

	if ( n_max==1 || n_max==0 ){
		n_fibonacci=n_max;
	*data_o = n_fibonacci;
	}else{
		while(n_max>1) {
			n_fibonacci=n_anterior1+n_anterior2; /* f(n)=f(n-1)+f(n-2)*/ 
			n_anterior2=n_anterior1; /* necessario para ter a proxima operacao f(n-2)=f(n-1)*/
			n_anterior1=n_fibonacci; /* necessario para ter a proxima operacao f(n-1)=f(n)*/
			n_max=n_max-1; /* numero de iteracoes */ 
		}
	*data_o = n_fibonacci;
	}
 }
   



int main ()
{
   int data_o;
   int num_aluno[2];

   num_aluno[0]=0;
   num_aluno[1]=3 ; /* completar com o seu numero n_aluno geado*/

   fibo(num_aluno[1], &data_o);

   return 0;
}