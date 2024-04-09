let rec reverse_list_tail list acc =
  match list with
  | [] -> acc
  | h :: t -> reverse_list_tail t (h :: acc);;

let check_palindrome list =
  list = reverse_list_tail list [];;

check_palindrome [1; 2; 3; 2; 1];;
