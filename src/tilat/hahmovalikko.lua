--[[
	Hahmovalikko
--]]

hahmovalikko = {}


function hahmovalikko:enter(taso)

--Molemmille pelaajille oma valikko
	hahmo1Valikko = Menu.new()
	hahmo2Valikko = Menu.new()

	for _, hahmo in ipairs( hahmot ) do

		hahmo1Valikko:addItem{
		
			nimi = hahmo,
			toiminto = function()
			
			 valittuHahmo=hahmo
			 
			end
		}
		
        hahmo2Valikko:addItem{
			nimi = hahmo,
			toiminto = function()
			
				valittuHahmo2=hahmo
			
				pelaaja:new(valittuHahmo,valittuHahmo2)
				Gamestate.switch( peli, taso)
				print( "Peli, hahmoina " .. valittuHahmo.."&"..valittuHahmo2)
			
			end
		}
	end

end

function hahmovalikko:update( dt )

	hahmo1Valikko:update( dt )
	hahmo2Valikko:update( dt )

end

function hahmovalikko:draw()

	love.graphics.draw( kuvat[ "testi_tausta.png" ], 0, 0 )
	
	love.graphics.print( "Valitse hahmot", 100, 10)
	
	love.graphics.draw( kuvat[ hahmo1Valikko.items[hahmo1Valikko.selected].nimi .. ".png" ], 200, 100 ,0,3,3)
	love.graphics.draw( kuvat[ hahmo2Valikko.items[hahmo2Valikko.selected].nimi .. ".png" ], 200, 400 ,0,3,3)
	
	hahmo1Valikko:draw( 550, 100, 60, 0.6 )
	hahmo2Valikko:draw( 550, 400, 60, 0.6 )
end

function hahmovalikko:keypressed( nappain )

	if nappain=="escape" then
		print( "Paavalikko" )
		Gamestate.switch( valikko )
	end
	
	--Hahmo 1 valitaan wasd
    if nappain=="w" then
		hahmo1Valikko:keypressed( "up" )
	end
	if nappain=="s" then
		hahmo1Valikko:keypressed( "down" )
	end
	if nappain=="return" then
		hahmo1Valikko:keypressed( "return" )
	end	
	
	hahmo2Valikko:keypressed( nappain )
end
