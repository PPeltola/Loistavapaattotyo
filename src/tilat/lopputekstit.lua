

lopputekstit = {}


function lopputekstit:enter( taso )
TEsound.pause("musiikki")
TEsound.play("media/aanet/musiikki/StockSounds.ogg","lopputekstit")
teksti="Videopeli \n\n\n\n\n\n\n\n Ohjelmointi: \n\n\n Petrus Peltola \n\n Eero Lumijarvi \n\n\n\n\n\n\n\n Animointi: \n\n\n Eero Lumijarvi \n\n Petrus Peltola \n\n\n\n\n\n\n\n musiikki: \n\n\n tahan musiikkilahteet\n\n\n\n\n\n\n\n aanet: \n\n\n tahan aanilahteet"
tekstinY=650

end


function lopputekstit:update( dt )
tekstinY=tekstinY-2
end


function lopputekstit:draw()

love.graphics.printf(teksti,150,tekstinY,500, "center")

end


function lopputekstit:keypressed( nappain )

	if nappain == "escape" then
		Gamestate.switch(valikko)
		print("Paavalikko")
	end

end

function lopputekstit:leave()
TEsound.stop("lopputekstit")
TEsound.resume("musiikki")

end