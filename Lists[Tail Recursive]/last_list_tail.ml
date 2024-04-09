let last list =
  let rec last_helper = function
    | [] -> None
    | [x] -> Some x
    | _ :: t -> last_helper t
  in
  match list with
  | [] -> None
  | _ -> last_helper list
;;

last [4;5;6;7];;
