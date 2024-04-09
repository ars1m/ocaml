let rec product_list list =
  match list with
  | [] -> 1
  | h :: t -> h * product_list t;;

product_list [1;2;3;4;5;6;7];;

