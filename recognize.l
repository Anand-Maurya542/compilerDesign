%{
#include <stdio.h>
%}

%%


if|else|printf {printf("%s is a keyword ", yytext);}
[0-9]+ {printf("%s is a integer ",yytext);}
[a-zA-Z]* {printf("%s is a word",yytext);}
.|\n {ECHO;}


%%
int yywrap(){return 0;}
int main(){
printf("Enter i/p : ");
yylex();
return 0;
}