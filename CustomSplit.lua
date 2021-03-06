local function Split(String, Separator, Limit)
	if type(Limit) == "number" and Limit > 0 then
		local Counter = 0
		local Splits = {}
		local StartLine = {1}
		local EndLine = {}
		for Num = 1, #String do
			if String:sub(Num, Num + (#Separator - 1)) == Separator then
				table.insert(StartLine, Num + #Separator)
				table.insert(EndLine, Num - 1)
				Counter += 1
			end
			if Counter >= Limit then
				break
			end
		end
		for Num = 1, #StartLine do
			if StartLine[Num] and EndLine[Num] then
				table.insert(Splits, String:sub(StartLine[Num], EndLine[Num]))
			elseif StartLine[Num] then
				table.insert(Splits, String:sub(StartLine[Num]))
			end
		end
		return Splits
	else
		return string.split(String, Separator)
	end
end -- Caster of Death upon Thee

--[[
Example code:
local Str = "Hello World, I am here!"
print(table.concat(Split(Str, " ", 1), "\n"))

Output:
Hello
World,
I
am here!
--]]
