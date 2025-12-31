local version = 0
local programs = {}
table.insert(programs, {"hello_world", "https://raw.githubusercontent.com/ExpeditiousReadr/turtles/refs/heads/main/hello.lua"})
table.insert(programs, {"pure_daisy", "https://raw.githubusercontent.com/ExpeditiousReadr/turtles/refs/heads/main/pure_daisy.lua"})
print("initiating bootloader version " .. version .. ": " .. #programs .. " available.")

for i = 1, #programs do
	print(i)
	print(i .. ": " .. programs[i][1])
end

if arg ~= nil and tonumber(arg[1]) <= #programs then
	local file = fs.open("/rom/startup.lua", "w")
	local request = http.get(programs[args[1]][2])
	fs.write(request.readAll())
	request.close()
	fs.close()
end



