

kontrollit = {}


function kontrollit:enter(  )
kontrollivalikko=Menu.new()
kontrollivalikko:addItem{
	
		nimi = "Pelaaja1 ylos:",
		toiminto = function()
			print("Ylos:"..pelaajienKontrollit[1].YLOS)
			nappain=self:keypressed()
			pelaajienKontrollit[1].YLOS=nappain			
		end
	}
end


function kontrollit:update( dt )
	
	kontrollivalikko:update(dt)
end


function kontrollit:draw()
	kontrollivalikko:draw(100,200)
end


function kontrollit:keypressed( nappain )
	
	if nappain == "escape" then
		Gamestate.switch(asetukset)
		print("Asetukset")
	end
	
	if love.mouse.isDown("wu") then
		kontrollivalikko:keypressed("up")
	end
	if love.mouse.isDown("wd") then
		kontrollivalikko:keypressed("down")
	end
	if nappain == "return" then
		kontrollivalikko:keypressed("return")
	end
	return nappain
end

function kontrollit:leave()

end