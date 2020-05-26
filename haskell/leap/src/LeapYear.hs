module LeapYear (isLeapYear) where

isLeapYear :: Integer -> Bool
isLeapYear year 
    | helper 400 = True
    | helper 100 = False
    | helper 4 = True
    | otherwise = False
    where helper x = year `mod` x == 0
