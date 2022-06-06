%{
    #include <stdio.h>
%}  
%%
"hello world"   printf("GOODBYE!");
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