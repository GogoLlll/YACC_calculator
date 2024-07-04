%{
#include "y.tab.h"
%}

%%
[0-9]+   { yylval = atoi(yytext); return NUMBER; }
[ \t\n]  { /* игнорируем пробелы и переносы строки */ }
.        { return yytext[0]; }

%%

int yywrap() {
    return 1;
}