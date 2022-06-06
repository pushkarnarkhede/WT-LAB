%{
#include<stdio.h>
int count = 0;
%}

%%
[a-zA-Z]+'?[a-zA-Z]+  {  
					count ++;
				}

.  ;

"\n" {
		printf("word = %d", count);
		count = 0;
	}

%%

int yywrap(){ return 1;}

int main(){
	yylex();
	return 0 ;
}