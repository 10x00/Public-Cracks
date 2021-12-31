-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Main = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local Watermark = Instance.new("TextLabel")
local BigManBuild = Instance.new("TextButton")
local JoinDiscord = Instance.new("TextButton")
local BringBall = Instance.new("TextButton")
local DeleteTag = Instance.new("TextButton")
local Sprint = Instance.new("TextButton")
local Rejoin = Instance.new("TextButton")
local ShotMake = Instance.new("TextButton")
local Respawn = Instance.new("TextButton")
local Close = Instance.new("TextButton")
local Minus = Instance.new("TextButton")
local Takeballtext = Instance.new("TextBox")
local Takeball = Instance.new("TextButton")
local GotoTextBox = Instance.new("TextBox")
local Goto = Instance.new("TextButton")
local BackgroundTxt = Instance.new("TextBox")
local BackgroundColor = Instance.new("TextButton")
local Buttonandframetxt = Instance.new("TextBox")
local bafbutton = Instance.new("TextButton")
local Watermark2 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false 

Frame.Active = true 
Frame.Selectable = true
Frame.Draggable = true
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(69, 159, 255)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.329426259, 0, 0.299544424, 0)
Frame.Size = UDim2.new(0, 583, 0, 30)

Main.Name = "Main"
Main.Parent = Frame
Main.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(-0.00170039944, 0, 0.989693224, 0)
Main.Selectable = true
Main.Size = UDim2.new(0, 583, 0, 385)

ImageLabel.Parent = Main
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Size = UDim2.new(0, 583, 0, 385)
ImageLabel.Image = "rbxassetid://"
ImageLabel.Visible = false

Watermark.Name = "Watermark"
Watermark.Parent = Frame
Watermark.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Watermark.BackgroundTransparency = 1.000
Watermark.Position = UDim2.new(0.424273551, 0, 0.0445709974, 0)
Watermark.Size = UDim2.new(0, 111, 0, 28)
Watermark.Font = Enum.Font.GothamBold
Watermark.Text = "Hoop Central - ALH"
Watermark.TextColor3 = Color3.fromRGB(255, 255, 255)
Watermark.TextSize = 14.000

BigManBuild.Name = "BigMan Build"
BigManBuild.Parent = Frame
BigManBuild.BackgroundColor3 = Color3.fromRGB(69, 159, 255)
BigManBuild.BorderColor3 = Color3.fromRGB(255, 255, 255)
BigManBuild.Position = UDim2.new(0.28473413, 0, 3.63333273, 0)
BigManBuild.Size = UDim2.new(0, 137, 0, 27)
BigManBuild.Font = Enum.Font.SourceSans
BigManBuild.Text = "Big Man Build"
BigManBuild.TextColor3 = Color3.fromRGB(255, 255, 255)
BigManBuild.TextSize = 14.000
BigManBuild.MouseButton1Click:Connect(function()
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if v:IsA("MeshPart") then 
    v.Size = Vector3.new(1,10,1) 
end
end
end)
JoinDiscord.Name = "Join Discord"
JoinDiscord.Parent = Frame
JoinDiscord.BackgroundColor3 = Color3.fromRGB(69, 159, 255)
JoinDiscord.BorderColor3 = Color3.fromRGB(255, 255, 255)
JoinDiscord.Position = UDim2.new(0.28473413, 0, 4.79999924, 0)
JoinDiscord.Size = UDim2.new(0, 137, 0, 27)
JoinDiscord.Font = Enum.Font.SourceSans
JoinDiscord.Text = "Join Discord"
JoinDiscord.TextColor3 = Color3.fromRGB(255, 255, 255)
JoinDiscord.TextSize = 14.000
JoinDiscord.MouseButton1Click:Connect(function()
    syn.request(
   {
       Url = "http://127.0.0.1:6463/rpc?v=1",
       Method = "POST",
       Headers = {
           ["Content-Type"] = "application/json",
           ["origin"] = "https://discord.com",
       },
       Body = game:GetService("HttpService"):JSONEncode(
           {
               ["args"] = {
                   ["code"] = "yccZ8hkMnp",
               },
               ["cmd"] = "INVITE_BROWSER",
               ["nonce"] = "."
           })
   })
   end)
