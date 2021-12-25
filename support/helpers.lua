--- Get the new axis scale of an image
---@param image any
---@param newWidth number
---@param newHeight number
function getImageScaleForNewDimensions(image, newWidth, newHeight)

    local currentWidth, currentHeight = image:getDimensions()
    return (newWidth / currentWidth), (newHeight / currentHeight)
end

--- Identifica se houve alguma colisão entre os elementos 'a' e 'b'
---@param a any
---@param b any
function checkCollision(a, b)

    return a.x + a.width > b.x
        and a.x < b.x + b.width
        and a.y + a.height > b.y
        and a.y < b.y + b.height
end