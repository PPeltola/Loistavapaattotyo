--[[
	liturgi.laula( "Herra olkoon teidan kanssanne" )
	seurakunta.laula( "Niin myos sinun henkesi kanssa." )
--]]


peli = {}


function on_collision(dt, shape_a, shape_b, mtv_x, mtv_y)

print("Collision")
collision=true
end


function collision_stop(dt, shape_a, shape_b)

print("no Collision")
collision=false
end


function peli:init()


	tormaytin = HC( 100, on_collision, collision_stop )

	love.graphics.setBackgroundColor( 153, 204, 255 )
	
	TEsound.stop("musiikki")
	peliAlkanut=true 
	x  = 300
	y = 300
	r = 1

	painovoima = 1300

	onkoPaussi = false

	pelaajat = {}

end


function peli:enter( self, tasonNimi, pelaajaMaara)

	nykyinenTaso = STI.new( TASO_POLKU .. tasonNimi )

	tormayskohdat = nykyinenTaso:getCollisionMap("Seinat")

	pelaajienMaara = pelaajaMaara

	tormaytin:setActive(ctile)
	--[[
	for u, i in pairs(tormayskohdat.data) do
		print('\n')
		print(u)
		print('----')
		print(i)
		print('\n')
	end
	--]]



	peli:luoPelaajat()

end


function peli:update( dt )
	tormaytin:update(dt)
	nykyinenTaso:update( dt )

	for _, pelaaja in pairs( pelaajat ) do

		pelaaja:update( dt, painovoima )

	end

		--Liikkuminen
	if love.keyboard.isDown("d") and not love.keyboard.isDown("a") then
        pelaajat[1]:liikuOikealle()
	
    elseif love.keyboard.isDown("a") and not love.keyboard.isDown("d")  then
        pelaajat[1]:liikuVasemmalle()
	   
    else
        pelaajat[1]:pysahdy()
	end	
	
end


function peli:draw()


	nykyinenTaso:draw()

	for _, pelaaja in pairs( pelaajat ) do
	
		pelaaja:draw()
		
	end
end


function peli:keypressed( nappain )

	if nappain == "escape" then
		Gamestate.push(paussivalikko,"peli")
		print("Paussivalikko")
	end

end


function peli:asetaPaussille()



end


function peli:luoPelaajat()

	-- print( nykyinenTaso.layers["Syntykohdat"].objects[1].x )

	print()

	for i = 1, pelaajienMaara do
		pelaajat[ i ] = pelaaja:luo( "kekkonen", pelaajienKontrollit[ i ], "Pelaaja " .. i,
		nykyinenTaso.layers["Syntykohdat"].objects[i].x,
		nykyinenTaso.layers["Syntykohdat"].objects[i].y, "vasen" )
		
		

	end
	
	for _, pelaaja in pairs( pelaajat ) do
	
		pelaaja:luoCollision()
		
	end
	
end
