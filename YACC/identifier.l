identifier.l


%{
#include<stdio.h>
#include "y.tab.h"
%}

%%
[a-zA-z] {return(LETTER);}
[0-9] {return(DIGIT);}
[\n] {return(NL);}
[ _] {return(UND);}
. {return(yytext[0]);}
%%

int yywrap() 
{ 
return 1;
}
