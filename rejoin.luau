local _script = [[

local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")

local localPlayer = Players.LocalPlayer
local gameId = game.PlaceId

queue_on_teleport(`loadstring(game:HttpGet(""))()`)
task.wait(0.5);

TeleportService:Teleport(gameId, localPlayer)

]]

queue_on_teleport(_script)
loadstring(_script)()
