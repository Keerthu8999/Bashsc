#include <dirent.h>

#include <stdio.h>

#include<string.h> 

int main(void)

{
char string[100];
char p[100];
scanf("%s",string);

    DIR *d;

    struct dirent *entry;

    d = opendir(".");

    if (d)

    {

        while ((entry = readdir(d)) != NULL)

        {
	   strcpy(p,entry->d_name);
if(strstr(p,string))
{

            printf("%s\n", entry->d_name);}

        }

        closedir(d);

    }

    return(0);

}
