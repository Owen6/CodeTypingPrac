function love.load()
	red = 73/255
	green = 75/255
	blue = 79/255
	Letter = "Letter"
	les = {}
	index = 1
	x = 0
	y = 0
	love.graphics.setBackgroundColor(red,green,blue)
end

function love.update(dt)

end

function love.draw()
	--love.graphics.setBackgroundColor(73,75,79)
	
	love.graphics.setColor(1,1,1)
	for i=1, table.getn(les) do
		love.graphics.print(les[i],i*8,y)
	end
	

	
end

function love.keypressed(key)
	if key == "escape" then
		love.event.quit()
	elseif key == "space" then
		Letter = " "
		les[index] = " "
		index = index + 1
	else
		Letter = key
		les[index] = key
		index = index + 1
	end
end

function typing()

end