BringBall.Name = "BringBall"
BringBall.Parent = Frame
BringBall.BackgroundColor3 = Color3.fromRGB(69, 159, 255)
BringBall.BorderColor3 = Color3.fromRGB(255, 255, 255)
BringBall.Position = UDim2.new(0.28473413, 0, 2.46666622, 0)
BringBall.Size = UDim2.new(0, 137, 0, 27)
BringBall.Font = Enum.Font.SourceSans
BringBall.Text = "Bring Ball"
BringBall.TextColor3 = Color3.fromRGB(255, 255, 255)
BringBall.TextSize = 14.000
BringBall.MouseButton1Click:Connect(function()
    for i = 1,3 do 
    
    local Text1 = "Press 5 To Bring The Ball"
local function callback(Text)
end
 
local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback
 
game.StarterGui:SetCore("SendNotification", {
    Title = "Notification!";
    Text = Text1;
    Duration = "60";
    Callback = NotificationBindable;
}) end
    game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "5" then
 
 for i,v in pairs (game.Workspace:GetChildren()) do 


    local distance = 90
 if v.Name == "Basketball" then
  
        if  (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude <= distance  then
        for i = 1,30 do 
            Wait()
v.CFrame =   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  end
        end
    end
end
end

end)
    end)
DeleteTag.Name = "DeleteTag"
DeleteTag.Parent = Frame
DeleteTag.BackgroundColor3 = Color3.fromRGB(69, 159, 255)
DeleteTag.BorderColor3 = Color3.fromRGB(255, 255, 255)
DeleteTag.Position = UDim2.new(0.28473413, 0, 1.33333302, 0)
DeleteTag.Size = UDim2.new(0, 137, 0, 27)
DeleteTag.Font = Enum.Font.SourceSans
DeleteTag.Text = "Delete Name Tag"
DeleteTag.TextColor3 = Color3.fromRGB(255, 255, 255)
DeleteTag.TextSize = 14.000
DeleteTag.MouseButton1Click:Connect(function() 
    
for i,v in pairs(game:GetService("Workspace").NameTags[game.Players.LocalPlayer.Name]:GetChildren()) do  
    v:Destroy() 
end
    end)
Sprint.Name = "Sprint"
Sprint.Parent = Frame
Sprint.BackgroundColor3 = Color3.fromRGB(69, 159, 255)
Sprint.BorderColor3 = Color3.fromRGB(255, 255, 255)
Sprint.Position = UDim2.new(0.0274442546, 0, 4.79999971, 0)
Sprint.Size = UDim2.new(0, 137, 0, 27)
Sprint.Font = Enum.Font.SourceSans
Sprint.Text = "Shift Sprint Speed"
Sprint.TextColor3 = Color3.fromRGB(255, 255, 255)
Sprint.TextSize = 14.000
Sprint.MouseButton1Click:Connect(function()
      for i = 1,3 do 
    
    local Text1 = "Press Shift To Walk Faster"
local function callback(Text)
end
 
local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback
 
game.StarterGui:SetCore("SendNotification", {
    Title = "Notification!";
    Text = Text1;
    Duration = "60";
    Callback = NotificationBindable;
}) end

local UserInputService = game:GetService("UserInputService")
local Key = Enum.KeyCode.LeftShift
_G.ws = true 

UserInputService.InputBegan:Connect(function(InputObject, GameProcessedEvent)
    if GameProcessedEvent then return end
    if InputObject.KeyCode == Key then
        _G.ws = true
while _G.ws  do wait()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
end
    end
end)

UserInputService.InputEnded:Connect(function(InputObject, GameProcessedEvent)
    if GameProcessedEvent then return end
    if InputObject.KeyCode == Key then
_G.ws  = false 
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end
end)
end)
Rejoin.Name = "Rejoin"
Rejoin.Parent = Frame
Rejoin.BackgroundColor3 = Color3.fromRGB(69, 159, 255)
Rejoin.BorderColor3 = Color3.fromRGB(255, 255, 255)
Rejoin.Position = UDim2.new(0.0274442546, 0, 3.63333321, 0)
Rejoin.Size = UDim2.new(0, 137, 0, 27)
Rejoin.Font = Enum.Font.SourceSans
Rejoin.Text = "Rejoin"
Rejoin.TextColor3 = Color3.fromRGB(255, 255, 255)
Rejoin.TextSize = 14.000
Rejoin.MouseButton1Click:Connect(function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, LocalPlayer)
    end)
