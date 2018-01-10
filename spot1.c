#include<stdio.h>
#include<string.h>
#include<unistd.h>
#include<fcntl.h>
#include<stdlib.h>
int foo(int fd,char *buf,int b_size,int n,int skip)
{
fd = open("ag.txt" , O_RDONLY);
if (fd == -1)
{
perror("c1");
exit(1);
}
int i, s=0;
char *temp;
buf = calloc(b_size , sizeof(char));
temp = calloc(skip , sizeof(char));
for(i=0;i<n;i++)
{
s += read(fd,buf,b_size);
read(fd,temp,skip);
}
return s;
}
int main()
{
int fd,b_size,skip,n;
char *buf;
scanf("%d %d %d",&b_size,&n,&skip);
printf("%d",foo(fd,buf,b_size,n,skip));
return 0;
}

