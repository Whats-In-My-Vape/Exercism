module CryptoSquare 
(encode) 
where

import Data.Char (isAlphaNum, toLower)
import Data.List (transpose)
import Data.List.Split (chunksOf)

encode :: String -> String
encode xs =
    let notDirty = filter isAlphaNum . map toLower $ xs
        nCols = ceiling $ (sqrt . fromIntegral $ length notDirty :: Double) in
      unwords . transpose $ chunksOf nCols notDirty
