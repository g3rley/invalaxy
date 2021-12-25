Player = Object.extend(Object)

ScaleX = nil
ScaleY = nil

--- Defines the common attributes for a player
---@param self table
function Player.new(self)

    self.x = math.floor(OffsetWidth / 2)
    self.speed = 800
    self.width = 180
    self.height = 180

    self.sprite = love.graphics.newImage('assets/spacechip.png')
end

--- Update the changes relationed the player
---@param dt number
function Player:update(dt)

    if love.keyboard.isDown('left') then
        if self.x > 0 then
            self.x = self.x - self.speed * dt
        end
    end

    if love.keyboard.isDown('right') then
        if self.x < OffsetWidth - self.width then
            self.x = self.x + self.speed * dt
        end
    end
end

--- Draw elements when the player is processing
function Player:draw()

    ScaleX, ScaleY = getImageScaleForNewDimensions(self.sprite, self.width, self.height)
    love.graphics.draw(self.sprite, self.x, OffsetHeight - self.height, 0, ScaleX, ScaleY)
end

--- Bind an event when a whatever key is pressed
---@param key any
function Player:keyPressed(key)

    if key == "space" then
        table.insert(ListOfShots, Shot(self.x + math.floor(self.width / 2), OffsetHeight - self.height))
    end
end
