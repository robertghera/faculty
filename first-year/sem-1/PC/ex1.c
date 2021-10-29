#include <stdio.h>

int main ()
{
  int n,ci,i;// declarare
  do
    {
      printf("Introduce numar:");
      scanf("%d",&n);
    }
  while(n<=0||n>1000);//verifica ca n<=1000 si sa nu fie negativ conform exemplului dat
  for(i=1;i<=n;i++)
    {
      ci=i; // facem o copie pentru i pentru ca acesta sa nu fie stricat la prelucrare
      while(ci)
	{
	  printf("%d,",ci); //afisare grupa k
	  ci=ci-1;
	}
      printf(" "); //afisare spatiu pentru separare grupa k si k+1
    }
  
  return 0;
}