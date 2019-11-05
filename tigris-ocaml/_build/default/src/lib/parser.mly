// parser.mly

%{
  open Absyn
%}

%token <bool>          LOGIC
%token <int>           INTEGER
%token <string>        STRING
%token <float>         REAL
%token <Symbol.symbol> ID
%token                 IF THEN ELSE
%token                 WHILE DO BREAK
%token                 LET IN END
%token                 VAR FUNCTION TYPE
%token                 LPAREN "(" RPAREN ")"
%token                 COLON ":" COMMA "," SEMI ";"
%token                 PLUS "+" MINUS "-" TIMES "*" DIV "/" MOD "%" POW "^"
%token                 EQ "=" NE "<>"
%token                 LT "<" LE "<=" GT ">" GE ">="
%token                 AND "&" OR "|"
%token                 ASSIGN ":="
%token                 EOF


/* 
  colocar na ordem para precedencia
  Inverso da ordem da tabela 
*/


%right THEN ELSE DO IN
%nonassoc ASSIGN
%left "|"
%left "&"
%nonassoc "=" "<>" ">" ">=" LE LT
%left "+" "-"
%left "*" "/" "%"
%right "^"
/* %left UMINUS */

%start <Absyn.lexp> program

%%

program:
 | x = exp EOF {x}

exp:
 | x = INTEGER            {$loc, IntExp x}
 | x = REAL            {$loc, RealExp x}
 | x = LOGIC              {$loc, BoolExp x}
 | x = STRING            {$loc, StringExp x}
 | v = var                {$loc, VarExp v}
 | "-" e = exp           {$loc, OpExp (MinusOp, ($loc, IntExp 0), e)}
 | f = exp "+" s = exp   {$loc, OpExp (PlusOp, f, s)}
 | f = exp "-" s = exp   {$loc, OpExp (MinusOp, f, s)}
 | f = exp "*" s = exp   {$loc, OpExp (TimesOp, f, s)}
 | f = exp "/" s = exp   {$loc, OpExp (DivOp, f, s)}
 | f = exp "%" s = exp   {$loc, OpExp (ModOp, f, s)}
 | f = exp "^" s = exp   {$loc, OpExp (PowOp, f, s)}
 | f = exp "=" s = exp   {$loc, OpExp (EqOp, f, s)}
 | f = exp "<>" s = exp   {$loc, OpExp (NeOp, f, s)}
 | f = exp ">" s = exp   {$loc, OpExp (GtOp, f, s)}
 | f = exp ">=" s = exp   {$loc, OpExp (GeOp, f, s)}
 | f = exp "<" s = exp   {$loc, OpExp (LtOp, f, s)}
 | f = exp "<=" s = exp   {$loc, OpExp (LeOp, f, s)}
 | f = exp "&" s = exp   {$loc, OpExp (AndOp, f, s)}
 | f = exp "|" s = exp   {$loc, OpExp (OrOp, f, s)}
 | IF x = exp THEN y = exp ELSE z = exp {$loc, IfExp(x, y, Some(z))}
 | IF x = exp THEN y = exp {$loc, IfExp(x, y, None)}
 | WHILE t = exp DO b = exp {$loc, WhileExp (t, b)}
 | BREAK                  {$loc, BreakExp}
 | LET d = decs IN e = exp END {$loc, LetExp (d, e)}
 | func = ID "(" args = separated_list(",", exp) ")"  {$loc, CallExp(func, args)}
 | "(" exps = separated_list(";", exp) ")"        {$loc, SeqExp exps}
 | v = var ":=" e = exp       {$loc, AssignExp (v, e)}
 
 (*
    Passos na análise semântica:
   Fazer análise semântica da variavel e determinar seu tipo t1;
   Fazer análise semântica da expressão e determinar seu tipo t2;
   Verificar/Checar se t2 é compatível com t1;
   Tipo da atribuição é 'unit'
 *)

vardec:
 | VAR v=ID ":" t=ID ":=" e=exp {$loc, VarDec (v, Some ($loc(t), t), e)}
 | VAR v=ID ":=" e=exp {$loc, VarDec (v, None, e)}

var:
 | x = ID {$loc, SimpleVar x}

decs:
 | l = list(dec) {l}

dec:
 | v = vardec {v}
 | t = nonempty_list(typedec) {$loc, MutualTypeDecs t}
 | f = nonempty_list(funcdec) {$loc, MutualFunctionDecs f}

typedec:
 | TYPE name = ID ":=" t = typeCons {$loc, (name, t)}

typeCons:
 | x = ID {$loc, NameCons(x)}

funcdec:
| FUNCTION f = ID "(" ps = separated_list(",", parameter) ")" "=" e = exp {$loc, (f, ps, None, e)}
| FUNCTION f = ID "(" ps = separated_list(",", parameter) ")" ":" v = ID "=" e = exp {$loc, (f, ps, Some ($loc(v), v), e)}

parameter:
 | x = ID ":" y = ID {$loc, (x, y)}
