--[[
	Ilkeitä asioita
--]]

tahtidemo = {}

function tahtidemo:init()
	numero = 1
	fullscreen = true
end

function tahtidemo:update(dt)
	numero = numero + 1
	viesti = 'ES'
	love.graphics.setColor( numero / 2 % 255, numero * 2 % 255, numero * numero % 255 )
end

function tahtidemo:draw(r)

	for i = 0, 400, 40 do
		love.graphics.print( viesti, numero * numero * i % 800 , numero * numero / i % 600, r * -1, 0.4)
	end
end
