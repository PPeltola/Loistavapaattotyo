--[[
	Valikko
--]]


-- Luodaan valikkotila
paussivalikko = {}


function paussivalikko:init()

	valikko = Menu.new()

	valikko:addItem{
		nimi = "Jatka pelia",
		toiminto = function()
			Gamestate.push( peli )
			print("Takaisin peliin")
		end
	}

	valikko:addItem{
		nimi = "Asetukset",
		toiminto = function()
			 Gamestate.switch( asetukset ,"paussivalikko")
			print("Asetukset")
		end
	}

	valikko:addItem{
		nimi = "Lopeta",
		toiminto = function()
			print("Peli loppuu")
			love.event.quit()
		end
	}

end


function paussivalikko:enter( mista )

	self.mista = mista

end


function paussivalikko:update( dt )

	valikko:update( dt )

end


function paussivalikko:draw()

	love.graphics.draw( kuvat[ "testi_tausta.png" ], 0, 0 )

	valikko:draw( 100, 200 )

end


function paussivalikko:keypressed( nappain )
	if nappain == "escape" then
		
		Gamestate.push(peli)
		print("Takaisin peliin")
	end
	valikko:keypressed( nappain )

end