ShotMake.Name = "ShotMake"
ShotMake.Parent = Frame
ShotMake.BackgroundColor3 = Color3.fromRGB(69, 159, 255)
ShotMake.BorderColor3 = Color3.fromRGB(255, 255, 255)
ShotMake.Position = UDim2.new(0.0274442546, 0, 2.4666667, 0)
ShotMake.Size = UDim2.new(0, 137, 0, 27)
ShotMake.Font = Enum.Font.SourceSans
ShotMake.Text = "Always Make Shot"
ShotMake.TextColor3 = Color3.fromRGB(255, 255, 255)
ShotMake.TextSize = 14.000
ShotMake.MouseButton1Click:Connect(function()
for i = 1,2 do 
    
    local Text1 = "Shoot Regular It'll auto release"
local function callback(Text)
end
 
local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback
 
game.StarterGui:SetCore("SendNotification", {
    Title = "Notification!";
    Text = Text1;
    Duration = "60";
    Callback = NotificationBindable;
}) 

   local Text1 = "Recommended Shooting Build"
local function callback(Text)
end
 
local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback
 
game.StarterGui:SetCore("SendNotification", {
    Title = "Notification!";
    Text = Text1;
    Duration = "60";
    Callback = NotificationBindable;
}) 
end
game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "e" then
wait(0.55)

-- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = false,
    [2] = false
}

game:GetService("ReplicatedStorage").Remotes.server.shoot:FireServer(unpack(args))
end end) end)
Respawn.Name = "Respawn"
Respawn.Parent = Frame
Respawn.BackgroundColor3 = Color3.fromRGB(69, 159, 255)
Respawn.BorderColor3 = Color3.fromRGB(255, 255, 255)
Respawn.Position = UDim2.new(0.0274442546, 0, 1.33333337, 0)
Respawn.Size = UDim2.new(0, 137, 0, 27)
Respawn.Font = Enum.Font.SourceSans
Respawn.Text = "Respawn"
Respawn.TextColor3 = Color3.fromRGB(255, 255, 255)
Respawn.TextSize = 14.000
Respawn.MouseButton1Click:Connect(function()
local Part = Instance.new("Part")
Part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 
Part.Transparency = 1 
game.Players.LocalPlayer.Character:Destroy()
task.spawn(function()
    wait(7)
    print("Spawned")
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Part.CFrame
Part:Destroy()
    
    end)
end)
Close.Name = "Close"
Close.Parent = Frame
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1.000
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.946826756, 0, 0.0579710007, 0)
Close.Size = UDim2.new(0, 31, 0, 28)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextSize = 20.000
Close.TextSize = 20.000
    Close.MouseButton1Click:Connect(function()
        ScreenGui.Enabled = false 
        end)
Minus.Name = "Minus"
Minus.Parent = Frame
Minus.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Minus.BackgroundTransparency = 1.000
Minus.BorderSizePixel = 0
Minus.Position = UDim2.new(0.909090996, 0, 0.0579711907, 0)
Minus.Size = UDim2.new(0, 22, 0, 28)
Minus.Font = Enum.Font.SourceSans
Minus.Text = "-"
Minus.TextColor3 = Color3.fromRGB(255, 255, 255)
Minus.TextSize = 30.000
Minus.MouseButton1Click:Connect(function()
    _G.Closed = not   _G.Closed 
    if _G.Closed == false then 
    for i,v in pairs (ScreenGui.Frame:GetChildren()) do 
        if v:IsA("Frame") or v:IsA("Button") or v:IsA("TextBox") or v:IsA("TextButton") and v.Name ~= "Close" and v.Name ~= "Minus" then 
            v.Visible = false 
        end
    end
    end 
    if _G.Closed == true then 
           for i,v in pairs (ScreenGui.Frame:GetChildren()) do 
        if v:IsA("Frame") or v:IsA("Button") or v:IsA("TextBox") or v:IsA("TextButton") and v.Name ~= "Close" and v.Name ~= "Minus" then 
            v.Visible = true 
        end
    end
    end 

    end)
