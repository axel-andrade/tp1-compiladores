
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WHILE
    | VAR
    | TYPE
    | TIMES
    | THEN
    | STRING of (
# 9 "src/lib/parser.mly"
       (string)
# 16 "src/lib/parser.ml"
  )
    | SEMI
    | RPAREN
    | REAL of (
# 10 "src/lib/parser.mly"
       (float)
# 23 "src/lib/parser.ml"
  )
    | POW
    | PLUS
    | OR
    | NE
    | MOD
    | MINUS
    | LT
    | LPAREN
    | LOGIC of (
# 7 "src/lib/parser.mly"
       (bool)
# 36 "src/lib/parser.ml"
  )
    | LET
    | LE
    | INTEGER of (
# 8 "src/lib/parser.mly"
       (int)
# 43 "src/lib/parser.ml"
  )
    | IN
    | IF
    | ID of (
# 11 "src/lib/parser.mly"
       (Symbol.symbol)
# 50 "src/lib/parser.ml"
  )
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
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState108
  | MenhirState104
  | MenhirState98
  | MenhirState95
  | MenhirState92
  | MenhirState87
  | MenhirState84
  | MenhirState80
  | MenhirState76
  | MenhirState70
  | MenhirState61
  | MenhirState58
  | MenhirState56
  | MenhirState53
  | MenhirState47
  | MenhirState45
  | MenhirState43
  | MenhirState41
  | MenhirState39
  | MenhirState37
  | MenhirState35
  | MenhirState33
  | MenhirState31
  | MenhirState29
  | MenhirState27
  | MenhirState25
  | MenhirState23
  | MenhirState21
  | MenhirState19
  | MenhirState16
  | MenhirState14
  | MenhirState12
  | MenhirState7
  | MenhirState5
  | MenhirState4
  | MenhirState1
  | MenhirState0

# 3 "src/lib/parser.mly"
  
  open Absyn

# 124 "src/lib/parser.ml"

let rec _menhir_goto_separated_nonempty_list_COMMA_parameter_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Absyn.parameter Location.loc list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (Absyn.parameter Location.loc list)) = _v in
        let _v : (Absyn.parameter Location.loc list) = 
# 144 "<standard.mly>"
    ( x )
# 136 "src/lib/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_parameter__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (Absyn.parameter Location.loc list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (Absyn.parameter Location.loc))) = _menhir_stack in
        let _2 = () in
        let _v : (Absyn.parameter Location.loc list) = 
# 243 "<standard.mly>"
    ( x :: xs )
# 148 "src/lib/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_parameter_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_nonempty_list_funcdec_ : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (Absyn.fundec Location.loc list) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    match _menhir_s with
    | MenhirState98 | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos_f_ = _endpos in
        let (f : (Absyn.fundec Location.loc list)) = _v in
        let _startpos_f_ = _startpos in
        let _v : (Absyn.ldec) = let _endpos = _endpos_f_ in
        let _startpos = _startpos_f_ in
        let _loc = (_startpos, _endpos) in
        
# 100 "src/lib/parser.mly"
                              (_loc, MutualFunctionDecs f)
# 169 "src/lib/parser.ml"
         in
        _menhir_goto_dec _menhir_env _menhir_stack _menhir_s _v
    | MenhirState92 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos_xs_ = _endpos in
        let (xs : (Absyn.fundec Location.loc list)) = _v in
        let _startpos_xs_ = _startpos in
        let (_menhir_stack, _endpos_x_, _menhir_s, (x : (Absyn.fundec Location.loc)), _startpos_x_) = _menhir_stack in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Absyn.fundec Location.loc list) = 
# 223 "<standard.mly>"
    ( x :: xs )
# 184 "src/lib/parser.ml"
         in
        _menhir_goto_nonempty_list_funcdec_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
    | _ ->
        _menhir_fail ()

and _menhir_goto_dec : _menhir_env -> 'ttv_tail -> _menhir_state -> (Absyn.ldec) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FUNCTION ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TYPE ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | VAR ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IN ->
        _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98

and _menhir_goto_list_dec_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Absyn.ldec list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (l : (Absyn.ldec list)) = _v in
        let _v : (Absyn.ldec list) = 
# 95 "src/lib/parser.mly"
                 (l)
# 220 "src/lib/parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BREAK ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState95 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INTEGER _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState95 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LOGIC _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState95 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | REAL _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState95 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState95 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (Absyn.ldec list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (Absyn.ldec))) = _menhir_stack in
        let _v : (Absyn.ldec list) = 
# 213 "<standard.mly>"
    ( x :: xs )
# 272 "src/lib/parser.ml"
         in
        _menhir_goto_list_dec_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_nonempty_list_typedec_ : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (Absyn.typedec Location.loc list) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    match _menhir_s with
    | MenhirState87 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos_xs_ = _endpos in
        let (xs : (Absyn.typedec Location.loc list)) = _v in
        let _startpos_xs_ = _startpos in
        let (_menhir_stack, _endpos_x_, _menhir_s, (x : (Absyn.typedec Location.loc)), _startpos_x_) = _menhir_stack in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Absyn.typedec Location.loc list) = 
# 223 "<standard.mly>"
    ( x :: xs )
