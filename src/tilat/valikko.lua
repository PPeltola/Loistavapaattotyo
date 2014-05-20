--[[
	Paavalikko
--]]


-- Luodaan valikkotila
valikko = {}


function valikko:init()

	onkoPause = false

	paavalikko = Menu.new()

	paavalikko:addItem{
		nimi = "Aloita peli",
		toiminto = function()
			-- Gamestate.switch( peli )
			print("Peli alkaa")
		end
	}

	paavalikko:addItem{
		nimi = "Asetukset",
		toiminto = function()
			 Gamestate.switch( asetukset )
			print("Asetukset")
		end
	}

	paavalikko:addItem{
		nimi = "Lopeta",

		toiminto = function()
			print("Peli loppuu")
			love.event.quit()
		end
	}

end


function valikko:enter( mista )

	self.mista = mista

end


function valikko:update( dt )

	paavalikko:update( dt )

end


function valikko:draw()

	love.graphics.draw( kuvat[ "testi_tausta.png" ], 0, 0 )

	paavalikko:draw( 100, 200 )

end


function valikko:keypressed( nappain )

	paavalikko:keypressed( nappain )

end
