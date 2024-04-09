let rec last_two_elements_tail list acc =
  match list with
  | [] | [_] -> acc
  | [x; y] -> Some (x, y)
  | h :: t -> last_two_elements_tail t (
    match acc with 
    |Some (_, x) -> Some (x, h)
    |None -> Some (h, h)
);;

let last_two_elements list = last_two_elements_tail list None;;

last_two_elements [4;5;6;7;8;9;10];;
