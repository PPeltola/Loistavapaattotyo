--[[
	liturgi.laula( "Herra olkoon teidan kanssanne" )
	seurakunta.laula( "Niin myos sinun henkesi kanssa." )
--]]


peli = {}


function peli:init()
	love.graphics.setBackgroundColor(100, 42, 100)
	TEsound.stop("musiikki")
	peliAlkanut=true 
	x  = 300
	y = 300
	r = 1

	require("turhat/tahtidemo")

	tahtidemo:init()

end


function peli:enter( taso )



end


function peli:update( dt )

	r =  r + math.rad(40 * dt)

	--print(r)

	tahtidemo:update(dt)

end


function peli:draw()

	tahtidemo:draw(r)

	love.graphics.printf( "Tama on videopeli.", x, y, 400, "center", r )

end


function peli:keypressed( nappain )

	if nappain == "escape" then
		Gamestate.push(paussivalikko,"peli")
		print("Paussivalikko")
	end

	if nappain == "up" then
		y = y - 40
	elseif nappain == "down" then
		y = y + 40
	elseif nappain == "left" then
		x = x - 40
	elseif nappain == "right" then
		x = x + 40
	end

end
