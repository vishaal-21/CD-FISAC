%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int yyerror(const char *s);

extern int yylex();
extern int yylineno;
extern FILE* yyin;
%}

%token PACKAGE IMPORT CLASS PUBLIC PRIVATE PROTECTED STATIC FINAL ABSTRACT VOID MAIN
%token BYTE SHORT INT LONG FLOAT DOUBLE CHAR BOOLEAN STRING NEW IF ELSE WHILE FOR PRINT
%token NULL_LITERAL STRING_LITERAL STRINGARGS
%token ID NUMBER BOOLEAN_LITERAL
%token EQ NEQ LEQ GEQ LT GT PLUS MINUS MULT DIV POINT
%token ASSIGN DOT LPAREN RPAREN LBRACE RBRACE SEMICOLON COMMA

%start Start
%expect 0

%%

Start: package_stmt import_stmt class_decl;

package_stmt: PACKAGE package_name SEMICOLON 
	    | 
	    ;
	    
package_name: ID package_list ;
package_list: DOT ID package_list 
	    |
	    ;

import_stmt: IMPORT packages SEMICOLON import_stmt 
	   |
	   ;
	   
packages: ID import_list ;

import_list: DOT ID import_list 
	   | POINT 
	   | 
	   ;
	   
class_decl: access_specifier modifier CLASS ID LBRACE m_class_members RBRACE class_more ;

access_specifier: PUBLIC 
	  	| PRIVATE 
	  	| PROTECTED 
	  	;
	  	
modifier: STATIC 
	| FINAL 
	| ABSTRACT 
	;
	 
m_class_members: declaration main_func constructor functions ;

class_more: access_specifier modifier CLASS ID LBRACE class_members RBRACE class_more 
	  | 
	  ;
	  
class_members: declaration constructor functions ; 

declaration: access_specifier modifier data_type decl_list SEMICOLON declaration 
	   | 
	   ;
	   
functions: access_specifier modifier data_type ID LPAREN parameter_list RPAREN LBRACE statement_list RBRACE functions | ;
parameter_list: data_type ID id_list | ;
id_list: COMMA data_type ID id_list | ;
constructor: access_specifier ID LPAREN parameter_list RPAREN LBRACE statement_list RBRACE constructor | ;
main_func: PUBLIC STATIC VOID MAIN LPAREN RPAREN LBRACE statement_list RBRACE;
data_type: BYTE | SHORT | INT | LONG | FLOAT | DOUBLE | CHAR | BOOLEAN | STRING | VOID | ID;

object_creation: data_type ID ASSIGN NEW data_type LPAREN parameters RPAREN SEMICOLON;
parameters: ID param_list | ;
param_list: COMMA ID param_list | ;

statement_list: statement statement_list 
	      |
	      ;
	      
statement: declaration | assign_stat SEMICOLON | looping | decision | object_creation | function_call | PRINT LPAREN STRING_LITERAL RPAREN SEMICOLON;
function_call: ID LPAREN parameters RPAREN SEMICOLON ;



decl_list: ID decl_list_prime;
decl_list_prime: COMMA ID decl_list | LBRACE NUMBER RBRACE decl_array | ;
decl_array: COMMA decl_list | ;

assign_stat: ID ASSIGN expn;

expn: simple_expn eprime;
eprime: relop simple_expn | ;
simple_expn: term seprime;
seprime: PLUS term seprime | MINUS term seprime | ;
term: factor tprime;
tprime: MULT factor tprime | DIV factor tprime | ;
factor: ID | NUMBER;

decision: IF LPAREN expn RPAREN LBRACE statement_list RBRACE dprime;
dprime: ELSE LBRACE statement_list RBRACE | ;

looping: WHILE LPAREN expn RPAREN LBRACE statement_list RBRACE | FOR LPAREN assign_stat SEMICOLON expn SEMICOLON assign_stat RPAREN LBRACE statement_list RBRACE;
relop: EQ | NEQ | LEQ | GEQ | LT | GT;  
	   


%%

int yyerror(const char *s) {
    fprintf(stderr, "Error at line %d: %s\n",yylineno, s);
    fflush(stderr);
    exit(1);
}

void main() {

    yyin=fopen("JavaTest.java","r");

    if(yyparse()==0)
        printf("Parse successful");
    else
        printf("Unsuccessful");

    fclose(yyin);
}

