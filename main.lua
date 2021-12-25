function love.load()

    Object = require "libs/classic"

    require "support/helpers"
    require "src/background"
    require "src/player"
    require "src/enemy"
    require "src/shot"

    OffsetWidth, OffsetHeight = love.graphics.getDimensions()

    SpaceBackground = Background()
    SpaceChip = Player()

    WhateverEnemy = Enemy()
    ListOfShots = {}
end

function love.update(dt)

    SpaceChip:update(dt)
    WhateverEnemy:update(dt)

    for i, v in ipairs(ListOfShots) do
        v:update(dt)
    end
end

function love.draw()

    SpaceBackground:draw()
    SpaceChip:draw()
    WhateverEnemy:draw()

    for i, v in ipairs(ListOfShots) do
        v:draw()
    end
end

function love.keypressed(key)
    SpaceChip:keyPressed(key)
end
