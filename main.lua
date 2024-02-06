function love.load()
  x = 100
  fruits = {}
  fruits = {"apple", "banana"}
  table.insert(fruits, "pear")
end

function love.update(dt)
  if love.keyboard.isDown("right") then
    x = x + 400 * dt
  end
  if love.keyboard.isDown("left") then
    x = x - 400 * dt
  end
end

function love.draw()
  love.graphics.rectangle("line", x, 40, 200, 150)
  for i,fruit in ipairs(fruits) do
    love.graphics.print(fruit, 100, 50 * i)
  end
end
