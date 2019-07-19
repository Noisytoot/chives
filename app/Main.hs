module Main where

import System.Environment
import Lib

main :: IO ()
main = getArgs >>= command

command [] = do
  name <- getProgName
  putStrLn $ name ++ " <item> <command>"

command ["about"] = -- About chives
  putStrLn "Everything is because of chives"
command [item, "create"] = -- Creating something
  putStrLn $ create item

command [item, "destroy"] = -- Destroying something
  putStrLn $ destroy item

command [_, command] = -- If the command is invalid
  putStrLn $ "Invalid command: " ++ command
