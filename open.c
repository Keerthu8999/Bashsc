#include<stdio.h>
#include<fcntl.h>
#include<errno.h>
extern int errno;
int main()
{
int fd = open("exists.sh",O_RDONLY | O_CREAT);
printf("fd = %d",fd);
if(fd == -1)
{
printf("Error no : %d" , errno);
perror("Program");
}
return 0;
}
