# CustomSplIt_RBX
A custom split method for Roblox that allows the option for a limit to how many splits can be done with a string.

Usage example:
local String = "Hello World, I am here!"
print(table.concat(Split(String, " ", 3), "\n"))

Output:
Hello
World,
I
am here!
