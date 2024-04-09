let rec reverse_list list=
  match list with
  | [] -> []
  | h :: t -> reverse_list t @ [h];;

reverse_list [4;5;6;7;8;9;10];;