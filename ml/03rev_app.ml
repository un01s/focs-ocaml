let rec rev_app = function
  | ([], ys) -> ys
  | (x::xs, ys) -> rev_app (xs, x::ys)
