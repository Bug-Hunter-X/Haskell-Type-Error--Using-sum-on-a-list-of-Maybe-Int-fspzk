```haskell
import Data.Maybe (maybe)

mySum :: [Maybe Int] -> Int
mySum xs = sum (catMaybes xs)

--Alternatively, using maybe for a more explicit solution
mySum' :: [Maybe Int] -> Int
mySum' xs = sum $ map (
 x -> maybe 0 id x
) xs

main :: IO ()
main = do
  let nums = [Just 1, Just 2, Nothing, Just 3]
  print (mySum nums) -- Output: 6
  print (mySum' nums) -- Output: 6
```