let rec nsum n = 
  if n = 0 then 0
  else n + nsum (n-1)
