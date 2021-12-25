Enemy = Object.extend(Object)

function Enemy.new(self)

    self.x = 0
    self.y = 0
    self.speed = 200
    self.width = 500
    self.height = 35
end

function Enemy:update(dt)

    self.x = self.x + self.speed * dt

    if self.x < 0 then
        self.x = 0
        self.speed = -self.speed
    elseif self.x + self.width > OffsetWidth then
        self.x = OffsetWidth - self.width
        self.speed = -self.speed
    end
end

function Enemy:draw()

    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end
