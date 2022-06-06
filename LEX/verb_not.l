%{

%}

%%
" "  |
"\t" ;
             
go(es)?		|
runs?			|
likes?		|
eats?		{printf("%s: is a verb\n",yytext); }
[a-zA-Z]+  {printf("%s: is not a  verb\n",yytext); }
"\n"  ;
%%

int main()
{
yylex();
return 0;
}


int yywrap(){return 1;}