type 'a tree=
|Leaf
|Node of 'a node

and 'a node ={
  value: 'a;
  left: 'a tree;
  right: 'a tree
}
let t =
  Node {
    value = 2; 
    left  = Node {value=1; left=Leaf; right=Leaf};
    right = Node {value=3; left=Leaf; right=Leaf}  
  }