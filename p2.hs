f :: Int -> Int
f 0 = 1
f 1 = 1
f x = f (x - 1) + f (x - 2)

e x l = if x < l then f (x + 1) : e (x + 3) l else []

main = do
  print (sum $ e 1 33)
