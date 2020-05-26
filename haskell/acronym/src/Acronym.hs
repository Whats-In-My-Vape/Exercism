module Acronym (abbreviate) where

import Data.Char

acronym :: String -> String
acronym xs
        | all isUpper xs = [head xs]
        | all isLower xs = [toUpper $ head xs]
        | otherwise      = filter isUpper xs

nonAlpha :: Char -> Char
nonAlpha x = if x == '-' then ' ' else x
    

abbreviate :: String -> String
abbreviate xs = concat $ acronym <$> (filter isAlpha) <$> (words $ nonAlpha <$> xs)
