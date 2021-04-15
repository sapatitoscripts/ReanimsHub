repeat wait() until game:IsLoaded()
local plr = game.Players.LocalPlayer
--//PartCounter//--
local Parts = 0
for i, v in pairs(workspace:GetChildren()) do
    if v:IsA("Accessory") then
        Parts += 1
    end
end

game:GetService("StarterGui"):SetCore("SendNotification", {Title = "OP Block Spam by pijita#8968", Text = "You farmed: "..tostring(Parts).." parts"})
--//PartCounterEnd//--
local drops = 0

--//DropLoop//--
while wait(1.5) do
	if drops < 1000 then
	    
		drops += 1
		local chr = plr.Character
		chr:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(273, 192, -487)
		--//Drop//--
		for i, v in pairs(chr:GetChildren()) do
			local hat = v
			
			--//AccessoryCheck//--
			if v:IsA("Accessory") then
				
				--//HandleCheck//--
				if v:FindFirstChild("Handle") then
					
					--//SpecialMeshCheck//--
					if v:FindFirstChild("Handle"):FindFirstChild("SpecialMesh") then
						--//SpecialMeshDestroy//--
						v:FindFirstChild("Handle"):FindFirstChild("SpecialMesh"):Destroy()
						--//SpecialMeshDestroyEnd//--
						
						--//SendHatToWorkspace//--
						wait(0.05)
						hat.Parent = workspace
						--//SendHatToWorkspaceEnd//--
						
					else
						--//WarnNoSpecialMesh//--
						warn("No special mesh found...")
						--//WarnNoSpecialMeshEnd//--
						
					end
					--//SpecialMeshCheckEnd//--
					
				else
					
					--//WarnNoHandle//--
					warn("No handle found...")
					--//WarnHandleEnd//--
					
				end
				--//HandleCheckEnd//--
				
			end
			--//AccessoryCheckEnd//--
			
		end
		
	end
    wait(0.5)
game.Players.LocalPlayer.Character.Humanoid.Health = 0
end
--//DropLoopEnd//--