# 293 "src/lib/parser.ml"
         in
        _menhir_goto_nonempty_list_typedec_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
    | MenhirState98 | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos_t_ = _endpos in
        let (t : (Absyn.typedec Location.loc list)) = _v in
        let _startpos_t_ = _startpos in
        let _v : (Absyn.ldec) = let _endpos = _endpos_t_ in
        let _startpos = _startpos_t_ in
        let _loc = (_startpos, _endpos) in
        
# 99 "src/lib/parser.mly"
                              (_loc, MutualTypeDecs t)
# 308 "src/lib/parser.ml"
         in
        _menhir_goto_dec _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_parameter__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Absyn.parameter Location.loc list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _menhir_stack = (_menhir_stack, _endpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ID _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | EQ ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | BREAK ->
                        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState84 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | ID _v ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState84 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | IF ->
                        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | INTEGER _v ->
                        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState84 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | LET ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | LOGIC _v ->
                        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState84 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | LPAREN ->
                        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | MINUS ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | REAL _v ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState84 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | STRING _v ->
                        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState84 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | WHILE ->
                        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (((_menhir_stack, _menhir_s, _), _), _, _, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | EQ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BREAK ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState80 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState80 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INTEGER _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState80 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LOGIC _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState80 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | REAL _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState80 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState80 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run71 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 11 "src/lib/parser.mly"
       (Symbol.symbol)
# 431 "src/lib/parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ID _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos_y_ = _endpos in
            let (y : (
# 11 "src/lib/parser.mly"
       (Symbol.symbol)
# 453 "src/lib/parser.ml"
            )) = _v in
            let _startpos_y_ = _startpos in
            let (_menhir_stack, _endpos_x_, _menhir_s, (x : (
# 11 "src/lib/parser.mly"
       (Symbol.symbol)
# 459 "src/lib/parser.ml"
            )), _startpos_x_) = _menhir_stack in
            let _2 = () in
            let _v : (Absyn.parameter Location.loc) = let _endpos = _endpos_y_ in
            let _startpos = _startpos_x_ in
            let _loc = (_startpos, _endpos) in
            
# 113 "src/lib/parser.mly"
                     (_loc, (x, y))
# 468 "src/lib/parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | COMMA ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ID _v ->
                    _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState76 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76)
            | RPAREN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, (x : (Absyn.parameter Location.loc))) = _menhir_stack in
                let _v : (Absyn.parameter Location.loc list) = 
# 241 "<standard.mly>"
    ( [ x ] )
# 492 "src/lib/parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_COMMA_parameter_ _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_separated_nonempty_list_SEMI_exp_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Absyn.lexp list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (Absyn.lexp list)) = _v in
        let _v : (Absyn.lexp list) = 
# 144 "<standard.mly>"
    ( x )
# 529 "src/lib/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMI_exp__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState104 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (Absyn.lexp list)) = _v in
        let (_menhir_stack, _endpos_x_, _menhir_s, (x : (Absyn.lexp)), _startpos_x_) = _menhir_stack in
        let _2 = () in
        let _v : (Absyn.lexp list) = 
# 243 "<standard.mly>"
    ( x :: xs )
# 541 "src/lib/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMI_exp_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_funcdec : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (Absyn.fundec Location.loc) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FUNCTION ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IN | TYPE | VAR ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _endpos_x_, _menhir_s, (x : (Absyn.fundec Location.loc)), _startpos_x_) = _menhir_stack in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Absyn.fundec Location.loc list) = 
# 221 "<standard.mly>"
    ( [ x ] )
# 564 "src/lib/parser.ml"
         in
        _menhir_goto_nonempty_list_funcdec_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92

and _menhir_goto_vardec : _menhir_env -> 'ttv_tail -> _menhir_state -> (Absyn.ldec) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (v : (Absyn.ldec)) = _v in
    let _v : (Absyn.ldec) = 
# 98 "src/lib/parser.mly"
              (v)
# 580 "src/lib/parser.ml"
     in
    _menhir_goto_dec _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_separated_nonempty_list_COMMA_exp_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Absyn.lexp list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (Absyn.lexp list)) = _v in
        let _v : (Absyn.lexp list) = 
# 144 "<standard.mly>"
    ( x )
# 594 "src/lib/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_exp__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (Absyn.lexp list)) = _v in
        let (_menhir_stack, _endpos_x_, _menhir_s, (x : (Absyn.lexp)), _startpos_x_) = _menhir_stack in
        let _2 = () in
        let _v : (Absyn.lexp list) = 
# 243 "<standard.mly>"
    ( x :: xs )
# 606 "src/lib/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_exp_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run21 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Absyn.lexp) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState21 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INTEGER _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState21 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LOGIC _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState21 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | REAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState21 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState21 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21

and _menhir_run23 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Absyn.lexp) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState23 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState23 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INTEGER _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState23 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LOGIC _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState23 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | REAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState23 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState23 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23

and _menhir_run25 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Absyn.lexp) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState25 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState25 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INTEGER _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState25 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LOGIC _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState25 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | REAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState25 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState25 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25

and _menhir_run31 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Absyn.lexp) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState31 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState31 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INTEGER _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState31 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LOGIC _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState31 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | REAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState31 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState31 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31

