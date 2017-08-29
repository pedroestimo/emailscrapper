%{
#include <stdio.h>
%}

%%

[a-zA-Z0-9]+[a-zA-Z0-9_\-.]*[a-zA-Z0-9]+"@"[a-zA-Z0-9]+([a-zA-Z0-9_\-.]*[a-zA-Z0-9])* {
printf("%s\n",yytext);
}
[_\-.]+[a-zA-Z0-9]"@"[a-zA-Z0-9]+"."[a-zA-Z0-9]+ {
}
[a-zA-Z0-9]+[a-zA-Z0-9_\-.]*[a-zA-Z0-9]+"@"[a-zA-Z0-9]+[a-zA-Z0-9_\-.]*[_\-]+ {
}
\n ;
. ;
[[:space:]] ;
%%
int main() {
  yylex();
  return 0;
}
