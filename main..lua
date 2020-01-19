function love.load()
    bg1 = love.graphics.newImage("background1.png")
    bg2 = love.graphics.newImage("background2.png")

    bg1_x = 0
    bg2_x = 0

    bg1_speed = 100
    bg2_speed = 50
end

function love.update(dt)
    bg1_x = bg1_x - dt * bg1_speed
    bg2_x = bg2_x - dt * bg2_speed

    if bg1_x <= -800 then
        bg1_x = 0
    end
    if bg2_x <= -800 then
        bg2_x = 0
    end
end

function love.draw()
    love.graphics.setBackgroundColor(0.25, 0.25, 1, 1)

    love.graphics.draw(bg2, bg2_x, 500)
    love.graphics.draw(bg2, bg2_x+800, 500)

    love.graphics.draw(bg1, bg1_x, 500)
    love.graphics.draw(bg1, bg1_x+800, 500)
end
