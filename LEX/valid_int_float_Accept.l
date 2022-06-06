%{
    #include <stdio.h>
%}
%%
^[+-]?[0-9]+$                      printf("valid Integer value\n");   

^[+-]?[0-9]+[.]?[0-9]+$            printf("valid Float value\n");

^.*                                printf("Not a valid Integer/Float value\n");                        

"\n"                     ;
%%
int yywrap()
{
    return 1;
}

int main()
{
    yylex();
    return 0;
}