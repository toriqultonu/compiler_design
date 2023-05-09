%option noyywrap
%{

#include "test.tab.h"

%}
delim [ \t\n]
ws {delim}+
digit [0-9]
number {digit}+
letter [A-Za-z]
us [_]
id ({us}|{letter})({us}|{letter}|{digit})*

%%
{ws} {}
{number} {return (NUM);}
"-" {return (SUB);}
"if" {return (IF);}
"(" {return (LP);}
")" {return (RP);}
"{" {return (LB);}
"}" {return (RB);}
";" {return (SEMI);}
"<" {return (LT);}
"=" { return(ASSIGN);}
{id} {return (ID);}
%%



