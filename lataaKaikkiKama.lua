--[[
	Yleinen lataustiedosto, jossa kaikki kama ladataan.
	Tein talle oman tiedoston, koska se nayttaa siistimmalta.
--]]


-- Asetetaan hiiren osoitin nakymattomaksi
love.mouse.setVisible( false )


-- Luodaan latausta helpottavat polut ja asetetaan ne muuttujiin
AANI_POLKU = "media/aanet/"
FONTTI_POLKU = "media/fontit/"
KUVA_POLKU = "media/kuvat_jne/"
TASO_POLKU = "media/tasot/"

KIRJASTO_POLKU = "src/kirjastot/"
LUOKKA_POLKU = "src/luokat/"
TILA_POLKU = "src/tilat/"

print( "Asetetaan tiedostopolut" )


-- Ladataan valmiit kirjastot
Menu = require( KIRJASTO_POLKU .. "menu" )
Gamestate = require( KIRJASTO_POLKU .. "gamestate" )
STI = require "src/kirjastot.STI"
Timer = require ( KIRJASTO_POLKU .. "timer" )

print("Ladataan valmiit kirjastot")

require ( TILA_POLKU .. "avausRuutu" )

print("Ladataan omat tilat, yms.")


-- Ladataan fontit
comicSans = love.graphics.newFont( FONTTI_POLKU .. "comicsans.ttf", 15 )
laatikkoFontti = love.graphics.newFont( FONTTI_POLKU .. "boxybold.ttf", 36 )

print("Ladataan fontit")


-- Luodaan taulukko, johon laitetaan kaikkien ladattavien kuvien tiedostonimet
kuvaVarasto = love.filesystem.getDirectoryItems( KUVA_POLKU )

-- Ladataan kaikki kuvat kayttaen asken luotua taulukkoa
kuvat = {}
for _, kuva in ipairs( kuvaVarasto ) do
	kuvat[kuva] = love.graphics.newImage( KUVA_POLKU .. kuva )
	print( "Ladataan " .. kuva )
end


print("\nKaikki kama ladattu\n")
