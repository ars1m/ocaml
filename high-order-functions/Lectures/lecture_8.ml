type 'a tree =
  |Leaf 
  |Node of 'a * 'a tree * 'a tree
let rec map_tree f = function 
  |Leaf -> Leaf
  |Node (v,l,r) -> Node(f v, map_tree f l, map_tree f r)
                     
                     
let t1= Node(3, Node( 2, Leaf, Leaf), Node (5 , Leaf , Leaf));;
map_tree(fun x-> x * x) t1
  
let t2=Node("Arsim", Node("Altin", Leaf, Leaf), Node ("abc",Leaf,Leaf));;
map_tree(fun x-> String.length(x)) t2;;

let double x = 2 * x
let square x = x * x

let rec map f = function
  |[]->[]
  |h::t -> f h :: map f t;;

map ( fun x -> x + 1) [2;3;4;5];;
map ( fun x -> x * x) [2;5;6;7];;

map (fun x-> x ^ " UNT") ["1 ";"2"];;
map double [1;4;5];;
map square [4;5;6];;
map (fun x -> square(double x))[2;4;5;6];;
map (fun x -> (2 * x) * (2 * x))[2;4;5;6];;