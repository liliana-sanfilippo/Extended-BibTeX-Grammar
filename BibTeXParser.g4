/*
 * MIT License
 *
 * Copyright (c) 2025 Liliana Sanfilippo
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

// $antlr-format alignTrailingComments true, columnLimit 150, minEmptyLines 1, maxEmptyLinesToKeep 1, reflowComments false, useTab false
// $antlr-format allowShortRulesOnASingleLine false, allowShortBlocksOnASingleLine true, alignSemicolons hanging, alignColons hanging

parser grammar BibTeXParser;

options {
    tokenVocab = BibTeXLexer;
}

bibTex
    : entry* EOF
    ;

// Entries

entry
    : article
    | book
    | booklet
    | inbook
    | incollection
    | inproceedings
    | proceedings
    | manual
    | mastersthesis
    | phdthesis
    | misc
    | techreport
    | unpublished
    | dataset
    ;

field
    : key EQ value
    ;

key
    : IDENTIFIER
    ;

value
    : INTEGER_LITERAL
    | STRING_LITERAL
    ;

article
    : ARTICLE LBRACE IDENTIFIER COMMA field (COMMA field)* (COMMA)? RBRACE
    ;

book
    : BOOK LBRACE IDENTIFIER COMMA field (COMMA field)* (COMMA)? RBRACE
    ;

booklet
    : BOOKLET LBRACE IDENTIFIER COMMA field (COMMA field)* (COMMA)? RBRACE
    ;

inbook
    : INBOOK LBRACE IDENTIFIER COMMA field (COMMA field)* (COMMA)? RBRACE
    ;

incollection
    : INCOLLECTION LBRACE IDENTIFIER COMMA field (COMMA field)* (COMMA)? RBRACE
    ;

inproceedings
    : INPROCEEDINGS LBRACE IDENTIFIER COMMA field (COMMA field)* (COMMA)? RBRACE
    ;

proceedings
    : PROCEEDINGS LBRACE IDENTIFIER COMMA field (COMMA field)* (COMMA)? RBRACE
    ;

manual
    : MANUAL LBRACE IDENTIFIER COMMA field (COMMA field)* (COMMA)? RBRACE
    ;

mastersthesis
    : MASTERTHESIS LBRACE IDENTIFIER COMMA field (COMMA field)* (COMMA)? RBRACE
    ;

phdthesis
    : PHDTHESIS LBRACE IDENTIFIER COMMA field (COMMA field)* (COMMA)? RBRACE
    ;

misc
    : MISC LBRACE IDENTIFIER COMMA field (COMMA field)* (COMMA)? RBRACE
    ;

techreport
    : TECHREPORT LBRACE IDENTIFIER COMMA field (COMMA field)* (COMMA)? RBRACE
    ;

unpublished
    : UNPUBLISHED LBRACE IDENTIFIER COMMA field (COMMA field)* (COMMA)? RBRACE
    ;

dataset
    : DATASET LBRACE IDENTIFIER COMMA field (COMMA field)* (COMMA)? RBRACE
    ;
