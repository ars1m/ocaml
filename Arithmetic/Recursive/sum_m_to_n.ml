let rec sum_m_to_n m n =
  if m > n then
    0
  else
    m + sum_m_to_n (m + 1) n;;

sum_m_to_n 1 10;;