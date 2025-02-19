local cycler = [[
pcall(function()
    local innerCycle = `pcall(function()task.wait(5)local a=game:GetService("Players")local b=game:GetService("TeleportService")local c=a.LocalPlayer;local d=game.PlaceId;task.wait(0.5)while task.wait(0.5)do b:Teleport(d,c)end;end)`
    
    local file = "Starry//Cycles//Rejoin-Cycle.luau"
    
    queue_on_teleport(readfile(file))
    
    task.spawn(function()
        loadstring(innerCycle)()
    end)
end)]]

local file = "Starry//Cycles//Rejoin-Cycle.luau"

if not isfile(file) then
    writefile(file, cycler)
end

loadstring(readfile(file))()
