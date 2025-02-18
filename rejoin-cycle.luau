local cycler = [[

    print("Connected (1/3)")
    
    task.wait(2)
    
    local Players = game:GetService("Players")
    local TeleportService = game:GetService("TeleportService")
    
    local localPlayer = Players.LocalPlayer
    local gameId = game.PlaceId
    
    queue_on_teleport(`loadstring(game:HttpGet("https://raw.githubusercontent.com/Starry-Proj/Minis/refs/heads/main/rejoin-cycle.luau"))()`)
    print("Saved cycle (2/3)")
    
    task.wait(0.5)
    
    while task.wait() do
        TeleportService:Teleport(gameId, localPlayer)
    end
    
    print("Rejoining... (3/3)")

]]

queue_on_teleport(cycler)
loadstring(cycler)()
