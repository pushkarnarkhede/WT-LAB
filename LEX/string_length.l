%{
    #include <stdio.h>
    int length = 0;
%}
%%
[a-zA-Z0-9 ]*               {
                                length = yyleng;
                            }

.              ;

"\n"           {
                    printf("length of given string is : %d\n", length);
                    length = 0;
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