and _menhir_run33 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Absyn.lexp) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState33 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState33 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INTEGER _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState33 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LOGIC _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState33 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | REAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState33 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState33 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33

and _menhir_run27 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Absyn.lexp) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState27 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState27 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INTEGER _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState27 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LOGIC _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState27 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | REAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState27 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState27 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27

and _menhir_run35 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Absyn.lexp) * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _startpos ->
    let _menhir_stack = (_menhir_stack, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState35 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState35 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INTEGER _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState35 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LOGIC _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState35 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | REAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState35 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState35 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35

and _menhir_run37 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Absyn.lexp) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState37 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INTEGER _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState37 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LOGIC _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState37 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | REAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState37 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState37 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run39 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Absyn.lexp) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState39 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INTEGER _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState39 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LOGIC _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState39 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | REAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState39 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState39 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39

and _menhir_run41 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Absyn.lexp) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState41 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState41 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INTEGER _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState41 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LOGIC _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState41 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | REAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState41 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState41 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41

and _menhir_run43 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Absyn.lexp) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState43 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState43 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INTEGER _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState43 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LOGIC _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState43 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | REAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState43 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState43 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_run45 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Absyn.lexp) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState45 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState45 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INTEGER _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState45 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LOGIC _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState45 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | REAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState45 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState45 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45

and _menhir_run29 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Absyn.lexp) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState29 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState29 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INTEGER _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState29 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LOGIC _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState29 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | REAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState29 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState29 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29

and _menhir_run47 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Absyn.lexp) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState47 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState47 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INTEGER _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState47 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LOGIC _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState47 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | REAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState47 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState47 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47

and _menhir_goto_loption_separated_nonempty_list_SEMI_exp__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Absyn.lexp list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos__3_ = _endpos in
        let ((_menhir_stack, _menhir_s, _startpos__1_), _, (xs : (Absyn.lexp list))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Absyn.lexp) = let exps = 
# 232 "<standard.mly>"
    ( xs )
# 1082 "src/lib/parser.ml"
         in
        let _endpos = _endpos__3_ in
        let _startpos = _startpos__1_ in
        let _loc = (_startpos, _endpos) in
        
# 76 "src/lib/parser.mly"
                                                  (_loc, SeqExp exps)
# 1090 "src/lib/parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Absyn.ldec list) = 
# 211 "<standard.mly>"
    ( [] )
# 1105 "src/lib/parser.ml"
     in
    _menhir_goto_list_dec_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BREAK ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState61 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState61 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INTEGER _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState61 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LOGIC _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState61 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | REAL _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState61 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState61 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61)
        | COLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ID _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ASSIGN ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | BREAK ->
                        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState12 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | ID _v ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState12 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | IF ->
                        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | INTEGER _v ->
                        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState12 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | LET ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | LOGIC _v ->
                        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState12 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | LPAREN ->
                        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | MINUS ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | REAL _v ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState12 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | STRING _v ->
                        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState12 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | WHILE ->
                        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (((_menhir_stack, _menhir_s, _), _, _, _), _, _, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run63 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ID _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _endpos_x_ = _endpos in
                let (x : (
# 11 "src/lib/parser.mly"
       (Symbol.symbol)
# 1252 "src/lib/parser.ml"
                )) = _v in
                let _startpos_x_ = _startpos in
                let _endpos = _endpos_x_ in
                let _v : (Absyn.ltypecons) = let _endpos = _endpos_x_ in
                let _startpos = _startpos_x_ in
                let _loc = (_startpos, _endpos) in
                
# 106 "src/lib/parser.mly"
          (_loc, NameCons(x))
# 1262 "src/lib/parser.ml"
                 in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _endpos_t_ = _endpos in
                let (t : (Absyn.ltypecons)) = _v in
                let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos_name_, (name : (
# 11 "src/lib/parser.mly"
       (Symbol.symbol)
# 1271 "src/lib/parser.ml"
                )), _startpos_name_) = _menhir_stack in
                let _3 = () in
                let _1 = () in
                let _startpos = _startpos__1_ in
                let _endpos = _endpos_t_ in
                let _v : (Absyn.typedec Location.loc) = let _endpos = _endpos_t_ in
                let _startpos = _startpos__1_ in
                let _loc = (_startpos, _endpos) in
                
# 103 "src/lib/parser.mly"
                                    (_loc, (name, t))
# 1283 "src/lib/parser.ml"
                 in
                let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | TYPE ->
                    _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FUNCTION | IN | VAR ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _endpos_x_, _menhir_s, (x : (Absyn.typedec Location.loc)), _startpos_x_) = _menhir_stack in
                    let _startpos = _startpos_x_ in
                    let _endpos = _endpos_x_ in
                    let _v : (Absyn.typedec Location.loc list) = 
# 221 "<standard.mly>"
    ( [ x ] )
