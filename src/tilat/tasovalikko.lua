--[[
	Tasovalikko
--]]


tasovalikko = {}


function tasovalikko:init()

	tasojenValikko = Menu.new()

	for tasonNimi, taso in pairs( tasot ) do

		tasojenValikko:addItem{
			nimi = tasonNimi,
			toiminto = function()
				Gamestate.switch( peli, taso )
				print( "Peli, tasona " .. tasonNimi )
			end
		}

	end

end

function tasovalikko:update( dt )

	tasojenValikko:update( dt )

	--print( tasojenValikko.items[tasojenValikko.selected].nimi )

end

function tasovalikko:draw()

	love.graphics.draw( kuvat[ "testi_tausta.png" ], 0, 0 )

	love.graphics.draw( kuvat[ tasojenValikko.items[tasojenValikko.selected].nimi .. ".png" ], 30, 100 )

	tasojenValikko:draw( 550, 200, 60, 0.6 )

end

function tasovalikko:keypressed( nappain )

	if nappain=="escape" then
		print( "Paavalikko" )
		Gamestate.switch( valikko )
	end

	tasojenValikko:keypressed( nappain )

end
