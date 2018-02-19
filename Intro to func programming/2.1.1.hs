--Custom OR operator 2.11
(||-)::Bool->Bool->Bool
(||-) True _ = True
(||-) _ True = True
(||-) False False = False

--Custom AND operator 2.11
(&&-)::Bool->Bool->Bool
(&&-) rhs lhs 
        |not rhs  = False
        |not lhs  = False
        |otherwise = True

--Test Cases
or_op = (  ( (True ||- False) ||- (False ||- False) ) == True )
and_op = (  ( (True &&- False) &&- (False &&- False) ) == False )

main = do 
		( putStrLn $ show ( or_op ) )   --Check statement for ||- (OR) operator	
		( putStrLn $ show ( and_op ) )  -- Check statement for &&- (AND) operator
