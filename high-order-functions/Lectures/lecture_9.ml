let even n = n mod 2 = 0
let odd n = n mod 2 <> 0

let rec evens = function
  |[] -> []
  |h::t -> if even h then h::evens t else evens t;;

let rec odds = function
  |[] -> []
  |h::t -> if odd h then h::odds t else odds t;;

evens[2;4;5;6;78;9;0];;
odds[2;4;5;6;78;9;0];;

