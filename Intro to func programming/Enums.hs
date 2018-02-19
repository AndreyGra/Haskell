--Define Data Day
data Day = Sun | Mon | Tue | Wed | Thu | Fri | Sat

--Define our own enum class
class Enums a where
        toEnums :: a -> Int
        fromEnums :: Int -> a


--Tell Haskell how to cast Day in to Enum type
instance Enums Day where
         toEnums Sun = 0
         toEnums Mon = 1       
         toEnums Tue = 2
         toEnums Wed = 3
         toEnums Thu = 4
         toEnums Fri = 5
         toEnums Sat = 6

--Tell Haskell how to cast Enum in to Day type         
         fromEnums 0 = Sun
         fromEnums 1 = Mon
         fromEnums 2 = Tue
         fromEnums 3 = Wed
         fromEnums 4 = Thu
         fromEnums 5 = Fri
         fromEnums 6 = Sat

--Tell Haskell on how it should equate Days
instance Eq Day 
        where x == y = toEnums x == toEnums y

--Tell Haskell how it should order days
instance Ord Day
        where x <= y = toEnums x <= toEnums y

--Specify how you want Day to be printed on a console 
instance Show Day where
        show Mon = "Monday"
        show Tue = "Tuesday"
        show Wed = "Wednsday"
        show Thu = "Thursday"
        show Sat = "Saturday"
        show Sun = "Sunday"
        show Fri = "Friday"

--Some intersting functions

--Workday::Returns true it is a work day
workday::Day->Bool
workday day = (Mon <= day) && (Fri >= day)

--Restday::Reeturns if its a rest dat
restday::Day->Bool
restday day = not (workday day)

--DayAfter::Returns the next day
dayAfter::Day->Day
dayAfter day = fromEnums( (toEnums day + 1) `mod` 7)

main = do
        print Sat
        print (workday Mon)
        print (restday Thu)
        print (dayAfter Sat)
