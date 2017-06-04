
local composer = require( "composer" )

local scene = composer.newScene()

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------

-- Configure image sheet of cards
local sheetOptions =
{
    frames =
    {
        {   -- 1) card011
            x = 0,
            y = 3,
            width = 110,
            height = 150
        },
        {   -- 2) card012
            x = 115,
            y = 3,
            width = 110,
            height = 150
        },
        {   -- 3) card013
            x = 230,
            y = 3,
            width = 110,
            height = 150
        },
        {   -- 4) card014
            x = 345,
            y = 3,
            width = 110,
            height = 150
        },
        {   -- 5) card021
            x = 490,
            y = 3,
            width = 110,
            height = 150
        },
        {   -- 6) card022
            x = 610,
            y = 3,
            width = 110,
            height = 150
        },
        {   -- 7) card023
            x = 725,
            y = 3,
            width = 110,
            height = 150
        },
        {   -- 8) card024
            x = 840,
            y = 3,
            width = 110,
            height = 150
        },
        {   -- 9) card031
            x = 0,
            y = 170,
            width = 110,
            height = 150
        },
        {   -- 10) card032
            x = 115,
            y = 170,
            width = 110,
            height = 150
        },
        {   -- 11) card033
            x = 230,
            y = 170,
            width = 110,
            height = 150
        },
        {   -- 12) card034
            x = 345,
            y = 170,
            width = 110,
            height = 150
        },
        {   -- 13) card041
            x = 490,
            y = 170,
            width = 110,
            height = 150
        },
        {   -- 14) card042
            x = 610,
            y = 170,
            width = 110,
            height = 150
        },
        {   -- 15) card043
            x = 725,
            y = 170,
            width = 110,
            height = 150
        },
        {   -- 16) card044
            x = 840,
            y = 170,
            width = 110,
            height = 150
        },
        {   -- 17) card051
            x = 0,
            y = 340,
            width = 110,
            height = 150
        },
        {   -- 18) card052
            x = 115,
            y = 340,
            width = 110,
            height = 150
        },
        {   -- 19) card053
            x = 230,
            y = 340,
            width = 110,
            height = 150
        },
        {   -- 20) card054
            x = 345,
            y = 340,
            width = 110,
            height = 150
        },
        {   -- 21) card061
            x = 490,
            y = 340,
            width = 110,
            height = 150
        },
        {   -- 22) card062
            x = 610,
            y = 340,
            width = 110,
            height = 150
        },
        {   -- 23) card063
            x = 725,
            y = 340,
            width = 110,
            height = 150
        },
        {   -- 24) card064
            x = 840,
            y = 340,
            width = 110,
            height = 150
        },
        {   -- 25) card071
            x = 0,
            y = 507,
            width = 110,
            height = 150
        },
        {   -- 26) card072
            x = 115,
            y = 507,
            width = 110,
            height = 150
        },
        {   -- 27) card073
            x = 230,
            y = 507,
            width = 110,
            height = 150
        },
        {   -- 28) card074
            x = 345,
            y = 507,
            width = 110,
            height = 150
        },
        {   -- 29) card081
            x = 490,
            y = 507,
            width = 110,
            height = 150
        },
        {   -- 30) card082
            x = 610,
            y = 507,
            width = 110,
            height = 150
        },
        {   -- 31) card083
            x = 725,
            y = 507,
            width = 110,
            height = 150
        },
        {   -- 32) card084
            x = 840,
            y = 507,
            width = 110,
            height = 150
        },
        {   -- 33) card091
            x = 0,
            y = 675,
            width = 110,
            height = 150
        },
        {   -- 34) card092
            x = 115,
            y = 675,
            width = 110,
            height = 150
        },
        {   -- 35) card093
            x = 230,
            y = 675,
            width = 110,
            height = 150
        },
        {   -- 36) card094
            x = 345,
            y = 675,
            width = 110,
            height = 150
        },
        {   -- 37) card101
            x = 490,
            y = 675,
            width = 110,
            height = 150
        },
        {   -- 38) card102
            x = 610,
            y = 675,
            width = 110,
            height = 150
        },
        {   -- 39) card103
            x = 725,
            y = 675,
            width = 110,
            height = 150
        },
        {   -- 40) card104
            x = 840,
            y = 675,
            width = 110,
            height = 150
        },
        {   -- 41) card111
            x = 0,
            y = 843,
            width = 110,
            height = 150
        },
        {   -- 42) card112
            x = 115,
            y = 843,
            width = 110,
            height = 150
        },
        {   -- 43) card113
            x = 230,
            y = 843,
            width = 110,
            height = 150
        },
        {   -- 44) card114
            x = 345,
            y = 843,
            width = 110,
            height = 150
        },
        {   -- 45) card121
            x = 490,
            y = 843,
            width = 110,
            height = 150
        },
        {   -- 46) card122
            x = 610,
            y = 843,
            width = 110,
            height = 150
        },
        {   -- 47) card123
            x = 725,
            y = 843,
            width = 110,
            height = 150
        },
        {   -- 48) card124
            x = 840,
            y = 843,
            width = 110,
            height = 150
        },

    },
}

local objectSheet = graphics.newImageSheet( "images/cards.png", sheetOptions)

