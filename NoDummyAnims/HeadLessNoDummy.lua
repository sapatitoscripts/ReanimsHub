local player = game.Players.LocalPlayer
local chr = player.Character

local weld = Instance.new("Weld")
weld.Parent = chr.Torso
weld.Part0 = chr.Torso
weld.Part1 = chr.Head

chr.Humanoid.Died:Connect(function()
    script:Destroy()
end)

game:GetService("RunService").RenderStepped:Connect(function()
   weld.C1 = CFrame.new(0,99999,0)
end)