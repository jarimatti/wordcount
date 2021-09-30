-- Display line, word, and character counts read from stdin.
--
-- This is a toy utility to get feet wet with Haskell.
main :: IO ()
main = do
  contents <- getContents
  -- TODO: We could fold over the contents and gather everything in one go.
  print (lineCount contents)
  print (wordCount contents)
  print (charCount contents)

lineCount :: String -> Int
lineCount = length . lines

wordCount :: String -> Int
wordCount = length . words

charCount :: String -> Int
charCount = length

