%{
    #include <stdio.h>
    #include <string.h>
    #include <stdlib.h>
    int count = 0;
    char word[] = "geeks";
%}
%%
[a-zA-Z]+       {
                    if(strcmp(yytext, word) == 0)
                        count++;
                }

(.|\n)          ;
%%
int yywrap()
{
    return 1;
}

int main()
{   
    FILE *file = fopen("p6.txt", "r");
    if(file == NULL)
    {
        printf("file not found\n");
        exit(EXIT_FAILURE);
    }
    else
        yyin = file;
    yylex();
    printf("frequency = %d\n", count);
    return 0;
}