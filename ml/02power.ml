let rec even x =
  match x with
  | 0 -> true
  | _ -> odd(x-1)
and odd x =
  match x with
  | 0 -> false
  | _ -> even(x-1)

let rec power x n = 
  if n = 1 then x
  else if even n then power (x *. x) (n/2)
  else x *. power (x *. x) (n/2)