# 1300 "src/lib/parser.ml"
                     in
                    _menhir_goto_nonempty_list_typedec_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run68 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let _menhir_stack = (_menhir_stack, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ID _v ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState70 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | RPAREN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_s = MenhirState70 in
                let _v : (Absyn.parameter Location.loc list) = 
# 142 "<standard.mly>"
    ( [] )
# 1355 "src/lib/parser.ml"
                 in
                _menhir_goto_loption_separated_nonempty_list_COMMA_parameter__ _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_loption_separated_nonempty_list_COMMA_exp__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Absyn.lexp list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos__4_ = _endpos in
        let (((_menhir_stack, _endpos_func_, _menhir_s, (func : (
# 11 "src/lib/parser.mly"
       (Symbol.symbol)
# 1391 "src/lib/parser.ml"
        )), _startpos_func_), _startpos__2_), _, (xs : (Absyn.lexp list))) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _startpos = _startpos_func_ in
        let _endpos = _endpos__4_ in
        let _v : (Absyn.lexp) = let args = 
# 232 "<standard.mly>"
    ( xs )
# 1400 "src/lib/parser.ml"
         in
        let _endpos = _endpos__4_ in
        let _startpos = _startpos_func_ in
        let _loc = (_startpos, _endpos) in
        
# 75 "src/lib/parser.mly"
                                                      (_loc, CallExp(func, args))
# 1408 "src/lib/parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_exp : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (Absyn.lexp) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MOD ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | POW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | RPAREN | SEMI | THEN | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_v_, _menhir_s, (v : (Absyn.lvar)), _startpos_v_), _endpos_e_, _, (e : (Absyn.lexp)), _startpos_e_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_v_ in
            let _endpos = _endpos_e_ in
            let _v : (Absyn.lexp) = let _endpos = _endpos_e_ in
            let _startpos = _startpos_v_ in
            let _loc = (_startpos, _endpos) in
            
# 77 "src/lib/parser.mly"
                              (_loc, AssignExp (v, e))
# 1467 "src/lib/parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | POW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DIV | DO | ELSE | END | EOF | EQ | FUNCTION | GE | GT | IN | LE | LT | MINUS | MOD | NE | OR | PLUS | RPAREN | SEMI | THEN | TIMES | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_f_, _menhir_s, (f : (Absyn.lexp)), _startpos_f_), _endpos_s_, _, (s : (Absyn.lexp)), _startpos_s_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_f_ in
            let _endpos = _endpos_s_ in
            let _v : (Absyn.lexp) = let _endpos = _endpos_s_ in
            let _startpos = _startpos_f_ in
            let _loc = (_startpos, _endpos) in
            
# 58 "src/lib/parser.mly"
                         (_loc, OpExp (TimesOp, f, s))
# 1495 "src/lib/parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState23 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | POW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DIV | DO | ELSE | END | EOF | EQ | FUNCTION | GE | GT | IN | LE | LT | MINUS | MOD | NE | OR | PLUS | RPAREN | SEMI | THEN | TIMES | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_f_, _menhir_s, (f : (Absyn.lexp)), _startpos_f_), _endpos_s_, _, (s : (Absyn.lexp)), _startpos_s_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_f_ in
            let _endpos = _endpos_s_ in
            let _v : (Absyn.lexp) = let _endpos = _endpos_s_ in
            let _startpos = _startpos_f_ in
            let _loc = (_startpos, _endpos) in
            
# 61 "src/lib/parser.mly"
                         (_loc, OpExp (PowOp, f, s))
# 1523 "src/lib/parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState25 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | POW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | EQ | FUNCTION | GE | GT | IN | LE | LT | MINUS | NE | OR | PLUS | RPAREN | SEMI | THEN | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_f_, _menhir_s, (f : (Absyn.lexp)), _startpos_f_), _endpos_s_, _, (s : (Absyn.lexp)), _startpos_s_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_f_ in
            let _endpos = _endpos_s_ in
            let _v : (Absyn.lexp) = let _endpos = _endpos_s_ in
            let _startpos = _startpos_f_ in
            let _loc = (_startpos, _endpos) in
            
# 56 "src/lib/parser.mly"
                         (_loc, OpExp (PlusOp, f, s))
# 1557 "src/lib/parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | POW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DIV | DO | ELSE | END | EOF | EQ | FUNCTION | GE | GT | IN | LE | LT | MINUS | MOD | NE | OR | PLUS | RPAREN | SEMI | THEN | TIMES | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_f_, _menhir_s, (f : (Absyn.lexp)), _startpos_f_), _endpos_s_, _, (s : (Absyn.lexp)), _startpos_s_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_f_ in
            let _endpos = _endpos_s_ in
            let _v : (Absyn.lexp) = let _endpos = _endpos_s_ in
            let _startpos = _startpos_f_ in
            let _loc = (_startpos, _endpos) in
            
# 60 "src/lib/parser.mly"
                         (_loc, OpExp (ModOp, f, s))
# 1585 "src/lib/parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | POW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DIV | DO | ELSE | END | EOF | EQ | FUNCTION | GE | GT | IN | LE | LT | MINUS | MOD | NE | OR | PLUS | RPAREN | SEMI | THEN | TIMES | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_f_, _menhir_s, (f : (Absyn.lexp)), _startpos_f_), _endpos_s_, _, (s : (Absyn.lexp)), _startpos_s_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_f_ in
            let _endpos = _endpos_s_ in
            let _v : (Absyn.lexp) = let _endpos = _endpos_s_ in
            let _startpos = _startpos_f_ in
            let _loc = (_startpos, _endpos) in
            
# 59 "src/lib/parser.mly"
                         (_loc, OpExp (DivOp, f, s))
# 1613 "src/lib/parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MOD ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | POW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RPAREN | SEMI | THEN | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_f_, _menhir_s, (f : (Absyn.lexp)), _startpos_f_), _endpos_s_, _, (s : (Absyn.lexp)), _startpos_s_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_f_ in
            let _endpos = _endpos_s_ in
            let _v : (Absyn.lexp) = let _endpos = _endpos_s_ in
            let _startpos = _startpos_f_ in
            let _loc = (_startpos, _endpos) in
            
# 69 "src/lib/parser.mly"
                         (_loc, OpExp (OrOp, f, s))
# 1665 "src/lib/parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MOD ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | POW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RPAREN | SEMI | THEN | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_f_, _menhir_s, (f : (Absyn.lexp)), _startpos_f_), _endpos_s_, _, (s : (Absyn.lexp)), _startpos_s_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_f_ in
            let _endpos = _endpos_s_ in
            let _v : (Absyn.lexp) = let _endpos = _endpos_s_ in
            let _startpos = _startpos_f_ in
            let _loc = (_startpos, _endpos) in
            
# 63 "src/lib/parser.mly"
                          (_loc, OpExp (NeOp, f, s))
# 1703 "src/lib/parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | POW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | EQ | FUNCTION | GE | GT | IN | LE | LT | MINUS | NE | OR | PLUS | RPAREN | SEMI | THEN | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _endpos_f_, _menhir_s, (f : (Absyn.lexp)), _startpos_f_), _startpos__2_), _endpos_s_, _, (s : (Absyn.lexp)), _startpos_s_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_f_ in
            let _endpos = _endpos_s_ in
            let _v : (Absyn.lexp) = let _endpos = _endpos_s_ in
            let _startpos = _startpos_f_ in
            let _loc = (_startpos, _endpos) in
            
# 57 "src/lib/parser.mly"
                         (_loc, OpExp (MinusOp, f, s))
# 1737 "src/lib/parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MOD ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | POW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RPAREN | SEMI | THEN | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_f_, _menhir_s, (f : (Absyn.lexp)), _startpos_f_), _endpos_s_, _, (s : (Absyn.lexp)), _startpos_s_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_f_ in
            let _endpos = _endpos_s_ in
            let _v : (Absyn.lexp) = let _endpos = _endpos_s_ in
            let _startpos = _startpos_f_ in
            let _loc = (_startpos, _endpos) in
            
# 66 "src/lib/parser.mly"
                         (_loc, OpExp (LtOp, f, s))
# 1775 "src/lib/parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MOD ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | POW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RPAREN | SEMI | THEN | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_f_, _menhir_s, (f : (Absyn.lexp)), _startpos_f_), _endpos_s_, _, (s : (Absyn.lexp)), _startpos_s_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_f_ in
            let _endpos = _endpos_s_ in
            let _v : (Absyn.lexp) = let _endpos = _endpos_s_ in
            let _startpos = _startpos_f_ in
            let _loc = (_startpos, _endpos) in
            
# 67 "src/lib/parser.mly"
                          (_loc, OpExp (LeOp, f, s))
# 1813 "src/lib/parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MOD ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | POW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RPAREN | SEMI | THEN | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_f_, _menhir_s, (f : (Absyn.lexp)), _startpos_f_), _endpos_s_, _, (s : (Absyn.lexp)), _startpos_s_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_f_ in
            let _endpos = _endpos_s_ in
            let _v : (Absyn.lexp) = let _endpos = _endpos_s_ in
            let _startpos = _startpos_f_ in
            let _loc = (_startpos, _endpos) in
            
# 64 "src/lib/parser.mly"
                         (_loc, OpExp (GtOp, f, s))
# 1851 "src/lib/parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MOD ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | POW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RPAREN | SEMI | THEN | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_f_, _menhir_s, (f : (Absyn.lexp)), _startpos_f_), _endpos_s_, _, (s : (Absyn.lexp)), _startpos_s_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_f_ in
            let _endpos = _endpos_s_ in
            let _v : (Absyn.lexp) = let _endpos = _endpos_s_ in
            let _startpos = _startpos_f_ in
            let _loc = (_startpos, _endpos) in
            
# 65 "src/lib/parser.mly"
                          (_loc, OpExp (GeOp, f, s))
# 1889 "src/lib/parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MOD ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | POW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RPAREN | SEMI | THEN | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_f_, _menhir_s, (f : (Absyn.lexp)), _startpos_f_), _endpos_s_, _, (s : (Absyn.lexp)), _startpos_s_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_f_ in
            let _endpos = _endpos_s_ in
            let _v : (Absyn.lexp) = let _endpos = _endpos_s_ in
            let _startpos = _startpos_f_ in
            let _loc = (_startpos, _endpos) in
            
# 62 "src/lib/parser.mly"
                         (_loc, OpExp (EqOp, f, s))
# 1927 "src/lib/parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MOD ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | POW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | OR | RPAREN | SEMI | THEN | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_f_, _menhir_s, (f : (Absyn.lexp)), _startpos_f_), _endpos_s_, _, (s : (Absyn.lexp)), _startpos_s_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_f_ in
            let _endpos = _endpos_s_ in
            let _v : (Absyn.lexp) = let _endpos = _endpos_s_ in
            let _startpos = _startpos_f_ in
            let _loc = (_startpos, _endpos) in
            
# 68 "src/lib/parser.mly"
                         (_loc, OpExp (AndOp, f, s))
# 1977 "src/lib/parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState53 | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BREAK ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState53 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState53 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INTEGER _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState53 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LOGIC _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState53 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | REAL _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState53 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState53 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53)
        | DIV ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MOD ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | POW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _endpos_x_, _menhir_s, (x : (Absyn.lexp)), _startpos_x_) = _menhir_stack in
            let _v : (Absyn.lexp list) = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2056 "src/lib/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_exp_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MOD ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | POW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BREAK ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState56 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState56 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INTEGER _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState56 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LOGIC _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState56 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | REAL _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState56 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState56 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56)
        | TIMES ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState56 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | ELSE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BREAK ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState58 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState58 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INTEGER _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState58 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LOGIC _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState58 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | REAL _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState58 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState58 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MOD ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | POW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DO | END | EOF | FUNCTION | IN | RPAREN | SEMI | THEN | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, _startpos__1_), _endpos_x_, _, (x : (Absyn.lexp)), _startpos_x_), _endpos_y_, _, (y : (Absyn.lexp)), _startpos_y_) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos_y_ in
            let _v : (Absyn.lexp) = let _endpos = _endpos_y_ in
            let _startpos = _startpos__1_ in
            let _loc = (_startpos, _endpos) in
            
