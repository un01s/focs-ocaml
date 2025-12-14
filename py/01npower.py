def npower(x, n):
  """
  >>> npower(3, 2)
  9
  >>> npower(2, 10)
  1024
  """
  if n == 0:
    return 1
  else:
    return x*npower(x, n-1)

