--My attempt at defining bool

data MyBool = True|False

instance Enum MyBool where
    toEnum True = 1
    toEnum False = 0

instance Eq MyBool where
     x == y  = toEnum x == toEnum y

instance Ord MyBool where
     x >= y  = toEnum x >= toEnum y

instance Show MyBool where
    show True = "True"
    show False = "False"

(||-)::MyBool->MyBool->MyBool
(||-) True _ = True
(||-) _ True = True
(||-) False False = False

(&&-)::MyBool->MyBool->MyBOol
(&&-) False _ = False
(&&-) _ False = False
(&&-) True True = True

--Rough def, might not work due to type mismatch 

