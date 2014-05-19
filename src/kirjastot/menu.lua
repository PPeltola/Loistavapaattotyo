--[[
Simple Menu Library
by nkorth

Requires: love2d
Recommended: hump.gamestate

Public Domain - feel free to hack and redistribute this as much as you want.
]]--
return {

	new = function()
		return {
			items = {},
			selected = 1,
			animOffset = 0,
			addItem = function(self, item)
				table.insert(self.items, item)
			end,
			deleteItem = function(self, item)
			    for k in pairs (self.items) do
                self.items [k] = nil
                end
			end,
			update = function(self, dt)
				self.animOffset = self.animOffset / (1 + dt*10)
			end,
			draw = function(self, x, y)
				local height = 25
				local width = 200
				
				love.graphics.setColor(255, 255, 255, 50)
				love.graphics.rectangle('fill', x, y + height*(self.selected-1) + (self.animOffset * height), width, height)
				love.graphics.setColor(255, 255, 255, 75)
				if gameState=="choosingCharacter" then
				love.graphics.rectangle('fill', x, y, width, 190)
				else
				love.graphics.rectangle('fill', x, y, width, 100)
				end
				
				for i, item in ipairs(self.items) do
					if self.selected == i then
					love.graphics.setColor(0, 0, 0)	
					else
						love.graphics.setColor(255, 255, 255, 200)
					end
					--Lisäsin tämän:otsikko näkyy aina mustana
					if item.name == "Choose map:" or item.name == "Valitse hahmo1:" or item.name == "Valitse hahmo2:"   then
					love.graphics.setColor(0, 0, 0)	
					end
					
					love.graphics.print(item.name, x + 5, y + height*(i-1) + 5)
					love.graphics.setColor(255, 255, 255, 64)
				end
			end,
			keypressed = function(self, key)
				if key == 'up' then
					if self.selected > 1 then
						self.selected = self.selected - 1
						self.animOffset = self.animOffset + 1
					else
						self.selected = #self.items
						self.animOffset = self.animOffset - (#self.items-1)
					end
				elseif key == 'down' then
					if self.selected < #self.items then
						self.selected = self.selected + 1
						self.animOffset = self.animOffset - 1
					else
						self.selected = 1
						self.animOffset = self.animOffset + (#self.items-1)
					end
				elseif key == 'return' then
				   
					if self.items[self.selected].action then
					    love.timer.sleep(0.1)
						self.items[self.selected]:action()
					end
				end
			end
		}
	end
}