%{
    #include <stdio.h>
    int vowels = 0;
    int consonants = 0;
%}
%%
[aeiouAEIOU]                            vowels++;

[a-zA-Z]                                consonants++;

.                                       ;

"\n"                                    {
                                            printf("Number of vowels are: %d\n", vowels);
                                            printf("Number of consonants are: %d\n", consonants);
                                            vowels = 0;
                                            consonants = 0;
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