# 71 "src/lib/parser.mly"
                           (_loc, IfExp(x, y, None))
# 2212 "src/lib/parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState58 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MOD ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | POW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | RPAREN | SEMI | THEN | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s, _startpos__1_), _endpos_x_, _, (x : (Absyn.lexp)), _startpos_x_), _endpos_y_, _, (y : (Absyn.lexp)), _startpos_y_), _endpos_z_, _, (z : (Absyn.lexp)), _startpos_z_) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos_z_ in
            let _v : (Absyn.lexp) = let _endpos = _endpos_z_ in
            let _startpos = _startpos__1_ in
            let _loc = (_startpos, _endpos) in
            
# 70 "src/lib/parser.mly"
                                        (_loc, IfExp(x, y, Some(z)))
# 2268 "src/lib/parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState12 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MOD ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | POW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | FUNCTION | IN | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s, _startpos__1_), _endpos_v_, (v : (
# 11 "src/lib/parser.mly"
       (Symbol.symbol)
# 2315 "src/lib/parser.ml"
            )), _startpos_v_), _endpos_t_, (t : (
# 11 "src/lib/parser.mly"
       (Symbol.symbol)
# 2319 "src/lib/parser.ml"
            )), _startpos_t_), _endpos_e_, _, (e : (Absyn.lexp)), _startpos_e_) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Absyn.ldec) = let _endpos = _endpos_e_ in
            let _startpos = _startpos__1_ in
            let _loc_t_ = (_startpos_t_, _endpos_t_) in
            let _loc = (_startpos, _endpos) in
            
