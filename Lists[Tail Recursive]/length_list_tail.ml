let rec length_list_tail list acc =
  match list with
  | [] -> acc
  | _ :: t -> length_list_tail t (acc + 1);;

let length_list list = length_list_tail list 0;;

length_list [4;5;6;7;8;9;10];;