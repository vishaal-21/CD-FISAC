%{
#include "JavaParser.tab.h"
%}


%%

"package"    { return PACKAGE; }
"import"     { return IMPORT; }
".*"        { return POINT; }
"class"      { return CLASS; }
"main"		{ return MAIN; }
"public"     { return PUBLIC; }
"private"    { return PRIVATE; }
"protected"  { return PROTECTED; }
"static"     { return STATIC; }
"final"      { return FINAL; }
"abstract"   { return ABSTRACT; }
"void"       { return VOID; }
"byte"       { return BYTE; }
"short"      { return SHORT; }
"int"        { return INT; }
"long"       { return LONG; }
"float"      { return FLOAT; }
"double"     { return DOUBLE; }
"char"       { return CHAR; }
"boolean"    { return BOOLEAN; }
"String"     { return STRING; }
"String args[]"  { return STRINGARGS; } 
"new"        { return NEW; }
"if"         { return IF; }
"else"       { return ELSE; }
"while"      { return WHILE; }
"for"        { return FOR; }
"System.out.println" { return PRINT; }
"true"       { return BOOLEAN_LITERAL; }
"false"      { return BOOLEAN_LITERAL; }
"null"       { return NULL_LITERAL; }
"\"[^\"]*\"" { return STRING_LITERAL; }
"."        { return DOT; }
"("        { return LPAREN; }
")"        { return RPAREN; }
"{"        { return LBRACE; }
"}"        { return RBRACE; }
";"          { return SEMICOLON; }
","          { return COMMA; }
"="          { return ASSIGN; }
"=="         { return EQ; }
"!="         { return NEQ; }
"<="         { return LEQ; }
">="         { return GEQ; }
"<"          { return LT; }
">"          { return GT; }
"+"        { return PLUS; }
"-"          { return MINUS; }
"*"        { return MULT; }
"/"          { return DIV; }

[-+]?[0-9]+([.][0-9]+)?  { return NUMBER; }
[a-zA-Z_][a-zA-Z0-9_]* { return ID; }
[ \t]+     ; 
[\n]   		{    yylineno++; }

%%

int yywrap() {
    return 1;
}

