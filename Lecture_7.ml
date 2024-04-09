let rec sum_digits n =
  if (n = 0 ) then 0
  else (n mod 10) + sum_digits (n/10);;


sum_digits 134;;
type point = float * float
type shape =
  |Point of point
  |Circle of point * float
  |Rect of point * point;;

type 'a tree = 
  |Leaf
  |Node of 'a * 'a tree * 'a tree;;

let t=
  Node(4,
       Node(2,
            Node(1,Leaf,Leaf),
            Node(3,Leaf,Leaf)),
       Node(5,
            Node(6,Leaf,Leaf),
            Node(7,Leaf,Leaf)));;

let rec sum = function
  |Leaf -> 0  (* Base Case -> Returns 0 when it reaches a leaf *)
  |Node (node,left, right) -> node + sum left + sum right;;

sum t;;

let rec leaves = function
  |Leaf -> 1
  |Node (node,left,right) -> leaves left + leaves right;;

leaves t;;

let rec height = function 
  |Leaf -> 0 
  |Node (node, left ,right)-> 1 + (height left);;
height t;;

let rec prod = function
  |Leaf -> 1
  |Node (node,left, right) -> node * prod left * prod right;;