type 'a tree =
  |Leaf
  |Node of 'a * 'a tree * 'a tree;;

let t = Node(1,
          Node(7,
          )
          Node(9,)

let rec amount_of_node = function
  | Leaf -> 0
  | Node (_, left, right) -> 1 + amount_of_node left + amount_of_node right
  

let rec amount_of_leaf = function
  | Leaf -> 1
  | Node (_, left, right) -> amount_of_leaf left + amount_of_leaf right;;

(* Test Cases *)

amount_of_node t;;
amount_of_node tree_2;;

(* amount_of_leaf t;;
amount_of_leaf tree_2;; *)
