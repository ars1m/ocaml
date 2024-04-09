let rec last_two list = 
  match list with
    | [] | [_] -> None
    | [x; y] -> Some (x,y)
    | h :: tl -> last_two tl;;
last_two[4;5;6];;