local gameMatLoc = {
	[1] = {
		x = display.contentCenterX + 40,
		y = display.contentCenterY - 30
	},
	[2] = {
		x = display.contentCenterX - 40,
		y = display.contentCenterY - 30
	},
	[3] = {
		x = display.contentCenterX ,
		y = display.contentCenterY - 80
	},
	[4] = {
		x = display.contentCenterX,
		y = display.contentCenterY + 20
	},
	[5] = {
		x = display.contentCenterX + 40,
		y = display.contentCenterY - 80
	},
	[6] = {
		x = display.contentCenterX - 40,
		y = display.contentCenterY - 80
	},
	[7] = {
		x = display.contentCenterX - 40,
		y = display.contentCenterY + 20
	},
	[8] = {
		x = display.contentCenterX + 40,
		y = display.contentCenterY + 20
	},

}

-- Initialize variables
local backGroup
local mainGroup
local uiGroup

local deck = {}			-- main deck face down
local plr = {}			-- player's cards (turn = 1)
local opp = {}			-- opponent's cards (turn = 2)
local plrField = {}		-- player's field
local oppField = {}		-- opponent's field
local gameMat = {}		-- cards face up

local turn				-- plr or opp's turn

local function gotoMenu()
    composer.gotoScene("menu", {time = 800, effect = "crossFade"})
end

local function shuffleDeck(deck) 
	local random = math.random
	local length = #deck
	local tmp
	for i = length, 2, -1 do
		tmp = random(i)
		deck[i], deck[tmp] = deck[tmp], deck[i]
	end
end

local function dealCards(num, loc, deck)
	for i = 1, num do
		table.insert(loc, deck[1])
		print(deck[1])
		table.remove(deck, 1)
	end
end

local function gameInitialize()
	-- Create an array of numbers from 1 - 48 for deck
	for i = 1, 48, 1 do
		table.insert(deck, i)
	end

	-- Randomly jumble array for deck
	shuffleDeck(deck)

	-- Give plr first 10 cards
	dealCards(10, plr, deck)

	-- Give opp next 10 cards
	dealCards(10, opp, deck)

	-- Give gameMat next 8 cards
	dealCards(8, gameMat, deck)

	-- Pick which player goes first
	local random = math.random
	if (random(2) == 1) then
		turn = 1
	else
		turn = 2
	end

	-- TODO: Check if either player or gameMat has 4 of same cards 
	-- TODO: Determine automatic winner
	-- TODO: Check if either player or gameMat has 3 of same cards
	-- TODO: Handle 3 card situation
end

local function gameDisplay()
	-- Display the player's cards at bottom
	for i = 1, #plr, 1 do
		local plrCard = display.newImageRect(mainGroup, objectSheet, plr[i], 60, 90)
		plrCard.x = display.contentWidth - 268 + (24 * (i - 1))
		plrCard.y = display.contentHeight - 40
	end
	-- Display the opponent's back facing cards at top
	for i = 1, #opp, 1 do
		local oppCard = display.newImageRect(mainGroup, "images/cardblank.png", 20, 30)
		oppCard.x = display.contentWidth - 285 + (18 * (i - 1))
		oppCard.y = 15
	end
	-- TODO: Display the player's field
	-- TODO: Display the opponent's field

	-- Display the facedown deck
	local deckCard = display.newImageRect(mainGroup, "images/cardblank.png", 27, 40)
	deckCard.x = display.contentCenterX
	deckCard.y = display.contentCenterY - 30

	-- Display the game mat
	for i = 1, #gameMat, 1 do
		local gameCard = display.newImageRect(mainGroup, objectSheet, gameMat[i], 27, 40)
		gameCard.x = gameMatLoc[i].x
		gameCard.y = gameMatLoc[i].y
	end

end

-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
function scene:create( event )

	local sceneGroup = self.view
	-- Code here runs when the scene is first created but has not yet appeared on screen

	-- Set up display groups
	backGroup = display.newGroup()  -- Display group for the background image
	sceneGroup:insert(backGroup)  	-- Insert into the scene's view group

	mainGroup = display.newGroup()  -- Display group for the ship, asteroids, lasers, etc.
	sceneGroup:insert(mainGroup)  	-- Insert into the scene's view group

	uiGroup = display.newGroup()    -- Display group for UI objects like the score
	sceneGroup:insert(uiGroup)    	-- Insert into the scene's view group
	
	-- Load the background
	local background = display.newImageRect(backGroup, "images/gameboard.jpg", 600, 600 )
	background.x = display.contentCenterX
	background.y = display.contentCenterY

	local menuButton = display.newText(uiGroup, "MENU", display.contentWidth - 55, 15, native.systemFont, 15)
	
	-- Tap event listeners for menu button
	menuButton:addEventListener("tap", gotoMenu)
	
	gameInitialize()
	gameDisplay()

end


-- show()
function scene:show( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then
		-- Code here runs when the scene is still off screen (but is about to come on screen)

	elseif ( phase == "did" ) then
		-- Code here runs when the scene is entirely on screen

	end
end


-- hide()
function scene:hide( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then
		-- Code here runs when the scene is on screen (but is about to go off screen)


	elseif ( phase == "did" ) then
		-- Code here runs immediately after the scene goes entirely off screen
		composer.removeScene( "game" )

	end
end


-- destroy()
function scene:destroy( event )

	local sceneGroup = self.view
	-- Code here runs prior to the removal of scene's view


end


-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------

return scene
