all_primes :: [Integer]
all_primes = prime_filter [2..]

prime_filter :: [Integer] -> [Integer]
prime_filter [] = []
prime_filter (x:xs) = x:prime_filter (filter (not . (divisibleBy x)) xs)

divisibleBy n d = n ‘mod‘ d == 0