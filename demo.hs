nats = [1,2..]
evens = filter(\x -> x `mod` 2 == 0) nats
odds = filter(\x -> x `mod` 2 == 1) nats
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
