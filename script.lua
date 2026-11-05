
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer
local mouse = player:GetMouse()

local tool = script.Parent

local TeleportarTeste = ReplicatedStorage:WaitForChild("TeleportarTeste")

tool.Activated:Connect(function()

    -- Pegar a posição clicada no mundo
    local posicao = mouse.Hit.Position

    -- Solicitar teleporte ao servidor
    TeleportarTeste:FireServer(posicao)

end)
