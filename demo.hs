import Test.QuickCheck (generate, elements)

-- the infinite sequence of natural numbers
nats = [1,2..]

evens = filter (\x -> x `mod` 2 == 0) nats
evens' = filter (\x -> x `mod` 2 == 0)

odds = filter (\x -> x `mod` 2 == 1) nats
odds' = filter (\x -> x `mod` 2 == 1)

fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

rand xs = (generate . elements) xs
rand' = (generate . elements)

estimate = rand' $ take 10 fibs
