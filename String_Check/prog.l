%option noyywrap
%{
  #include "prog.tab.h"  
%}


%%
"University" {return (UNI);}
"of" {return (OF);}
"dhaka" {return (D);}
"rajshahi" {return (R);}
"chitagong" {return (C);}
%%