Takeballtext.Name = "Takeballtext"
Takeballtext.Parent = Frame
Takeballtext.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
Takeballtext.BorderColor3 = Color3.fromRGB(69, 159, 255)
Takeballtext.Position = UDim2.new(0.603773534, 0, 1.56666672, 0)
Takeballtext.Size = UDim2.new(0, 200, 0, 34)
Takeballtext.Font = Enum.Font.GothamBold
Takeballtext.Text = "Type name here.."
Takeballtext.TextColor3 = Color3.fromRGB(255, 255, 255)
Takeballtext.TextSize = 14.000
Takeballtext.TextTransparency = 0.600
Takeballtext.FocusLost:connect(function()
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(Takeballtext.Text))) == string.lower(Takeballtext.Text) then
Takeballtext.Text = v.Name
end
end
end)
Takeball.Name = "Takeball"
Takeball.Parent = Takeballtext
Takeball.BackgroundColor3 = Color3.fromRGB(94, 94, 94)
Takeball.BorderColor3 = Color3.fromRGB(0, 0, 0)
Takeball.Position = UDim2.new(0, 0, 1.17647052, 0)
Takeball.Size = UDim2.new(0, 200, 0, 35)
Takeball.Font = Enum.Font.SourceSans
Takeball.Text = "Take Ball"
Takeball.TextColor3 = Color3.fromRGB(255, 255, 255)
Takeball.TextSize = 14.000

Takeball.MouseButton1Click:Connect(function()
    local Part = Instance.new("Part",game.Players.LocalPlayer.Character)
Part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 
Part.Name = "SpawnBlocked"
Part.Transparency = 1
 for i,v in pairs (game.Workspace:GetChildren()) do 


    local distance = 50
 if v.Name == "Basketball" then
  
        if  (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude <= distance  then
        for i = 1,5 do 
            Wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
game:GetService("ReplicatedStorage").Remotes.server.reach:InvokeServer()

        end
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Part.CFrame 
Part:Destroy()
        end
    end
end


  end)
GotoTextBox.Name = "GotoTextBox"
GotoTextBox.Parent = Frame
GotoTextBox.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
GotoTextBox.BorderColor3 = Color3.fromRGB(69, 159, 255)
GotoTextBox.Position = UDim2.new(0.603773534, 0, 4.5333333, 0)
GotoTextBox.Size = UDim2.new(0, 200, 0, 34)
GotoTextBox.Font = Enum.Font.GothamBold
GotoTextBox.Text = "Type name here.."
GotoTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
GotoTextBox.TextSize = 14.000
GotoTextBox.TextTransparency = 0.600

GotoTextBox.FocusLost:connect(function()
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(GotoTextBox.Text))) == string.lower(GotoTextBox.Text) then
GotoTextBox.Text = v.Name
end
end
end)
Goto.Name = "Goto"
Goto.Parent = GotoTextBox
Goto.BackgroundColor3 = Color3.fromRGB(94, 94, 94)
Goto.BorderColor3 = Color3.fromRGB(0, 0, 0)
Goto.Position = UDim2.new(0, 0, 1.17647052, 0)
Goto.Size = UDim2.new(0, 200, 0, 35)
Goto.Font = Enum.Font.SourceSans
Goto.Text = "Teleport To"
Goto.TextColor3 = Color3.fromRGB(255, 255, 255)
Goto.TextSize = 14.000
Goto.MouseButton1Click:Connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace[GotoTextBox.Text].HumanoidRootPart.CFrame 
    end)
BackgroundTxt.Name = "BackgroundTxt"
BackgroundTxt.Parent = Frame
BackgroundTxt.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
BackgroundTxt.BorderColor3 = Color3.fromRGB(69, 159, 255)
BackgroundTxt.Position = UDim2.new(0.0617495738, 0, 7.4666667, 0)
BackgroundTxt.Size = UDim2.new(0, 466, 0, 34)
BackgroundTxt.Font = Enum.Font.GothamBold
BackgroundTxt.Text = "Type Name Here"
BackgroundTxt.TextColor3 = Color3.fromRGB(255, 255, 255)
BackgroundTxt.TextSize = 14.000
BackgroundTxt.TextTransparency = 0.600

