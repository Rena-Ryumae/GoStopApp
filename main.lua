-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local composer = require("composer")

display.setStatusBar(display.HiddenStatusBar)

-- Random seed for deck shuffling
math.randomseed(os.time())

-- Menu screen
composer.gotoScene("menu")