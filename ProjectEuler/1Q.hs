my_sort::Int->Bool
my_sort num
    | mod num 3 == 0 || mod num 5 == 0 = True
    | otherwise = False

main = do 
        let mysum = foldl (+) 0 (filter my_sort [1..999])
        print mysum    
