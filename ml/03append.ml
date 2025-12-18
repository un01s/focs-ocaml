let rec append = function
  | ([], ys) -> ys
  | (x::xs, ys) -> x :: append (xs, ys)
