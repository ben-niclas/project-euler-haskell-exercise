import Data.List (nub)

lst x i limit = if x * i < limit then x * i : lst x (i + 1) limit else []

s l = nub $ lst 3 1 l ++ lst 5 1 l

main =
  do
    print (sum (s 1000))
