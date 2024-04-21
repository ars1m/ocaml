type 'a tree =
  |Leaf
  |Node of 'a * 'a tree * 'a tree;;

let t =
  Node(4,
       Node(2,
            Node(1, Leaf, Leaf),
            Node(3, Leaf, Leaf)),
       Node(5,
            Node(6, Leaf, Leaf),
            Node(7, Leaf, Leaf)));;
(* Make this tree bigger *)
let tree_2 =
  Node(4,
       Node(2,
            Node(4,
                 Node(1, Leaf, Leaf),
                 Node(3, Leaf, Leaf)),
            Node(5,
                 Node(6, Leaf, Leaf),
                 Node(7, Leaf, Leaf))),
       Node(5,
            Node(6, Leaf, Leaf),
            Node(7, Leaf, Leaf)));;

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
