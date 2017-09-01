# 1 "fibonacci.c"

void fibo (int data_in,  int *data_o)
{
   int n_anterior1,n_anterior2,n_fibonacci;
   int n_max; 
   int x[22];

    
    
  
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

n_anterior1=1;  
  	n_anterior2=0;  
  	n_fibonacci = 0;
	n_max=data_in;   

	if ( n_max==1 || n_max==0 ){
		n_fibonacci=n_max;
	*data_o = n_fibonacci;
	}else{
		while(n_max>1) {
			n_fibonacci=n_anterior1+n_anterior2;   
			n_anterior2=n_anterior1;  
			n_anterior1=n_fibonacci;  
			n_max=n_max-1;   
		}
	*data_o = n_fibonacci;
	}
 }
   



int main ()
{
   int data_o;
   int num_aluno[2];

   num_aluno[0]=0;
   num_aluno[1]=3 ;  

   fibo(num_aluno[1], &data_o);

   return 0;
}
