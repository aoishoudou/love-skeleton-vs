--keep this debug statement at the start of your main.lua.

if arg[2] == "debug" then
    require("lldebugger").start()
end

-- love.update loop

function love.update(dt)
    if love.keyboard.isDown("escape") then
        love.event.quit()
    end
end

-- love.draw loop

function love.draw()
    love.graphics.print("Hello world!", 10, 10)
end

-- keep this error handler at the end of your main.lua.

local love_errorhandler = love.errorhandler

function love.errorhandler(msg)
    if lldebugger then
        error(msg, 2)
    else
        return love_errorhandler(msg)
    end
end