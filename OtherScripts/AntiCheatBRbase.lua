--//AntiKick//--
local ya = getrawmetatable(game)
local mum = ya.__namecall
setreadonly(ya, false)
ya.__namecall = newcclosure(function(name, ...)
local tabs = {...}
if getnamecallmethod() == "Kick" then
return 
end
return mum(name, unpack(tabs))
end)
setreadonly(ya, true)
--//AntiKickEnd//--

local plr = game.Players.LocalPlayer
local chr = plr.Character

--//DeleteAntiCheat//--
chr["S_D_AECheck"]:Destroy()
chr["S_D_AEClient"]:Destroy()
chr["HDAdminStarterCharacter"]:Destroy()
chr["SprintScript"]:Destroy()
--//DeleteAntiCheatEnd//--

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
if v.Name == "Shirt" then
    v:Destroy()
end
if v.Name == "Pants" then
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