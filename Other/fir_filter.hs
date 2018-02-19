firFilterRecur::Fractional a => [a]->[a]->a
firFilterRecur [] _ = 0
firFilterRecur _ [] = 0
firFilterRecur ( x : xs ) ( b : bx) = x*b + firFilterRecur xs bx

firFilter::Fractional a => [a]->[a]->a
firFilter x b
    | null x || null b = 0
    | otherwise = sum (zipWith (*) x b)

sorter::(Fractional a,Ord a ) => a -> a
sorter x  
    | x >= 0.1 = x*0.66
    | otherwise = (-1.1)*x+0.5

main = putStrLn "hello"
