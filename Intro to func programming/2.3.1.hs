--Automatic instance declaration 
data Day = Mon|Tue|Wed|Thu|Fri|Sat|Sun deriving (Eq, -- Derives equality statements e.g == or =/=
                                                 Ord,-- Derives ordering eg <,>,<=,=<
                                                 Enum,-- Derives enum representation of data
                                                 Show --How to reprsesent the data type
                                                 )

nextDay::Day->Day
nextDay day = toEnum( ( fromEnum day + 1) `mod` 7) 

previousDay::Day->Day
previousDay day = toEnum( (fromEnum day - 1) `mod` 7)

mypair::(a->b,a->y) -> a  -> (b,y)
mypair (f,g) x = (f x, g x)

workday = uncurry(||) . mypair((Mon <=),(<= Fri) )

main = do 
        print (show (nextDay Mon))  
        print (show (previousDay Mon))
        print (show (workday Mon)) 
