local _script = [[

local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")

local localPlayer = Players.LocalPlayer
local gameId = game.PlaceId

queue_on_teleport(`loadstring(game:HttpGet("https://raw.githubusercontent.com/Starry-Proj/Minis/refs/heads/main/rejoin.luau"))()`)
task.wait(0.5)

while task.wait() do
    TeleportService:Teleport(gameId, localPlayer)
end

]]

queue_on_teleport(_script)
loadstring(_script)()
