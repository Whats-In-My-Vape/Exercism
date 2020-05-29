module LeapYear (isLeapYear) where

isLeapYear :: Integer -> Bool
isLeapYear year 
    | isYearDivisible 400 = True
    | isYearDivisible 100 = False
    | isYearDivisible 4 = True
    | otherwise = False
    where isYearDivisible x = year `rem` x == 0
