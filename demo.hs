import Test.QuickCheck (generate, elements)

nats = [1,2..]
evens = filter(\x -> x `mod` 2 == 0) nats
odds = filter(\x -> x `mod` 2 == 1) nats
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

-- explicit arg xs
rand xs = (generate . elements) xs
-- but we didn't need to be so explicit when we're just composing functions
rand' = (generate . elements)
