let rect summing n total =
  if n = 0 then 
    total
  else 
    summing (n-1) (n+total)
