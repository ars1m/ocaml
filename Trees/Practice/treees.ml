type 'a tree=
|Leaf
|Node of 'a node

and 'a node ={
  value: 'a;
  left: 'a tree;
  right: 'a tree
}
(* represents
      2
     / \ 
    1   3  *)
let t =
  Node {
    value = 2; 
    left  = Node {value=1; left=Leaf; right=Leaf};
    right = Node {value=3; left=Leaf; right=Leaf}  
  }

let rec sum_of_tree = function
  | Leaf -> 0
  | Node {value; left; right} -> value + sum_of_tree left + sum_of_tree right;;

sum_of_tree t;;
(* Create a tree  *)
let rec create_tree n =
  if n = 0 then Leaf
  else Node {value=n; left=create_tree (n-1); right=create_tree (n-1)};;

create_tree 3;;

(* Return the value of trees *)
let rec value_of_tree = function
  | Leaf -> []
  | Node {value; left; right} -> value::(value_of_tree left)@(value_of_tree right);;

(* Test Cases *)
value_of_tree (create_tree 3);;
value_of_tree (create_tree 5);;