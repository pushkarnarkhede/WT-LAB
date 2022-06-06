%{
    #include <stdio.h>
    int count = 0;
%}
%%
[ ]     {
            count++;
        }

.       ;

"\n"    {
            printf("spaces = %d\n",count);
            count = 0;
        }
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