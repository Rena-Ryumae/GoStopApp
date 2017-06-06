
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

local gameInfo = {
    plrInfo = {
        go = 0,
        pt = 0,
        three = false
    },
    oppInfo = {
        go = 0,
        pt = 0,
        three = false
    },
}

-- Initialize variables
local backGroup
local mainGroup
local turnGroup
local winGroup
local uiGroup

local deck = {}			-- main deck face down
local plr = {}			-- player's cards (turn = 1)
local opp = {}			-- opponent's cards (turn = 2)
local plrField = {}		-- player's field
local oppField = {}		-- opponent's field
local gameMat = {}		-- cards face up

local turn				-- 1 if plr's turn, 2 if opp's turn
local winner = 0        -- 0 if no winner yet, 1 if plr, 2 if opp, 3 if draw

local pTurn = "You first!"              -- player goes first
local oTurn = "You're second!"          -- opponent goes first
local pWin = "You win!"                 -- player win string
local oWin = "You lose!"                -- opponenent win string
local dWin = "Game is a draw!"          -- draw string



local function gotoMenu()
    composer.gotoScene("menu", {time = 800, effect = "crossFade"})
end

local function winnerPopup(str)
    local winBackground = display.newImageRect(winGroup, "images/cardblank.png", 270, 200)
    winBackground.x = display.contentCenterX
    winBackground.y = display.contentCenterY - 50
    local winStr = display.newText(winGroup, str, display.contentCenterX, display.contentCenterY - 100, native.systemFont, 35)
    local menuButton = display.newText(winGroup, "MENU", display.contentCenterX, display.contentCenterY, native.systemFont, 30)

    -- Tap event listeners for menu button
    menuButton:addEventListener("tap", gotoMenu)
end

local function checkWinner(num) 
    if (num == 1) then return pWin
    elseif (num == 2) then return oWin
    elseif (num == 3) then return dWin
    else return ""
    end
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
		table.remove(deck, 1)
	end
end

local function automaticWin(arr)
    local tmp = {}
    for i = 1, #arr, 1 do
        tmp[i] = arr[i].set
    end
    table.sort(tmp)
    local ctr = 0
    for i = 1, #tmp - 3, 1 do 
        if ((tmp[i] == tmp[i+1]) and (tmp[i] == tmp[i+2]) 
            and (tmp[i] == tmp[i+3])) then
            return true
        end
    end
    return false
end

local function threeCardDisadvantage(arr)
    local tmp = {}
    for i = 1, #arr, 1 do
        tmp[i] = arr[i].set
    end
    table.sort(tmp)
    for i = 1, #tmp - 2, 1 do 
        if ((tmp[i] == tmp[i+1]) and (tmp[i] == tmp[i+2])) then
            return true
        end
    end
    return false
end

local function gameInitialize(deck)
	-- Create an array of numbers from 1 - 48 for deck
    local ct = 1
    local st = 1
    local tmp = {}
	for i = 1, 48, 1 do
		--table.insert(deck, i)
        if (ct == 5) then 
            st = st + 1
            ct = 1
        end
        tmp.card = i
        tmp.set = st
        --table.insert(deck, tmp)
        deck[i] = tmp
        ct = ct + 1
        tmp = {}
	end

	-- Randomly jumble array for deck
	shuffleDeck(deck)

	-- Give plr first 10 cards
	dealCards(10, plr, deck)

	-- Give opp next 10 cards
	dealCards(10, opp, deck)

	-- Give gameMat next 8 cards
	dealCards(8, gameMat, deck)

	-- Check if either player or gameMat has 4 of same cards 
    local pcheck = automaticWin(plr)
    local ocheck = automaticWin(opp)
    local gcheck = automaticWin(gameMat)

    -- Off chance that all 2 or more are automatic wins or gcheck wins, then draw
    if ((pcheck and ocheck and gcheck) or (pcheck and ocheck) or
        (pcheck and gcheck) or (ocheck and gcheck) or gcheck)
        then winner = 3
    elseif (pcheck) then winner = 1
    elseif (ocheck) then winner = 2
    else winner = 0 
    end

    local check = checkWinner(winner)
    if (check ~= "") then
        display.remove(turnGroup)
        winnerPopup(check)
    end
    
	-- Check if either player or gameMat has 3 of same cards
    local p3check = threeCardDisadvantage(plr)
    local o3check = threeCardDisadvantage(opp)
    local g3check = threeCardDisadvantage(gameMat)

    -- Change three flag in gameInfo for respective player
    -- TODO: Do something to show player what the disadvantage is
    if (p3check) then
        gameInfo.plrInfo.three = true
    end
    if (o3check) then
        gameInfo.oppInfo.three = true
    end

	-- TODO: Handle 3 card situation on gamemat

end

