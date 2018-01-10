#include <string.h>
#include <sys/types.h>
#include <sys/dir.h>
#include<stdio.h>
#include<fcntl.h>
int main()
{
char string[500];
char p[100];
//scanf("%s",string);
int fd,fd2=open("merge2.txt",O_WRONLY|O_CREAT);;
DIR *d;
d = opendir(".");
struct dirent *entry;
//d = opendir(".");
if(d)
{
while((entry = readdir(d)) !=NULL)
{
strcpy(p,entry->d_name);
if(strstr(p,".txt"))
{
fd = open(entry->d_name,O_RDONLY);
printf("%d\n",read(fd,string,255));
//2 = open("merge.txt",O_WRONLY|O_CREAT);
write(fd2,string,255);
}
}
}
return 0;
}
