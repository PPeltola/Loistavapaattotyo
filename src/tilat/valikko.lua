--[[
	Valikko
--]]


-- Luodaan valikkotila
valikko = {}


function valikko:init()
	TEsound.stop("musiikki")
	TEsound.playLooping("media/aanet/musiikki/paavalikko.ogg","musiikki")
	print("Soitetaan valikkomusiikki")
	paavalikko = Menu.new()

	paavalikko:addItem{
		nimi = "Aloita peli",
		toiminto = function()
			Gamestate.switch( tasovalikko )
			print("Tasovalikko")
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
