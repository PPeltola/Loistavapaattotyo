--[[

--]]


pelaaja = {}
pelaaja.__index = pelaaja


function pelaaja:luo( pelaajanHahmo, pelaajanKontrollit, pelaajanNimi, xLuomispiste, yLuomispiste, katsomisSuunta )

	local olio = {

		hahmo = pelaajanHahmo,
		print (hahmo),
		kontrollit = pelaajanKontrollit,

		tila = "",

		suunta = katsomisSuunta,

		x = xLuomispiste,
		y = yLuomispiste,

		xLuomispiste=xLuomispiste,
		yLuomispiste=yLuomispiste,
		
		voiHypata = true,

		xNopeus = 0,
		yNopeus = 0,
		xNopeusMax=30,
		yNopeusMax=30,
				
		osumaLaatikot = kekkonen:haeOsumaLaatikot( x, y )

		--pelaaja.xLuomispiste = xLuomispiste
		--pelaaja.yLuomispiste = yLuomispiste

	}

	setmetatable( olio, { __index = pelaaja } )

	return olio

end


function pelaaja:update( dt, painovoima )
	
	self.yNopeus = self.yNopeus + ( painovoima * dt )

	self.xNopeus = math.clamp(self.xNopeus, -self.xNopeusMax, self.xNopeusMax)
    self.yNopeus = math.clamp(self.yNopeus, -self.yNopeusMax, self.yNopeusMax)

	self.y = self.y + ( self.yNopeus  )
	self.x = self.x + ( self.xNopeus * dt )
	
	if self.y> 1000 then
		self:kuolema()
	end	

end


function pelaaja:draw()

	kekkonen:draw( self.x, self.y )

end


function pelaaja:keypressed( nappain )



end


function pelaaja:hyppaa(  )

	if self.voiHypata then
		self.yNopeus = self.hahmo.hyppyNopeus
	end

end

function pelaaja:liikuOikealle(  )

	self.xNopeus = kekkonen.juoksuNopeus
	self.suunta = "oikea"

end


function pelaaja:liikuVasemmalle(  )

	self.xNopeus = kekkonen.juoksuNopeus * -1
	self.suunta = "vasen"

end

function pelaaja:pysahdy(  )
	
	self.xNopeus = 0
	self.yNopeus = 0
end

function pelaaja:siirra( x, y )

end

function pelaaja:luoCollision()

tormaytin:addRectangle(self.x,self.y, 64,64)

end

function pelaaja:tarkistaTormaus(nykyinenTaso)
if collision then
 self:pysahdy()
end

end

function pelaaja:kuolema()
	
	self.y=self.yLuomispiste
	
end
