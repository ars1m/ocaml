 let rec last list =
  match list with
  | [] -> None
  | [ x ] -> Some x
  | hd :: t -> last t;;

last[4;5;6;7];;