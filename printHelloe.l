%{
#include <stdio.h>
%}
%%
"hi" {printf("Bye");}
.* {printf("Wrong i/p");}
%%
int main(){
printf("Enter i/p");
yylex();
}
int yywrap(){return 1;}