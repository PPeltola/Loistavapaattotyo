--[[
	Yleinen lataustiedosto, jossa kaikki kama ladataan.
	Tein talle oman tiedoston, koska se nayttaa siistimmalta.
--]]


-- Asetetaan hiiren osoitin nakymattomaksi
love.mouse.setVisible( false )


love.graphics.setDefaultFilter( "nearest", "nearest", 1 )

print( "Asetetaan tiedostopolut" )

-- Luodaan latausta helpottavat polut ja asetetaan ne muuttujiin
AANI_POLKU = "media/aanet/"
FONTTI_POLKU = "media/fontit/"
KUVA_POLKU = "media/kuvat_jne/"
TASO_POLKU = "media/tasot/"

KIRJASTO_POLKU = "src/kirjastot/"
LUOKKA_POLKU = "src/luokat/"
TILA_POLKU = "src/tilat/"


print("Ladataan valmiit kirjastot")

-- Ladataan valmiit kirjastot
require( KIRJASTO_POLKU .. "TEsound" )
Menu = require( KIRJASTO_POLKU .. "menu" )
Gamestate = require( KIRJASTO_POLKU .. "gamestate" )
STI = require ( "src/kirjastot.STI" )
Timer = require ( KIRJASTO_POLKU .. "timer" )

print("Ladataan omat tilat, yms.")

require ( TILA_POLKU .. "avausRuutu" )
require ( TILA_POLKU .. "asetukset" )
require ( TILA_POLKU .. "valikko" )
require ( TILA_POLKU .. "tasovalikko" )
require ( TILA_POLKU .. "hahmovalikko" )
require ( TILA_POLKU .. "paussivalikko" )
require ( TILA_POLKU .. "peli" )
require ( TILA_POLKU .. "lopputekstit" )
require ("src/pelaaja")

print("Ladataan fontit")

-- Ladataan fontit
comicSans = love.graphics.newFont( FONTTI_POLKU .. "comicsans.ttf", 15 )
laatikkoFontti = love.graphics.newFont( FONTTI_POLKU .. "boxybold.ttf", 36 )

-- Asetetaan fontti
love.graphics.setFont( laatikkoFontti )


-- Luodaan taulukko, johon laitetaan kaikkien ladattavien kuvien tiedostonimet
kuvaVarasto = love.filesystem.getDirectoryItems( KUVA_POLKU )

-- Ladataan kaikki kuvat kayttaen asken luotua taulukkoa
kuvat = {}
for _, kuva in ipairs( kuvaVarasto ) do
	kuvat[kuva] = love.graphics.newImage( KUVA_POLKU .. kuva )
	print( "Ladataan " .. kuva )
end

hahmoVarasto = {
	"Velho",
	"Ritari",
	"Kekkonen"
	
}

hahmot = {}

for _, hahmo in ipairs( hahmoVarasto ) do
	table.insert(hahmot, hahmo)
	print( "Ladataan " ..hahmo )
end

tasoVarasto = {
	"Testitaso",
	"Aavikko",
	"Pilvenpiirtaja",
	"Eduskunta"
}

tasot = {}

for _, taso in ipairs( tasoVarasto ) do
	tasot[taso] = STI.new( TASO_POLKU .. taso )
	print( "Ladataan " .. taso )
end

print( "\nKaikki kama ladattu\n" )

onkoAani=true
peliAlkanut=false