local function gameDisplay()
	-- Display the player's cards at bottom
	for i = 1, #plr, 1 do
		local plrCard = display.newImageRect(plrGroup, objectSheet, plr[i].card, 60, 90)
		plrCard.x = display.contentWidth - 268 + (24 * (i - 1))
		plrCard.y = display.contentHeight - 40
	end
	-- Display the opponent's back facing cards at top
	for i = 1, #opp, 1 do
		local oppCard = display.newImageRect(oppGroup, "images/cardblank.png", 20, 30)
		oppCard.x = display.contentWidth - 285 + (18 * (i - 1))
		oppCard.y = 15
	end
	-- TODO: Display the player's field
	-- TODO: Display the opponent's field

	-- Display the facedown deck
	local deckCard = display.newImageRect(matGroup, "images/cardblank.png", 27, 40)
	deckCard.x = display.contentCenterX
	deckCard.y = display.contentCenterY - 30

	-- Display the game mat
	for i = 1, #gameMat, 1 do
		local gameCard = display.newImageRect(matGroup, objectSheet, gameMat[i].card, 27, 40)
		gameCard.x = gameMatLoc[i].x
		gameCard.y = gameMatLoc[i].y
	end

end

local function gameStart()
    gameDisplay()
    display.remove(turnGroup)
end

local function turnPopup(str)
    local turnBackground = display.newImageRect(turnGroup, "images/cardblank.png", 270, 200)
    turnBackground.x = display.contentCenterX
    turnBackground.y = display.contentCenterY - 50
    local turnStr = display.newText(turnGroup, str, display.contentCenterX, display.contentCenterY - 100, native.systemFont, 35)
    
    -- Tap event listeners for menu button
    turnBackground:addEventListener("tap", gameStart)
end

local function chooseTurn()
    -- Pick which player goes first
    local random = math.random
    if (random(2) == 1) then
        turn = 1
        turnPopup(pTurn)
    else
        turn = 2
        turnPopup(oTurn)
    end
end


local function playerTurn()
    -- TODO: Event listener that drags card to card on game mat
    for i = 1, #plr, 1 do
        local plrCard = display.newImageRect(plrGroup, objectSheet, plr[i].card, 60, 90)
        plrCard.x = display.contentWidth - 268 + (24 * (i - 1))
        plrCard.y = display.contentHeight - 40
        --plrCard:addEventListener("tap", )
    end
    -- Once event listener detects event, update card display
        -- Dragged card appears on game mat
        -- Player's hand no longer has card
            -- Done by calling gameDisplay after updating array
    -- Event listener for tapping gamemat deck
    -- Once event listener detects event, update card display
        -- Check for matches
        -- Timer delay, then update card display
    -- Update pt system 

    -- Toggle turn to opponent
    turn = 2
end

local function opponentTurn()
    -- TODO: Decide on which card to play based on given cards
    -- Update card display
        -- Playing card appears on game mat
        -- Opponent's hand no longer has card
    -- Timer delay, update opp hand with new card
    -- Timer delay, then update card display
    -- Update pt system

    -- Toggle turn to player
    turn = 1
end

local function gameLoop()
    if (turn == 1) then         -- Player's turn
        playerTurn()
    else                        -- Opponent's turn
        opponentTurn()
    end

    -- TODO: Winner logic
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

    matGroup = display.newGroup()   -- Display group for the cards on game mat
    sceneGroup:insert(matGroup)     -- Insert into the scene's view group 

    oppGroup = display.newGroup()   -- Display group for the opponent cards 
    sceneGroup:insert(oppGroup)     -- Insert into the scene's view group

    plrGroup = display.newGroup()   -- Display group for the player's cards
    sceneGroup:insert(plrGroup)     -- Insert into the scene's view group

    turnGroup = display.newGroup()
    sceneGroup:insert(turnGroup)

    winGroup = display.newGroup()
    sceneGroup:insert(winGroup)

	uiGroup = display.newGroup()    -- Display group for UI objects like the score
	sceneGroup:insert(uiGroup)    	-- Insert into the scene's view group
	
	-- Load the background
	local background = display.newImageRect(backGroup, "images/gameboard.jpg", 600, 600 )
	background.x = display.contentCenterX
	background.y = display.contentCenterY

	local menuButton = display.newText(uiGroup, "MENU", display.contentWidth - 55, 15, native.systemFont, 15)
	
	-- Tap event listeners for menu button
	menuButton:addEventListener("tap", gotoMenu)

end


-- show()
function scene:show( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then
		-- Code here runs when the scene is still off screen (but is about to come on screen)
        gameInitialize(deck)

	elseif ( phase == "did" ) then
		-- Code here runs when the scene is entirely on screen
        gameDisplay()
        timer.performWithDelay(1000, chooseTurn)
        gameLoopTimer = timer.performWithDelay(500, gameLoop, 0)

	end
end


-- hide()
function scene:hide( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then
		-- Code here runs when the scene is on screen (but is about to go off screen)
        timer.cancel(gameLoopTimer)

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
