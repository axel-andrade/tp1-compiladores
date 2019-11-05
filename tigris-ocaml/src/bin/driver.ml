
module L = Lexing

let scan lexbuf =
  
  let rec go () =
    
    let tok = Lexer.token lexbuf in
   
    Format.printf
      "%a %s\n"
      Location.pp_location (Location.curr_loc lexbuf)
      (Lexer.show_token tok);
    
    match tok with
    | Parser.EOF -> ()
    | _ -> go ()
  in
  
  go ()


let main () =
 
  Printexc.record_backtrace true;
  Cmdline.parse_cmdline ();

  
  let lexbuf = L.from_channel (Cmdline.get_input_channel ()) in
  Lexer.set_filename lexbuf (Cmdline.get_input_file_name ());

  try
    
    if Cmdline.get_show_tokens () then
      scan lexbuf
    else
      let ast = Parser.program Lexer.token lexbuf in
      if Cmdline.get_show_ast () then (
        print_endline (Absyn.show_lexp ast);
        let tree = Tree.map Absyntotree.node_txt (Absyntotree.tree_of_lexp ast) in
        print_endline (Tree.string_of_tree tree);
        print_newline ();
        let boxtree = Tree.box_of_tree tree in
        print_endline (Box.string_of_box boxtree);
        let dotchannel = open_out "ast.dot" in
        output_string dotchannel (Tree.dot_of_tree "AST" tree);
       )

  with
  | Error.Error (loc, msg) ->
     Format.printf "%a error: %s\n" Location.pp_location loc msg;
     exit 1
  | Parser.Error ->
     Format.printf "%a error: syntax\n" Location.pp_position lexbuf.L.lex_curr_p;
     exit 2

let () = main ()
