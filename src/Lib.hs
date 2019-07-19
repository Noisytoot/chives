module Lib (create, destroy) where

create item = item ++ " created!"

destroy "universe" = "Oh no, the universe has been destroyed!"
destroy "chives" = "We will not destroy ourselves!"
destroy item = item ++ " destroyed!"
