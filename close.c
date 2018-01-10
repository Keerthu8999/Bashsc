#include<stdio.h>
#include<stdlib.h>
#include<fcntl.h>
int main()
{
int fd1 = open("exists.sh" , O_RDONLY);
if(fd1 < 0)
{
perror("c1");
exit(1);
}
printf("fd opened = %d",fd1);
if(close(fd1)<0)
{
perror("c1");
exit(1);
}
printf(" Closed fd");
}
