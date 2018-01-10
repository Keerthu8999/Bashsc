#include<stdio.h>
#include<fcntl.h>
#include<stdlib.h>
int main()
{
char c;
int fd1=open("exists.sh",O_RDONLY,0);
int fd2=open("exists.sh",O_RDONLY,0);
read(fd1,&c,1);
read(fd2,&c,1);
printf("c = %c" , c);
exit(0);
}
