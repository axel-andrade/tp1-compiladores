
(* The type of tokens. *)

type token = 
  | WHILE
  | VAR
  | TIMES
  | THEN
  | STRING of (string)
  | SEMI
  | RPAREN
  | REAL of (float)
  | POW
  | PLUS
  | OR
  | NE
  | MOD
  | MINUS
  | LT
  | LPAREN
  | LOGIC of (bool)
  | LET
  | LE
  | INTEGER of (int)
  | IN
  | IF
  | ID of (Symbol.symbol)
  | GT
  | GE
  | EQ
  | EOF
  | END
  | ELSE
  | DO
  | DIV
  | COMMA
  | COLON
  | BREAK
  | ASSIGN
  | AND
