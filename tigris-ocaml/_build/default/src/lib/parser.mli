
(* The type of tokens. *)

type token = 
  | WHILE
  | VAR
  | TYPE
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
  | FUNCTION
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

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val program: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Absyn.lexp)