# 88 "src/lib/parser.mly"
                                (_loc, VarDec (v, Some (_loc_t_, t), e))
# 2331 "src/lib/parser.ml"
             in
            _menhir_goto_vardec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState61 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MOD ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | POW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | FUNCTION | IN | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, _startpos__1_), _endpos_v_, (v : (
# 11 "src/lib/parser.mly"
       (Symbol.symbol)
# 2378 "src/lib/parser.ml"
            )), _startpos_v_), _endpos_e_, _, (e : (Absyn.lexp)), _startpos_e_) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Absyn.ldec) = let _endpos = _endpos_e_ in
            let _startpos = _startpos__1_ in
            let _loc = (_startpos, _endpos) in
            
# 89 "src/lib/parser.mly"
                       (_loc, VarDec (v, None, e))
# 2388 "src/lib/parser.ml"
             in
            _menhir_goto_vardec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState80 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MOD ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | POW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | FUNCTION | IN | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((((_menhir_stack, _menhir_s, _startpos__1_), _endpos_f_, (f : (
# 11 "src/lib/parser.mly"
       (Symbol.symbol)
# 2435 "src/lib/parser.ml"
            )), _startpos_f_), _startpos__3_), _, (xs : (Absyn.parameter Location.loc list))), _endpos__5_), _endpos_e_, _, (e : (Absyn.lexp)), _startpos_e_) = _menhir_stack in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos_e_ in
            let _v : (Absyn.fundec Location.loc) = let ps = 
# 232 "<standard.mly>"
    ( xs )
# 2446 "src/lib/parser.ml"
             in
            let _endpos = _endpos_e_ in
            let _startpos = _startpos__1_ in
            let _loc = (_startpos, _endpos) in
            
# 109 "src/lib/parser.mly"
                                                                          (_loc, (f, ps, None, e))
