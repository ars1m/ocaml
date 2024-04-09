let rec at k list =
  match list with
    | [] -> None
    | h :: t -> if k = 1 then Some h else at (k - 1) t;;

at 4[4;5;6;7;8;9;10];;