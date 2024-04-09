let rec reverse_list = 
  match list with
  | [] -> []
  | h :: t -> reverse_list t @ [h]

let is_palindrome list =
  list = reverse_list list
;;

is_palindrome [1; 2; 3; 2; 1];;

