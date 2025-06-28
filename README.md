# BibTeX Grammar

BibTeX grammar for ANTLR v4.

## Feature

- Distinguish all entry types at syntactic level (case insensitive)

> article, book, booklet, inbook, incollection, inproceedings, proceedings, manual, mastersthesis, phdthesis, misc,
> techreport, unpublished

- Includes some inofficial types, currently:
> dataset

- Support String and Integer value types
- Support `{*}` and `"*"` String values
- Support line comment `%`
- Support escape characters

## Usage

1. Generate Lexer and Lexer Tokens
   
```bash
npx antlr4ts  BibTeXLexer.g4
```

2. Generate Parser 

```bash
npx antlr4ts  BibTeXParser.g4
```

Optional: generate parser and visitor

```bash
npx antlr4ts -visitor BibTeXParser.g4
```

## Related Projects

- [BibTeX JavaScript Parser](https://github.com/yepengding/bibtex-js-parser)
- [BibTex Java Parser](https://github.com/yepengding/BibTeX-Java-Parser)

---

# References

- https://www.bibtex.com/e/entry-types/
