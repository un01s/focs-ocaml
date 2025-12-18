let rec nlength = function
  | [] -> 0
  | _ :: xs -> 1 + nlength xs
