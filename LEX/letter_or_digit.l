%{

%}
letter [a-zA-Z]
digit [0-9]
id2 {letter}({letter}|{digit})*
num {digit}("."({digit})+)?

%%
"if"|"else"|"while"|"for"  {printf("keyword");}
{num} {printf("num");}
{id2}    { printf("id2 "); }
%%

int main()
{
yylex();
return 0;
}

int yywrap(){return 1;}