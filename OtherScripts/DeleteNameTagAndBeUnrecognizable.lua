local plr = game.Players.LocalPlayer
local chr = plr.Character
--//Just a branch of the brazilian script//--

--//BeUnrecognizable//-- (Usefull to cheat without being banned.)
for i, v in pairs(chr:GetChildren()) do

    --//DeleteNametag//--
    if v:IsA("BillboardGui") then
        v:Destroy()
    end
    --//DeleteNametagEnd//--
    
    --//DeleteFace//--
    if v.Name == "Head" then
        v.face:Destroy()
    end
    --//DeleteFaceEnd//--
    
    --//RemoveShirtAndPants//--
    if v:IsA("Shirt") then
        v:Destroy()
    end
    if v:IsA("Pants") then
        v:Destroy()
    end
    --//RemoveShirtAndPantsEnd//--
    
    --//AccessoryDestroy//--
    if v:IsA("Accessory") then
        v:Destroy()
    end
    --//AccessoryDestroyEnd//--
    end
    --//BeUnrecognizableEnd//--