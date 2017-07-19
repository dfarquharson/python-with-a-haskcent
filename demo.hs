import Test.QuickCheck (generate, elements)

-- the infinite sequence of natural numbers
nats = [1,2..]

-- all of the even naturals
evens = filter (\x -> x `mod` 2 == 0) nats
-- just the filter for evens given any list of numbers
evens' = filter (\x -> x `mod` 2 == 0)
-- all of the odd naturals
odds = filter (\x -> x `mod` 2 == 1) nats
-- just the filter for odds given any list of numbers
odds' = filter (\x -> x `mod` 2 == 1)

fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

-- explicit arg xs
rand xs = (generate . elements) xs
-- but we didn't need to be so explicit when we're just composing functions
rand' = (generate . elements)
