grammar Test;

program       :
              declaration*
              statement*
              ;

declaration   :
              INT NAME SEMICOLON
              ;

statement      :
               ifstmt
             | whilestmt
             | printstmt
             | assignstmt
               ;

ifstmt      :
            IF LPAREN identifier EQUAL integer RPAREN
            statement*
            ENDIF
            ;

whilestmt      :
            WHILE LPAREN identifier LEQ identifier RPAREN
            statement*
            ;

printstmt      :
               PRINT term SEMICOLON
               ;

assignstmt      :
                NAME ASSIGN expression SEMICOLON
                ;

expression      :
                term
              |
                term PLUS term
                ;

term          :
              identifier
            | integer
              ;

identifier   : NAME  ;

integer      : INTEGER  ;

IF: 'if';
ENDIF: 'endif';
PRINT: 'print';
INT: 'int';
WHILE: 'while';

PLUS: '+';
EQUAL: '==';
ASSIGN: '=';
NOTEQUAL: '!=';
LEQ: '<=';

SEMICOLON: ';';
LPAREN: '(';
RPAREN: ')';
LBRACK: '{';
RBRACK: '}';
MULT: '*';

INTEGER: [0-9][0-9]*;
NAME: [a-z]+;
WS: [ \t\r\n]+ -> skip ;