%{
    #include<stdio.h>
    int yylex();
    void yyerror(char *s);

 %}

%token NUM SUB LT ID LP RP LB RB IF SEMI ASSIGN
%start begin
%%
begin: statements;

statements : statements statement | ;
statement: IF LP exp RP LB id_assign RB

exp: NUM LT NUM;
id_assign : ID ASSIGN NUM SUB NUM SEMI;
%%

int main(){
    yyparse();
    printf("Parsing Finished\n");
    return 0;
}
void yyerror(char *s){

    fprintf(stderr,"Error:%s\n",s);
}