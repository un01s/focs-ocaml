let rec change till amt chg chgs = 
  if amt = 0 then
    chg :: chgs
  else
    match till with
      | [] -> chgs
      | c :: till ->
        if amt < 0 then
          chgs
        else
          change (c::till) (amt-c) (c::chg)
            (change till amt chg chgs)
