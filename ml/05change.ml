let rec change till amt =
  if amt = 0 then
    [ [] ]
  else
    match till with
    | [] -> []
    | c::till ->
      if amt < c then
        change till amt
      else
        let rec allc = function
          | [] -> []
          | cs :: css -> (c::cs) :: allc css
        in
          allc (change (c::till) (amt-c)) @
            change till amt

let rec change2 till amt chg chgs =
  if amt = 0 then
    chg :: chgs
  else
    match till with
    | [] -> chgs
    | c::till ->
      if amt < 0 then
        chgs
      else
        change2 (c:till) (amt-c) (c::chg)
          (change2 till amt chg chgs)