# 2454 "src/lib/parser.ml"
             in
            _menhir_goto_funcdec _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState84 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MOD ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | POW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | FUNCTION | IN | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((((_menhir_stack, _menhir_s, _startpos__1_), _endpos_f_, (f : (
# 11 "src/lib/parser.mly"
       (Symbol.symbol)
# 2501 "src/lib/parser.ml"
            )), _startpos_f_), _startpos__3_), _, (xs : (Absyn.parameter Location.loc list))), _endpos__5_), _endpos_v_, (v : (
# 11 "src/lib/parser.mly"
       (Symbol.symbol)
# 2505 "src/lib/parser.ml"
            )), _startpos_v_), _endpos_e_, _, (e : (Absyn.lexp)), _startpos_e_) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos_e_ in
            let _v : (Absyn.fundec Location.loc) = let ps = 
# 232 "<standard.mly>"
    ( xs )
# 2517 "src/lib/parser.ml"
             in
            let _endpos = _endpos_e_ in
            let _startpos = _startpos__1_ in
            let _loc_v_ = (_startpos_v_, _endpos_v_) in
            let _loc = (_startpos, _endpos) in
            
# 110 "src/lib/parser.mly"
                                                                                     (_loc, (f, ps, Some (_loc_v_, v), e))
# 2526 "src/lib/parser.ml"
             in
            _menhir_goto_funcdec _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState95 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos__5_ = _endpos in
            let (((_menhir_stack, _menhir_s, _startpos__1_), _, (d : (Absyn.ldec list))), _endpos_e_, _, (e : (Absyn.lexp)), _startpos_e_) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__5_ in
            let _v : (Absyn.lexp) = let _endpos = _endpos__5_ in
            let _startpos = _startpos__1_ in
            let _loc = (_startpos, _endpos) in
            
# 74 "src/lib/parser.mly"
                               (_loc, LetExp (d, e))
# 2562 "src/lib/parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MOD ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | POW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState104 | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MOD ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | POW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BREAK ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState104 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState104 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INTEGER _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState104 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LOGIC _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState104 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | REAL _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState104 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState104 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104)
        | TIMES ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _endpos_x_, _menhir_s, (x : (Absyn.lexp)), _startpos_x_) = _menhir_stack in
            let _v : (Absyn.lexp list) = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2665 "src/lib/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_SEMI_exp_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | POW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DO | ELSE | END | EOF | EQ | FUNCTION | GE | GT | IN | LE | LT | MINUS | NE | OR | PLUS | RPAREN | SEMI | THEN | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos_e_, _, (e : (Absyn.lexp)), _startpos_e_) = _menhir_stack in
            let _1 = () in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos_e_ in
            let _v : (Absyn.lexp) = let _endpos = _endpos_e_ in
            let _startpos = _startpos__1_ in
            let _loc = (_startpos, _endpos) in
            
# 55 "src/lib/parser.mly"
                         (_loc, OpExp (MinusOp, (_loc, IntExp 0), e))
# 2699 "src/lib/parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState1 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | DO ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BREAK ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState108 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INTEGER _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState108 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LOGIC _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState108 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | REAL _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState108 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState108 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MOD ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | POW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState108 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MOD ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | POW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | DO | ELSE | END | EOF | FUNCTION | IN | RPAREN | SEMI | THEN | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, _startpos__1_), _endpos_t_, _, (t : (Absyn.lexp)), _startpos_t_), _endpos_b_, _, (b : (Absyn.lexp)), _startpos_b_) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos_b_ in
            let _v : (Absyn.lexp) = let _endpos = _endpos_b_ in
            let _startpos = _startpos__1_ in
            let _loc = (_startpos, _endpos) in
            
# 72 "src/lib/parser.mly"
                            (_loc, WhileExp (t, b))
# 2824 "src/lib/parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _endpos_x_, _menhir_s, (x : (Absyn.lexp)), _startpos_x_) = _menhir_stack in
            let _2 = () in
            let _v : (
# 42 "src/lib/parser.mly"
       (Absyn.lexp)
# 2850 "src/lib/parser.ml"
            ) = 
# 47 "src/lib/parser.mly"
               (x)
# 2854 "src/lib/parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (
# 42 "src/lib/parser.mly"
       (Absyn.lexp)
# 2861 "src/lib/parser.ml"
            )) = _v in
            Obj.magic _1
        | EQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MOD ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | POW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState108 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState104 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState95 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState92 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState87 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState84 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, _), _), _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState80 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, _), _, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState61 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState58 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState56 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState25 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState23 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState12 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, _), _, _, _), _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState1 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState1 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState1 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INTEGER _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState1 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LOGIC _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState1 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | REAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState1 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState1 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1

and _menhir_run2 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 9 "src/lib/parser.mly"
       (string)
# 3084 "src/lib/parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos_x_ = _endpos in
    let (x : (
# 9 "src/lib/parser.mly"
       (string)
# 3093 "src/lib/parser.ml"
    )) = _v in
    let _startpos_x_ = _startpos in
    let _startpos = _startpos_x_ in
    let _endpos = _endpos_x_ in
    let _v : (Absyn.lexp) = let _endpos = _endpos_x_ in
    let _startpos = _startpos_x_ in
    let _loc = (_startpos, _endpos) in
    
# 53 "src/lib/parser.mly"
                         (_loc, StringExp x)
# 3104 "src/lib/parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run3 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 10 "src/lib/parser.mly"
       (float)
