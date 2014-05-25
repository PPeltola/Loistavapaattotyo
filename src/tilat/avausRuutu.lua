--[[
	Ensimmainen ladattava tila, peli ensimmainen ruutu
	jossa ainut vaihtoehto escin lisaksi on enter -> avausvalikot
--]]


-- Luodaan itse avausruutu-tila pelille
avausRuutu = {}


function avausRuutu:init()
	TEsound.playLooping("media/aanet/musiikki/avausRuutu.ogg", "musiikki")
	-- Luodaan ajastin ja totuusarvo valkkyvaa tekstia varten
	valkkyvyysAjastin = Timer.new()
	naytetaankoTeksti = true

	-- Luodaan funktio, joka asettaa valkkyvan tekstin nakyvaksi/nakymattomaksi sekunnin valein
	valkkyvyysAjastin:addPeriodic(1, function() naytetaankoTeksti = not naytetaankoTeksti end)

end


function avausRuutu:update(	dt )

	-- Paivitetaan valkkyvan tekstin ajastin
	valkkyvyysAjastin:update(dt)

end


function avausRuutu:draw()

	-- Piiretaan tausta
	love.graphics.draw( kuvat[ "ukk_tausta.png" ], 0, 0 )

	-- Piirretaan suuri nimi/title
	love.graphics.print( "VIDEOPELI", 30, 100, 0, 1.5, 1.5 )

	-- Piirretaan tahdottaessa valkkyva teksti
	if naytetaankoTeksti then
		love.graphics.print( "Paina 'Enter'", 60, 500, 0, 0.6, 0.6 )
	end

end


function avausRuutu:keypressed( nappain )

	-- Tarkistetaan mita nappainta on painettu, ja toimitaan sen mukaisesti
	if nappain == "escape" then
		love.event.quit()
		-- Vaihdetaan paussivalikko

	elseif nappain == "return" then
		TEsound.play("media/aanet/tehosteet/menuclick.ogg")
		print( "Paavalikko ")
		Gamestate.switch( valikko, self )

	end

end
