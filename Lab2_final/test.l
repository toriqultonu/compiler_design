%option noyywrap
%{
    #include "test.tab.h" 
%}
delim [ \t\n]
ws {delim}+
digit [0-9]
letter [A-Z]
num {digit}+
str {letter}+
string  {str}+




%%

{ws} {}
{num} {return (NUM);}
{string} {return(STR);}


%%
// int yywrap(){

// }
// int main(){
//     yylex();
//     return 0;
// }

