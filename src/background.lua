Background = Object.extend(Object)

--- Define the image for screen's background
---@param self any
function Background.new(self)
    self.x = 0
    self.y = 0
    self.image = love.graphics.newImage('assets/background.jpg')
end

--- Bind the background updates by frame
---@param dt number
function Background:update(dt)

end

--- Draw a background image
function Background:draw()

    love.graphics.draw(self.image, self.x, self.y)
end
