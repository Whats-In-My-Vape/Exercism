module LeapYear (isLeapYear) where

-- swap rem in instead of doing that where recursion
-- switch bool values due to this

isLeapYear :: Integer -> Bool
isLeapYear year 
    |  rem year 4 /= 0 = False
    |  rem year 400 == 0 = True
    |  rem year 100 == 0 = False
    |  otherwise = True
