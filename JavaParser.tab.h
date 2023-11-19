/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_JAVAPARSER_TAB_H_INCLUDED
# define YY_YY_JAVAPARSER_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    PACKAGE = 258,                 /* PACKAGE  */
    IMPORT = 259,                  /* IMPORT  */
    CLASS = 260,                   /* CLASS  */
    PUBLIC = 261,                  /* PUBLIC  */
    PRIVATE = 262,                 /* PRIVATE  */
    PROTECTED = 263,               /* PROTECTED  */
    STATIC = 264,                  /* STATIC  */
    FINAL = 265,                   /* FINAL  */
    ABSTRACT = 266,                /* ABSTRACT  */
    VOID = 267,                    /* VOID  */
    MAIN = 268,                    /* MAIN  */
    BYTE = 269,                    /* BYTE  */
    SHORT = 270,                   /* SHORT  */
    INT = 271,                     /* INT  */
    LONG = 272,                    /* LONG  */
    FLOAT = 273,                   /* FLOAT  */
    DOUBLE = 274,                  /* DOUBLE  */
    CHAR = 275,                    /* CHAR  */
    BOOLEAN = 276,                 /* BOOLEAN  */
    STRING = 277,                  /* STRING  */
    NEW = 278,                     /* NEW  */
    IF = 279,                      /* IF  */
    ELSE = 280,                    /* ELSE  */
    WHILE = 281,                   /* WHILE  */
    FOR = 282,                     /* FOR  */
    PRINT = 283,                   /* PRINT  */
    NULL_LITERAL = 284,            /* NULL_LITERAL  */
    STRING_LITERAL = 285,          /* STRING_LITERAL  */
    STRINGARGS = 286,              /* STRINGARGS  */
    ID = 287,                      /* ID  */
    NUMBER = 288,                  /* NUMBER  */
    BOOLEAN_LITERAL = 289,         /* BOOLEAN_LITERAL  */
    EQ = 290,                      /* EQ  */
    NEQ = 291,                     /* NEQ  */
    LEQ = 292,                     /* LEQ  */
    GEQ = 293,                     /* GEQ  */
    LT = 294,                      /* LT  */
    GT = 295,                      /* GT  */
    PLUS = 296,                    /* PLUS  */
    MINUS = 297,                   /* MINUS  */
    MULT = 298,                    /* MULT  */
    DIV = 299,                     /* DIV  */
    POINT = 300,                   /* POINT  */
    ASSIGN = 301,                  /* ASSIGN  */
    DOT = 302,                     /* DOT  */
    LPAREN = 303,                  /* LPAREN  */
    RPAREN = 304,                  /* RPAREN  */
    LBRACE = 305,                  /* LBRACE  */
    RBRACE = 306,                  /* RBRACE  */
    SEMICOLON = 307,               /* SEMICOLON  */
    COMMA = 308                    /* COMMA  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_JAVAPARSER_TAB_H_INCLUDED  */
