--[[
	Asetukset
--]]

asetukset = {}

function asetukset:init()

	asetusvalikko = Menu.new()

	asetusvalikko:addItem{
		nimi = "Kokoruutu",
		toiminto = function()
			
			kokoruutu=not kokoruutu
			print("Kokoruutu:"..tostring(kokoruutu))
			love.window.setFullscreen(kokoruutu,"normal")
			
		end
	}

	asetusvalikko:addItem{
		nimi = "Aanet",
		toiminto = function()
		
			onkoAani=not onkoAani
			print("Aanet:"..tostring(onkoAani))
			if onkoAani then
			 TEsound.resume()
			else
			 TEsound.pause()
			end
			
		end
	}


end


function asetukset:enter( mista )

	self.mista = mista

end


function asetukset:update( dt )

	asetusvalikko:update( dt )

end


function asetukset:draw()

	love.graphics.draw( kuvat[ "testi_tausta.png" ], 0, 0 )

	asetusvalikko:draw( 100, 200 )

end


function asetukset:keypressed( nappain )
	if nappain=="escape" then
		print("Paavalikko")
		Gamestate.switch( valikko )
	end
	asetusvalikko:keypressed( nappain )
end