BackgroundTxt.FocusLost:connect(function()
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(BackgroundTxt.Text))) == string.lower(BackgroundTxt.Text) then
BackgroundTxt.Text = v.Name
end
end
end)
BackgroundColor.Name = "BackgroundColor"
BackgroundColor.Parent = BackgroundTxt
BackgroundColor.BackgroundColor3 = Color3.fromRGB(94, 94, 94)
BackgroundColor.BorderColor3 = Color3.fromRGB(0, 0, 0)
BackgroundColor.Position = UDim2.new(0, 0, 1.17647064, 0)
BackgroundColor.Size = UDim2.new(0, 466, 0, 35)
BackgroundColor.Font = Enum.Font.SourceSans
BackgroundColor.Text = "Annoy Player"
BackgroundColor.TextColor3 = Color3.fromRGB(255, 255, 255)
BackgroundColor.TextSize = 14.000
_G.Done = false
BackgroundColor.MouseButton1Click:Connect(function()
_G.Done = not _G.Done
while _G.Done do 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace[BackgroundTxt.Text].HumanoidRootPart.CFrame
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
game:GetService("ReplicatedStorage").Remotes.server.reach:InvokeServer()
end 
    end)
Buttonandframetxt.Name = "Buttonandframetxt"
Buttonandframetxt.Parent = Frame
Buttonandframetxt.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
Buttonandframetxt.BorderColor3 = Color3.fromRGB(69, 159, 255)
Buttonandframetxt.Position = UDim2.new(0.0617495738, 0, 10.499999, 0)
Buttonandframetxt.Size = UDim2.new(0, 466, 0, 34)
Buttonandframetxt.Font = Enum.Font.GothamBold
Buttonandframetxt.Text = "0,0,0"
Buttonandframetxt.TextColor3 = Color3.fromRGB(255, 255, 255)
Buttonandframetxt.TextSize = 14.000
Buttonandframetxt.TextTransparency = 0.600

bafbutton.Name = "bafbutton"
bafbutton.Parent = Buttonandframetxt
bafbutton.BackgroundColor3 = Color3.fromRGB(94, 94, 94)
bafbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
bafbutton.Position = UDim2.new(0, 0, 1.2352941, 0)
bafbutton.Size = UDim2.new(0, 466, 0, 35)
bafbutton.Font = Enum.Font.SourceSans
bafbutton.Text = "Buttons & Frame Color"
bafbutton.TextColor3 = Color3.fromRGB(255, 255, 255)
bafbutton.TextSize = 14.000

    bafbutton.MouseButton1Click:Connect(function()
        
local function gsplit(string,splitter)
    local func = (func and (type(func) == "function") and func) or (function(s) return s end)
    local results = {}
    for match in (string):gmatch(splitter) do
        table.insert(results,func(match))
    end
    return results
end

local nums = gsplit(Buttonandframetxt.Text,"%d+",function(s) return tonumber(s) end)
for i,v in pairs (ScreenGui.Frame:GetChildren()) do 
        if  v:IsA("TextButton") or v:IsA("TextBox") then 
            
v.BackgroundColor3 = Color3.fromRGB(table.unpack(nums))
v.BorderColor3 = Color3.fromRGB(table.unpack(nums))
ScreenGui.Frame.BackgroundColor3 = Color3.fromRGB(table.unpack(nums))
end
end
    end)
Watermark2.Name = "Watermark2"
Watermark2.Parent = ScreenGui
Watermark2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Watermark2.BackgroundTransparency = 1.000
Watermark2.Position = UDim2.new(0.919802606, 0, 0.933054745, 0)
Watermark2.Size = UDim2.new(0, 108, 0, 34)
Watermark2.Font = Enum.Font.SourceSans
Watermark2.Text = "ALH"
Watermark2.TextColor3 = Color3.fromRGB(255, 255, 255)
Watermark2.TextSize = 60.000
Watermark2.TextTransparency = 0.500
