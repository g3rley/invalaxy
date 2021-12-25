-- file: shot.lua
Shot = Object.extend(Object)

function Shot:new(x, y)
    self.x = x
    self.y = y
    self.speed = 1000
    self.image = love.graphics.newImage("assets/bullet.png")
    self.width, self.height = self.image:getDimensions()
end

function Shot:update(dt)

    self.y = self.y - self.speed * dt

    print (self.x, self.y)
    if checkCollision(self, WhateverEnemy) then
        love.graphics.setColor(0.4, 0.8, 0.1)
    end
end

function Shot:draw()

    love.graphics.draw(self.image, self.x, self.y)
end
