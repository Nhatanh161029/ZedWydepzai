local function changeteam(team)
    game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("SetTeam", team)
    local makeVisible = {"RaceEnergy","Compass","Energy","AlliesButton","Code",
    "CrewButton","HomeButton","Mute","Settings","MenuButton","Beli","Fragments",
    "Level",
    --"Radar",
    "HP"}
    if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
        game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam"):Destroy()
    end
    for i,v in pairs(makeVisible) do
        if v == "RaceEnergy" then
            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Awakening") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Awakening") then
                game:GetService("Players").LocalPlayer.PlayerGui.Main[v].Visible = true
            end
        else
            game:GetService("Players").LocalPlayer.PlayerGui.Main[v].Visible = true
        end
    end
    game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
    game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
    game:GetService("Workspace").CurrentCamera.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
end
changeteam("Marines")
local placeId = game.PlaceId
if placeId == 2753915549 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
elseif placeId == 4442272183 then
    Second_Sea = true
elseif placeId == 7449423635 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
else
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
end
function EquipWeapon(Tool)
	pcall(function()
		if game.Players.LocalPlayer.Backpack:FindFirstChild(Tool) then 
			local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(Tool) 
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
		end
	end)
end
function Click()
	if not _G.FastAttack then
		local Module = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework)
		local CombatFramework = debug.getupvalues(Module)[2]
		local CamShake = require(game.ReplicatedStorage.Util.CameraShaker)
		CamShake:Stop()
		CombatFramework.activeController.attacking = false
		CombatFramework.activeController.timeToNextAttack = 0
		CombatFramework.activeController.hitboxMagnitude = 180
		game:GetService'VirtualUser':CaptureController()
		game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
	end
end
function toposition(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = true end
    pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/350, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
    tween:Play()
    if Distance <= 150 then
        tween:Cancel()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
    end
    if _G.StopTween == true then
        tween:Cancel()
        _G.Clip = false
    end
end
-- drop fruits minify
function dm()
    spawn(function()
        while wait() do
            if autorand then
                pcall(function()
                    game:GetService("VirtualInputManager"):SendKeyEvent(false,"8",false,game)
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"8",false,game)
                end)
            end
        end
    end)
end
wait(1)
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Tést Hub", HidePremium = false, IntroText = "Test Hub Loader", SaveConfig = true, ConfigFolder = "TFA Hub"})
OrionLib:MakeNotification({
	Name = "Test Hub Loading",
	Content = "Loading Whitelist Fake",
	Image = "rbxassetid://4483345998",
	Time = 7
})
local FarmTab = Window:MakeTab({
    Name = "General",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
FarmTab:AddToggle({
    Name = "Auto Farm",
    Default = false,
    Flag = "Farm",
    Save = false,
    Callback = function(Value)
        af = Value
    end    
})
FarmTab:AddToggle({
    Name = "Auto Bring Df",
    Default = false,
    Flag = "Bring Devil Fruits",
    Save = false,
    Callback = function(Value)
        autobring = Value
    end    
})
spawn(function()
    while task.wait() do
        if autobring then
            pcall(function()
                for i,v in pairs(game.Workspace:GetChildren()) do
                    if v:IsA("Tool") then
                        v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    end
                end
            end)
        end
    end
end)
local Beli = game:GetService("Players")["LocalPlayer"].Data.Beli.Value
spawn(function()
    while task.wait() do 
        pcall(function()
            if af then
                for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Melee" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.SelectWeapon = v.Name
                        end
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while task.wait() do 
        if af then
            pcall(function()
                if Second_Sea == true and Beli >= 10000000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
                    toposition(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
                elseif Second_Sea == true and Beli <= 10000000 then 
                    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
                        if v.Name:find("Chest") or v.Name:find("Chest1") or v.Name:find("Chest2") or v.Name:find("Chest3") or v.Name:find("CursedTreasure") then 
                            if game:GetService("Workspace"):FindFirstChild(v.Name) then
                                if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= math.huge then
                                    repeat task.wait()
                                    if game:GetService("Workspace"):FindFirstChild(v.Name) then
                                            for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                                                if v:IsA("BasePart") then
                                                    v.CanCollide=false;v.CanTouch=true;v.CanQuery=true
                                                end
                                            end                 
                                            game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(v.CFrame)
                                            EquipWeapon(_G.SelectWeapon)
                                            Click()
                                        end
                                    until not af or not v.Parent
                                end
                            end
                        end
                    end
                end
                if game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828) then
                    dm()
                    autorand = true
                else 
                    autorand = false
                end
            end)
        end
    end
end)
