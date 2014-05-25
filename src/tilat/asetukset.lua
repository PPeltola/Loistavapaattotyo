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
			 
			 TEsound.volume("all",1)
			 TEsound.resume("all")
			 TEsound.play("media/aanet/tehosteet/onkoaani.ogg")
			 print("Nyt on aani")
			 
			else
			
			 TEsound.volume("all",0)
			 TEsound.pause()
			 print("Nyt ei ole aanta")
			 
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

	if kokoruutu then
		love.graphics.print("Paalla", 550, 200)
	else
		love.graphics.print("Pois", 550, 200)
	end

	if onkoAani then
		love.graphics.print("Paalla", 550, 300)
	else
		love.graphics.print("Pois", 550, 300)
	end

end


function asetukset:keypressed( nappain )

	if nappain=="escape" then
		if peliAlkanut then
		print("Paussivalikko")
		Gamestate.push( paussivalikko )
		else
		Gamestate.push( valikko )
		end
		
	end

	asetusvalikko:keypressed( nappain )

end
