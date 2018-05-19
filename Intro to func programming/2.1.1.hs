--Custom OR operator 3.11
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
orOp = (True ||- False) ||- (False ||- False) == True
andOp = (True &&- False) &&- (False &&- False) == False

main = do 
        print orOp  --Check statement for ||- (OR) operator	
        print andOp -- Check statement for &&- (AND) operator
