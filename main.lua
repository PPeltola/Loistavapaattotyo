--[[
	Ilkeita asioita
--]]


function love.load()

	-- Ladattaan kaikki kama
	require( "lataaKaikkiKama" )

	-- Asetetaan Gamestate-kirjasto automaattisesti toistamaan tamanhetkisen tilan callback-funktioita
	Gamestate.registerEvents()

	-- Asetetaan pelin tila avausruuduksi
	Gamestate.switch( avausRuutu )

end

function love.update( dt )
	TEsound.cleanup()
end

function love.draw()

end
