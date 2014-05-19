function love.conf( t )

	-- Poistetaan joystick-ohjain kaytosta (boolean)
    t.modules.joystick = false

	-- Avataan myos konsoli-ikkuna (boolean, vain Windows)
    t.console = true

	-- Peli-ikkunan nimi (merkkijono)
    t.title = "VIDEOPELI"

	-- Asetetaan fulscreen-tila pois (boolean)
    t.window.fullscreen = false

	-- Asetetaan vsync-tila paalle (boolean)
    t.window.vsync = true

	-- Peli-ikkunan leveys (numero)
    t.window.width = 800

	-- Peli-ikkunan korkeus (numero)
    t.window.height = 600

end
