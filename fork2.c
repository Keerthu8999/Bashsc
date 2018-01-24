#include<stdio.h>
#include<unistd.h>
int main()
{
int id,i;
printf("start \n");
id=fork();
if(id>0)
printf("\n Parent Process");
else if(id==0)
printf("\n Child Process");
else
printf("\n Fork Creation failed");
printf("\n Printing numbers from 1- 10 \n");
for(i=1;i<=10;i++)
{
printf("%d",i);
}
printf("\n End of main function");
return 0;
}
