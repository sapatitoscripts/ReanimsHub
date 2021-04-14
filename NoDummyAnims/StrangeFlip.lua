local plr = game.Players.LocalPlayer
local chr = plr.Character
local Root = chr.HumanoidRootPart
local UIS = game:GetService("UserInputService")
local planking = false
local rotate = 0
local back = false
local Torso = chr.Torso

local weld = Instance.new("Weld")

weld.Parent = Root
weld.Part0 = Root
weld.Part1 = Torso

UIS.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.Insert then
		planking = true
	end
end)

UIS.InputEnded:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.Insert then
		planking = false
	end
end)

game:GetService("RunService").RenderStepped:Connect(function()
	if planking == true then
		if rotate < 360 then
			back = true
		end
		if back == false then
			weld.C1 = CFrame.Angles(math.rad(rotate),math.rad(rotate),math.rad(rotate))
			rotate -= 200
		else
			weld.C1 = CFrame.Angles(math.rad(rotate),math.rad(rotate),math.rad(rotate))
			rotate += 200
		end
	else
		weld.C1 = CFrame.Angles(0,0,0)
	end
end)