# 3111 "src/lib/parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos_x_ = _endpos in
    let (x : (
# 10 "src/lib/parser.mly"
       (float)
# 3120 "src/lib/parser.ml"
    )) = _v in
    let _startpos_x_ = _startpos in
    let _startpos = _startpos_x_ in
    let _endpos = _endpos_x_ in
    let _v : (Absyn.lexp) = let _endpos = _endpos_x_ in
    let _startpos = _startpos_x_ in
    let _loc = (_startpos, _endpos) in
    
# 51 "src/lib/parser.mly"
                       (_loc, RealExp x)
# 3131 "src/lib/parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState4 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState4 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INTEGER _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState4 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LOGIC _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState4 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | REAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState4 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState4 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState5 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState5 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INTEGER _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState5 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LOGIC _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState5 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | REAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState5 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState5 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState5 in
        let _v : (Absyn.lexp list) = 
# 142 "<standard.mly>"
    ( [] )
# 3202 "src/lib/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMI_exp__ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5

and _menhir_run6 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 7 "src/lib/parser.mly"
       (bool)
# 3213 "src/lib/parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos_x_ = _endpos in
    let (x : (
# 7 "src/lib/parser.mly"
       (bool)
# 3222 "src/lib/parser.ml"
    )) = _v in
    let _startpos_x_ = _startpos in
    let _startpos = _startpos_x_ in
    let _endpos = _endpos_x_ in
    let _v : (Absyn.lexp) = let _endpos = _endpos_x_ in
    let _startpos = _startpos_x_ in
    let _loc = (_startpos, _endpos) in
    
# 52 "src/lib/parser.mly"
                          (_loc, BoolExp x)
# 3233 "src/lib/parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FUNCTION ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TYPE ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | VAR ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IN ->
        _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7

and _menhir_run13 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 8 "src/lib/parser.mly"
       (int)
# 3259 "src/lib/parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos_x_ = _endpos in
    let (x : (
# 8 "src/lib/parser.mly"
       (int)
# 3268 "src/lib/parser.ml"
    )) = _v in
    let _startpos_x_ = _startpos in
    let _startpos = _startpos_x_ in
    let _endpos = _endpos_x_ in
    let _v : (Absyn.lexp) = let _endpos = _endpos_x_ in
    let _startpos = _startpos_x_ in
    let _loc = (_startpos, _endpos) in
    
# 50 "src/lib/parser.mly"
                          (_loc, IntExp x)
# 3279 "src/lib/parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState14 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INTEGER _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState14 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LOGIC _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState14 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | REAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState14 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState14 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14

and _menhir_run15 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 11 "src/lib/parser.mly"
       (Symbol.symbol)
# 3319 "src/lib/parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BREAK ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState16 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | ID _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState16 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IF ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | INTEGER _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState16 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LOGIC _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState16 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MINUS ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | REAL _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState16 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState16 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | WHILE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState16 in
            let _v : (Absyn.lexp list) = 
# 142 "<standard.mly>"
    ( [] )
# 3361 "src/lib/parser.ml"
             in
            _menhir_goto_loption_separated_nonempty_list_COMMA_exp__ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16)
    | AND | ASSIGN | COMMA | DIV | DO | ELSE | END | EOF | EQ | FUNCTION | GE | GT | IN | LE | LT | MINUS | MOD | NE | OR | PLUS | POW | RPAREN | SEMI | THEN | TIMES | TYPE | VAR ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _endpos_x_, _menhir_s, (x : (
# 11 "src/lib/parser.mly"
       (Symbol.symbol)
# 3373 "src/lib/parser.ml"
        )), _startpos_x_) = _menhir_stack in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Absyn.lvar) = let _endpos = _endpos_x_ in
        let _startpos = _startpos_x_ in
        let _loc = (_startpos, _endpos) in
        
# 92 "src/lib/parser.mly"
          (_loc, SimpleVar x)
# 3383 "src/lib/parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BREAK ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState19 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INTEGER _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState19 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LOGIC _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState19 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | REAL _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState19 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState19 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19)
        | AND | COMMA | DIV | DO | ELSE | END | EOF | EQ | FUNCTION | GE | GT | IN | LE | LT | MINUS | MOD | NE | OR | PLUS | POW | RPAREN | SEMI | THEN | TIMES | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _endpos_v_, _menhir_s, (v : (Absyn.lvar)), _startpos_v_) = _menhir_stack in
            let _startpos = _startpos_v_ in
            let _endpos = _endpos_v_ in
            let _v : (Absyn.lexp) = let _endpos = _endpos_v_ in
            let _startpos = _startpos_v_ in
            let _loc = (_startpos, _endpos) in
            
# 54 "src/lib/parser.mly"
                          (_loc, VarExp v)
# 3432 "src/lib/parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run17 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos__1_ = _endpos in
    let _startpos__1_ = _startpos in
    let _1 = () in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (Absyn.lexp) = let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 73 "src/lib/parser.mly"
                          (_loc, BreakExp)
# 3463 "src/lib/parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and program : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 42 "src/lib/parser.mly"
       (Absyn.lexp)
# 3482 "src/lib/parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = let _tok = Obj.magic () in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INTEGER _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LOGIC _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | REAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

# 269 "<standard.mly>"
  

# 3526 "src/lib/parser.ml"
