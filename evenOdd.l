%{
#include <stdio.h>
int m;
%}
%%
[0-9]+ {m=atoi(yytext);
			if(m%2==0)
				printf("Even");
			else printf("Odd");	
				}
.* {printf("Wrong input");}
%%
int yywrap(){return 1;}
int main(){
printf("Enter number ");
yylex();
return 0;
}