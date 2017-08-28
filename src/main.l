%{

#include <stdio.h>

%}

%%

[A-Za-z0-9]+([._-][A-Za-z0-9]+)*[@][A-Za-z0-9]+([._-][A-Za-z0-9]+)*(.com)?(.br)?[_-] ;

[A-Za-z0-9]+([._-][A-Za-z0-9]+)*[@][A-Za-z0-9]+([._-][A-Za-z0-9]+)*(.com)?(.br)? { printf("%s\n",yytext); }

.  ;
\n ;

%%

int main() {
 yylex();
 return 0;
}
