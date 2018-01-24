#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
int main()
{
char *args[]={"./fork11",NULL};
execvp(args[0],args);
printf("\n Finding");
return 0;
}

