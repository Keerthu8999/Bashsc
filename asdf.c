#include<stdio.h>
#include<stdlib.h>
#include<fcntl.h>
int main()
{
char c[100];
int fd1,fd2;
int pid;
pid=fork();
if(pid==0)
{
fd1=open("boo.txt",O_RDONLY);
read(fd1,c,255);
fd2=open("new12.txt",O_WRONLY|O_CREAT);
write(fd2,c,255);
}
else
{
fd1=open("marks.txt",O_RDONLY);
read(fd1,c,255);
fd2=open("new11.txt",O_WRONLY|O_CREAT);
write(fd2,c,255);
}
return 0;
}
