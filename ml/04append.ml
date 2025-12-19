let rec append1 = function
  | ([], ys) -> ys
  | (x::xs, ys) -> x :: append1 (xs, ys)

let rec append2 pair =
  match pair with
  | ([], ys) -> ys
  | (x::xs, ys) -> x :: append2 (xs, ys)

let rec append3 xs ys =
  match (xs, ys) with
  | ([], ys) -> ys
  | (x::xs, ys) -> x :: append3 xs ys

let rec append4 xs ys =
  match xs with 
  |  [] -> ys
  | x::xs -> x :: append4 xs ys
