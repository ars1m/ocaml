let rec product_list_tail list acc =
  match list with 
  | [] -> acc
  | h :: t -> product_list_tail t (h * acc);;

let product_list list = product_list_tail list 1;;

product_list [1;2;3;4;5;6;7];;