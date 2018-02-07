#include <string.h>
#include <sys/types.h>
#include <sys/dir.h>
#include<stdio.h>
#include<fcntl.h>
int main()
{
DIR *d,*d1,*d2,*d3;
//char string[500];
char p[100];
char src[50]={"/home/csh/Desktop/labprog/"};
char des[50]={"/home/csh/Desktop/labprog/text/"};
char des1[50]={"/home/csh/Desktop/labprog/sh/"};
char des2[50]={"/home/csh/Desktop/labprog/c/"};
d=opendir(".");
struct dirent *entry;
d1=mkdir("text",O_WRONLY|O_RDONLY);
d2=mkdir("sh",O_WRONLY|O_RDONLY);
d3=mkdir("c",O_WRONLY|O_RDONLY);
if(d)
{
while((entry=readdir(d))!=NULL)
{
strcpy(p,entry->d_name);
if(strstr(p,".txt"))
{
strcat(src,p);
strcat(des,p);
rename(src,des);
}
}}

if(d)
{
while((entry=readdir(d))!=NULL)
{
strcpy(p,entry->d_name);
if(strstr(p,".sh"))
{
strcat(src,p);
strcat(des2,p);
rename(src,des2);
}}}

if(d)
{
while((entry=readdir(d))!=NULL)
{
strcpy(p,entry->d_name);
if(strstr(p,".c"))
{
strcat(src,p);
strcat(des1,p);
rename(src,des1);
}
}}
return 0;
}
