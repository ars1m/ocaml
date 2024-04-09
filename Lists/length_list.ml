let rec length_list list =
  match list with
  | [] -> 0
  | _ :: t -> 1 + length_list t;;

length_list [4;5;6;7;8;9;10];;
