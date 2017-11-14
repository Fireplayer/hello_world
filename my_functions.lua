-- 1 - n随机数
math.randomseed(os.time())
local tab = {}
for i = 1, 10 do
	table.insert(tab, i)
end

for i = #tab, 1, -1 do
	local randIndex = math.random(1, i)
	local tmp = tab[randIndex]
	tab[randIndex] = tab[i]
	tab[i] = tmp
end

for i, v in ipairs(tab) do
	print(i, v)
end
