--[[
	Asetukset
--]]

asetukset = {}

function asetukset:init()
	onkoMusiikki=true
	volyymi=1
	asetusvalikko= Menu.new()

	asetusvalikko:addItem{
		nimi = "Kokoruutu",
		toiminto = function()
			
			kokoruutu=not kokoruutu
			print("Kokoruutu:"..tostring(kokoruutu))
			love.window.setFullscreen(kokoruutu,"normal")

		end
	}

	asetusvalikko:addItem{
		nimi = "Volyymi",
		toiminto = function()
					
			 volyymi=volyymi+0.1
			 if volyymi > 1 then
			 volyymi=0
			 end
			 TEsound.volume("all",volyymi)
			 
			  print("Volyymi:"..volyymi)
			 TEsound.play("media/aanet/tehosteet/onkoaani.ogg")
			

		end
	}
	
	asetusvalikko:addItem{
		nimi = "Musiikki",
		toiminto = function()
			
			onkoMusiikki=not onkoMusiikki
			print("Musiikki:"..tostring(onkoMusiikki))
			if onkoMusiikki then
			TEsound.resume("musiikki")
			else
			TEsound.pause("musiikki")
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

	
		love.graphics.print((volyymi*100).."%", 550, 300)
	

	if onkoMusiikki then
		love.graphics.print("Paalla", 550, 400)
	else
		love.graphics.print("Pois", 550, 400)
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
