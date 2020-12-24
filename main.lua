function love.load()
	red = 73/255
	green = 75/255
	blue = 79/255
	les = {}
	index = 1
	x = 60
	y = 286
	love.graphics.setBackgroundColor(red,green,blue)
end

function love.update(dt)

end

function love.draw()
	--love.graphics.setBackgroundColor(73,75,79)
	love.graphics.setColor(59/255,61/255,64/255)
	love.graphics.rectangle("fill",50,260,620,50, 10, 10 , 100)
	love.graphics.setColor(1,1,1)
	for i=1, table.getn(les) do
		love.graphics.print(les[i],x,y)
		--x = x + :gerWidth(les[i])
	end
	x = 60
	

	
end

function love.keypressed(key)
	if key == "escape" then
		love.event.quit()
	elseif key == "space" then
		les[index] = " "
		index = index + 1
	elseif key == "backspace" then
		index = index - 1
		les[index] = " "
	else
		les[index] = key
		index = index + 1
	end
end

function typing()

end