%{
    #include <stdio.h>
    int longest = 0;
%}
%%
[a-zA-Z]+       {
                    if(longest < yyleng)
                        longest = yyleng;
                }

.               ;

"\n"            {
                    printf("length = %d\n", longest);
                    longest = 0;
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