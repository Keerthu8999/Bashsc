#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<unistd.h>
int main()
{
char *path = getenv("Path");
char *envp[] = {path,NULL};
char *tests[] = {"ls",NULL};
execvpe(tests[0],tests,envp);
return 0;
}
