import Data.List

data Triangle = Failure | Isosceles | Equilateral | Scalene 

analyse::Num a => a -> a -> a -> Triangle
analyse x y z
        | x+y > z = Failure
        | x == z  = Equilateral
        | x == y || y == z = Isosceles
        | otherwise = Scalene


analyseOrd::Num a => a -> a -> a-> Triangle
analyseOrd a b c = analyse x y z 
                     where (x:y:z:_) = sort[a,b,c] 
                         

instance Show Triangle where
      show Failure = "Failure"
      show Isosceles = "Isosceles"
      show Equilateral = "Equilateral"
      show Scalene = "Scalene" 

main =print( show (analyseOrd 3 1 2) )

