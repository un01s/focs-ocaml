let rec npower x n = 
  if n = 0 then 1.0
  else x *. npower x (n-1)
