import System.Environment ( getArgs )
import System.IO
    ( hClose, openFile, stdin, hGetContents, Handle, IOMode(ReadMode) )


-- Display line, word, and character counts read from stdin.
--
-- This is a toy utility to get feet wet with Haskell.
main :: IO ()
main = do
  args <- getArgs
  handle <- filehandle args
  contents <- hGetContents handle
  print $ countAll contents
  hClose handle

-- Return the input handle to read.
filehandle :: [FilePath] -> IO Handle
filehandle [] = return stdin
filehandle (filename : _) = openFile filename ReadMode

lineCount :: String -> Int
lineCount = length . lines

wordCount :: String -> Int
wordCount = length . words

charCount :: String -> Int
charCount = length

-- Count the number of lines, words and chars in the string.
countAll :: String -> (Int, Int, Int)
countAll contents = (lineCount contents, wordCount contents, charCount contents)