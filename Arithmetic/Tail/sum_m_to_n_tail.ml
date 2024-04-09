let rec sum_m_to_n m n acc=
 if m > n then
   acc
 else
   sum_m_to_n (m + 1) n (m + acc);;

let sum_m_to_n m n = sum_m_to_n m n 0;;

sum_m_to_n 1 10;;