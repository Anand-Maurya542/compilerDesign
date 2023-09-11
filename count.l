%{
    int c1=0;
    int v1=0;
%}

%%
[aeiouAEIOU] {v1++;}
[a-zA-Z] {c1++;}
%%
int yywrap(){return 1;}
int main(){
printf("Enter the string: ");
yylex();
printf("No. of vowels : %d\n",v1);
printf("No. of consonants : %d\n",c1);
return 0;
}