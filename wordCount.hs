import Distribution.Compat.Parsing (count)
-- Display line, word, and character counts read from stdin.
--
-- This is a toy utility to get feet wet with Haskell.
main :: IO ()
main = do
  contents <- getContents
  print $ countAll contents

lineCount :: String -> Int
lineCount = length . lines

wordCount :: String -> Int
wordCount = length . words

charCount :: String -> Int
charCount = length

-- Count the number of lines, words and chars in the string.
countAll :: String -> (Int, Int, Int)
countAll contents = (lineCount contents, wordCount contents, charCount contents)