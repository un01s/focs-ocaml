let rec nrev = function
  | [] -> []
  | x::xs -> (nrev xs) @ [x]
