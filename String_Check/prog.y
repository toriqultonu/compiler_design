%{
#include<stdio.h>

int yylex();
void yyerror(char *s);
%}
%token UNI OF D R C
%start prog

%%
prog:exp| ;
exp:exp state | ;
state:UNI OF x {printf("Accepted\n");};
x:D|R|C ;

%%
int main(){
    yyparse();
    printf("Parshing Finished\n");
    return 0;
}
 void yyerror(char *s){
     fprintf(stderr,"Error:%s\n",s);
 }
