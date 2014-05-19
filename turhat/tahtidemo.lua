--[[
	Ilkeitä asioita
--]]



function love.load()
	numero = 1
	fullscreen = true
end

function love.update(dt)
	numero = numero + 1
	viesti = '*'
	love.graphics.setColor( numero / 2 % 255, numero * 2 % 255, numero * numero % 255 )
end

function love.draw()
	for i = 0, 400, 40 do
		love.graphics.print( viesti, numero * numero * i % 800 , numero * numero / i % 600 )
	end
end
