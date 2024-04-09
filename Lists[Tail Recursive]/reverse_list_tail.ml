let rec reverse_list_tail list acc =
  match list with
  | [] -> acc
  | h :: t -> reverse_list_tail t (h :: acc);;

let reverse_list list = reverse_list_tail list [];;
reverse_list [4;5;6;7;8;9;10];;