--MAGIC CLICKER
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Welcome to KYS";
    Text = "Our discord server invite is copied to ur clipboard";
})
setclipboard("https://discord.gg/hngpBtZrEv")
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Puchatek2/adasdasdasd/main/mymine.lua"))()
local Window = Library.CreateLib("KYS SYSTEM DEV", "Ocean")

--Sections

local Credits = Window:NewTab("Credits")
local CreditsSection = Credits:NewSection("Authors")
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")
local AutoFarm = Window:NewTab("AutoFarm")
local AutoClickerSection = AutoFarm:NewSection("AutoClicker")
local AutoRebirth = Window:NewTab("Rebirth")
local AutoRebirthSection = AutoRebirth:NewSection("AutoRebirth")
local Settings = Window:NewTab("Settings")
local SettingsSection = Settings:NewSection("UI")
--Scripts

CreditsSection:NewButton("Puchatek#5660", "ButtonInfo", function(v)
    print("Clicked")
        setclipboard("Puchatek#5660")
        game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "USER";
    Text = "copied to ur clipboard";
})
end)
CreditsSection:NewButton("Amazonkaaa#9148", "ButtonInfo", function(v)
    print("Clicked")
            setclipboard("Amazonkaaa#91480")
        game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "USER";
    Text = "copied to ur clipboard";
})
end)

PlayerSection:NewSlider("Player", "SliderInfo", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

workspace.DescendantAdded:Connect(function(value)
    if value.Name == "TouchInterest" and getgenv().autoFarm and value.Parent then
        firetouchinterest(pHead,value.Parent,0)
        wait()
        firetouchinterest(pHead,value.Parent,1)
    end
end)
AutoClickerSection:NewToggle("AutoFarm", "to farm", function(state)
        if state then
            getgenv().Start = true

while wait() and getgenv().Start do

getgenv().Start = true

while wait() and getgenv().Start do
game:GetService("ReplicatedStorage").Remotes.CheckClick:FireServer()
end


end
    else
            getgenv().Start = false

while wait() and getgenv().Start do

getgenv().Start = true

while wait() and getgenv().Start do
game:GetService("ReplicatedStorage").Remotes.CheckClick:FireServer()
end
end
end
end)
local listrebirth = {
    1;2;3;4;5;6;7;8;9;10;
    11;12;13;14;15;16;17;18;19;20;
    21;22;23;24;25;26;27;28;29;30;
}

AutoRebirthSection:NewDropdown("Select Rebirths", "Sex", listrebirth, function(RebirthCount)
    getgenv().LiczbaRebirth = RebirthCount
    print(LiczbaRebirth)
end)

AutoRebirthSection:NewToggle("Start Rebirth", "sex", function(startrebirth)
    if startrebirth then
        getgenv().startrebirth1 = true
                while wait() and startrebirth1 do
        game:GetService("ReplicatedStorage").Remotes.BuyRebirth:FireServer(LiczbaRebirth)
        end
    else
        getgenv().startrebirth1 = false
                while wait() and startrebirth1 do
        game:GetService("ReplicatedStorage").Remotes.BuyRebirth:FireServer(LiczbaRebirth)
    end
end
end)
SettingsSection:NewKeybind("LeftControl", "toggle ", Enum.KeyCode.LeftControl, function()
	Library:ToggleUI(LeftControl)
end
