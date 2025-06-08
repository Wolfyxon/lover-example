local version = os.getenv("LOVER_PKG_VERSION")
local gameName = os.getenv("LOVER_PKG_NAME")

local text = ""

if version and gameName then
    text = "game name: " .. gameName .. " | version: " .. version
else
    text = "Looks like you're not running the game with lover!"
end

function love.load()
    local font = love.graphics.newFont(30)
    love.graphics.setFont(font)
end

function love.draw()
    love.graphics.print(text)
end
