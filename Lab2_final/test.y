%{
    #include<stdio.h>
    int yylex();
    void yyerror(char *s);
%}

%token NUM STR
%start begin


%%
begin:exp| ;

exp:exp state | ;
state:STR NUM {printf("Accepted\n");}
      |STR {printf("Accepted\n");}
    ;

%%

int main(){
    // {letter}+({ws}{letter}+)({ws}{digit}+)|{letter}+{ws}{letter}+{ws}{letter}+ {printf("String\n");}
    yyparse();
    printf("parsing finished\n");
    return 0;
}
void yyerror(char *s){
    fprintf(stderr,"Error:%s\n",s);
}