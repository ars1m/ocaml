let rec at k list acc =
  match list with 
  | [] -> acc
  | h :: t ->
    if k = 1 then
      match acc with
      | None -> Some h
      | Some _ -> acc
    else
      at (k - 1) t acc
;;

let at k list = at k list None;;

at 4 [4;5;6;7;8;9;10];;
