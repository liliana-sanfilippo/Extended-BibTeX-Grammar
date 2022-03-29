lexer grammar BibTeXLexer;

// Keywords
ARTICLE:
    '@article'
    ;

BOOK:
    '@book'
    ;

BOOKLET:
    '@booklet'
    ;

INBOOK:
    '@inbook'
    ;

INCOLLECTION:
    '@incollection'
    ;

INPROCEEDINGS:
    '@inproceedings'
    ;

PROCEEDINGS:
    '@proceedings'
    ;

MANUAL:
    '@manual'
    ;

MASTERTHESIS:
    '@mastersthesis'
    ;

PHDTHESIS:
    '@phdthesis'
    ;

MISC:
    '@misc'
    ;

TECHREPORT:
    '@techreport'
    ;

UNPUBLISHED:
    '@unpublished'
    ;


// Identifiers

IDENTIFIER
    : [a-zA-Z_] [a-zA-Z_0-9-]*
    ;

// Operators

EQ
    : '='
    ;


// Punctuation

COMMA
    : ','
    ;

DQUOTE
    : '"'
    ;

// Delimiters

LPAREN
    : '('
    ;
RPAREN
    : ')'
    ;
LBRACE
    : '{'
    ;
RBRACE
    : '}'
    ;


// Literals
STRING_LITERAL
    : LBRACE (ESC | BRACE_ENCLOSED_SAFECODEPOINT)* RBRACE
    | DQUOTE (ESC | QUOTE_ENCLOSED_SAFECODEPOINT)* DQUOTE
    ;

INTEGER_LITERAL
    : (LBRACE | DQUOTE)? INTEGER (RBRACE | DQUOTE)?
    ;

// Fragments

fragment ESC
   : '\\' (["\\/bfnrt] | UNICODE)
   ;

fragment UNICODE
   : 'u' HEX HEX HEX HEX
   ;

fragment INTEGER
   : '0' | [1-9] [0-9]*
   ;

fragment HEX
   : [0-9a-fA-F]
   ;

fragment QUOTE_ENCLOSED_SAFECODEPOINT
   : ~ ["\\\u0000-\u001F]
   ;

fragment BRACE_ENCLOSED_SAFECODEPOINT
   : ~ [\\\u0000-\u001F]
   ;

// Whitespace and Comment

WS:
    [ \t\r\n\u000C]+ -> skip
    ;

LINE_COMMENT
    : '%' ~[\r\n]*    -> skip
    ;