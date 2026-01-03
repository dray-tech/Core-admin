-- Core Admin Script by illremember
-- Version 3.1 with Multiple Prefix Support

-- Define all prefixes that work
local prefixes = {"/", ":", ";", ",", ".", "!", "?"}
local mainPrefix = ";"  -- For command bar activation only

-- Store variables here
local lplayer = game:GetService("Players").LocalPlayer
local spin = false
local flying = false
local noclip = false
local Mouse = lplayer:GetMouse()

-- Function to check if a message starts with any valid prefix
function hasValidPrefix(msg)
    for _, prefix in pairs(prefixes) do
        if string.sub(msg, 1, #prefix) == prefix then
            return true, prefix
        end
    end
    return false, nil
end

-- Function to strip prefix from command
function stripPrefix(msg)
    for _, prefix in pairs(prefixes) do
        if string.sub(msg, 1, #prefix) == prefix then
            return string.sub(msg, #prefix + 1)
        end
    end
    return msg
end

-- Simple player getter
function GetPlayer(String)
    local Found = {}
    local strl = string.lower(String)
    if strl == "all" then
        for _, v in pairs(game:GetService("Players"):GetPlayers()) do
            table.insert(Found, v)
        end
    elseif strl == "others" then
        for _, v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name ~= lplayer.Name then
                table.insert(Found, v)
            end
        end  
    elseif strl == "me" then
        for _, v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name == lplayer.Name then
                table.insert(Found, v)
            end
        end  
    else
        for _, v in pairs(game:GetService("Players"):GetPlayers()) do
            if string.lower(v.Name):sub(1, #String) == strl then
                table.insert(Found, v)
            end
        end    
    end
    return Found    
end

-- Main command handler
lplayer.Chatted:Connect(function(msg)
    local isValid, usedPrefix = hasValidPrefix(msg)
    
    if not isValid then return end
    
    -- Strip the prefix and get the command
    local command = stripPrefix(msg)
    
    print("Command received: " .. command .. " (used prefix: " .. usedPrefix .. ")")
    
    -- FLY COMMAND - Works with all prefixes
    if command == "fly" or string.sub(command, 1, 4) == "fly " then
        if not lplayer.Character or not lplayer.Character:FindFirstChild("HumanoidRootPart") then
            return
        end
        
        if flying then
            flying = false
            lplayer.Character.Humanoid.PlatformStand = false
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Fly Disabled";
                Text = "Flying has been turned off";
            })
            return
        end
        
        flying = true
        local T = lplayer.Character.HumanoidRootPart
        local CONTROL = {F = 0, B = 0, L = 0, R = 0}
        local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
        local SPEED = 1
        local speedfly = 1
        
        local function fly()
            local BG = Instance.new('BodyGyro', T)
            local BV = Instance.new('BodyVelocity', T)
            BG.P = 9e4
            BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            BG.cframe = T.CFrame
            BV.velocity = Vector3.new(0, 0.1, 0)
            BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
            
            spawn(function()
                while flying do
                    wait()
                    lplayer.Character.Humanoid.PlatformStand = true
                    if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
                        SPEED = 50
                    elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
                        SPEED = 0
                    end
                    
                    if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
                        BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + 
                                     ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - 
                                     workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
                        lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
                    elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
                        BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + 
                                     ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - 
                                     workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
                    else
                        BV.velocity = Vector3.new(0, 0.1, 0)
                    end
                    BG.cframe = workspace.CurrentCamera.CoordinateFrame
                end
                
                CONTROL = {F = 0, B = 0, L = 0, R = 0}
                lCONTROL = {F = 0, B = 0, L = 0, R = 0}
                SPEED = 0
                BG:Destroy()
                BV:Destroy()
                lplayer.Character.Humanoid.PlatformStand = false
            end)
        end
        
        -- Key binds for flying
        local function connectKeys()
            Mouse.KeyDown:connect(function(KEY)
                if KEY:lower() == 'w' then
                    CONTROL.F = speedfly
                elseif KEY:lower() == 's' then
                    CONTROL.B = -speedfly
                elseif KEY:lower() == 'a' then
                    CONTROL.L = -speedfly
                elseif KEY:lower() == 'd' then
                    CONTROL.R = speedfly
                end
            end)
            
            Mouse.KeyUp:connect(function(KEY)
                if KEY:lower() == 'w' then
                    CONTROL.F = 0
                elseif KEY:lower() == 's' then
                    CONTROL.B = 0
                elseif KEY:lower() == 'a' then
                    CONTROL.L = 0
                elseif KEY:lower() == 'd' then
                    CONTROL.R = 0
                end
            end)
        end
        
        connectKeys()
        fly()
        
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Fly Enabled";
            Text = "Use WASD to fly. Type " .. usedPrefix .. "fly again to disable.";
        })
    end
    
    -- UNFLY COMMAND - Works with all prefixes
    if command == "unfly" then
        flying = false
        lplayer.Character.Humanoid.PlatformStand = false
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Fly Disabled";
            Text = "Flying has been turned off";
        })
    end
    
    -- SPEED COMMAND - Works with all prefixes
    if string.sub(command, 1, 6) == "speed " then
        local speedNum = tonumber(string.sub(command, 7))
        if speedNum then
            lplayer.Character.Humanoid.WalkSpeed = speedNum
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Speed Changed";
                Text = "Walk speed set to: " .. speedNum;
            })
        end
    end
    
    -- GOTO COMMAND - Works with all prefixes
    if string.sub(command, 1, 5) == "goto " then
        local target = string.sub(command, 6)
        for _, v in pairs(GetPlayer(target)) do
            if v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                lplayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "Teleported";
                    Text = "Teleported to " .. v.Name;
                })
            end
        end
    end
    
    -- NOCLIP COMMAND - Works with all prefixes
    if command == "noclip" then
        noclip = true
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Noclip Enabled";
            Text = "Type " .. usedPrefix .. "clip to disable";
        })
    end
    
    -- CLIP COMMAND - Works with all prefixes
    if command == "clip" then
        noclip = false
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Noclip Disabled";
            Text = "Type " .. usedPrefix .. "noclip to enable";
        })
    end
    
    -- RESET COMMAND - Works with all prefixes
    if command == "reset" then
        lplayer.Character:BreakJoints()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Resetting";
            Text = "Resetting character...";
        })
    end
    
    -- VIEW COMMAND - Works with all prefixes
    if string.sub(command, 1, 5) == "view " then
        local target = string.sub(command, 6)
        for _, v in pairs(GetPlayer(target)) do
            if v.Character then
                if v.Character:FindFirstChild("Humanoid") then
                    game:GetService("Workspace").CurrentCamera.CameraSubject = v.Character.Humanoid
                else
                    game:GetService("Workspace").CurrentCamera.CameraSubject = v.Character:FindFirstChild("Head") or v.Character:FindFirstChildWhichIsA("BasePart")
                end
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "Viewing";
                    Text = "Now viewing " .. v.Name;
                })
            end
        end
    end
    
    -- UNVIEW COMMAND - Works with all prefixes
    if command == "unview" then
        game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Humanoid
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "View Reset";
            Text = "Camera reset to your character";
        })
    end
    
    -- CHAT COMMAND - Works with all prefixes
    if string.sub(command, 1, 5) == "chat " then
        local message = string.sub(command, 6)
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
    
    -- GOD COMMAND - Works with all prefixes
    if command == "god" then
        if lplayer.Character then
            lplayer.Character:FindFirstChildOfClass("Humanoid").Health = math.huge
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "God Mode";
                Text = "God mode enabled (high health)";
            })
        end
    end
    
    -- SPIN COMMAND - Works with all prefixes
    if string.sub(command, 1, 5) == "spin " then
        local target = string.sub(command, 6)
        for _, v in pairs(GetPlayer(target)) do
            spin = true
            spawn(function()
                while spin do
                    wait()
                    if lplayer.Character and lplayer.Character:FindFirstChild("HumanoidRootPart") and 
                       v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                        lplayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                    end
                end
            end)
        end
    end
    
    -- UNSPIN COMMAND - Works with all prefixes
    if command == "unspin" then
        spin = false
    end
    
    -- FLING COMMAND - Works with all prefixes
    if string.sub(command, 1, 6) == "fling " then
        local target = string.sub(command, 7)
        if target == "all" then
            for _, v in pairs(game:GetService("Players"):GetPlayers()) do
                if v ~= lplayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                    local bv = Instance.new("BodyVelocity")
                    bv.Parent = v.Character.HumanoidRootPart
                    bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                    bv.Velocity = Vector3.new(math.random(-500, 500), math.random(200, 500), math.random(-500, 500))
                    wait(0.1)
                    bv:Destroy()
                end
            end
        elseif target == "others" then
            for _, v in pairs(game:GetService("Players"):GetPlayers()) do
                if v ~= lplayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                    local bv = Instance.new("BodyVelocity")
                    bv.Parent = v.Character.HumanoidRootPart
                    bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                    bv.Velocity = Vector3.new(math.random(-500, 500), math.random(200, 500), math.random(-500, 500))
                    wait(0.1)
                    bv:Destroy()
                end
            end
        elseif target == "me" then
            if lplayer.Character and lplayer.Character:FindFirstChild("HumanoidRootPart") then
                local bv = Instance.new("BodyVelocity")
                bv.Parent = lplayer.Character.HumanoidRootPart
                bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                bv.Velocity = Vector3.new(math.random(-500, 500), math.random(200, 500), math.random(-500, 500))
                wait(3)
                bv:Destroy()
            end
        else
            for _, v in pairs(GetPlayer(target)) do
                if v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                    local bv = Instance.new("BodyVelocity")
                    bv.Parent = v.Character.HumanoidRootPart
                    bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                    bv.Velocity = Vector3.new(math.random(-500, 500), math.random(200, 500), math.random(-500, 500))
                    wait(0.1)
                    bv:Destroy()
                end
            end
        end
    end
    
    -- STOPFLING COMMAND - Works with all prefixes
    if command == "stopfling" then
        for _, player in pairs(game:GetService("Players"):GetPlayers()) do
            if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                local bv = player.Character.HumanoidRootPart:FindFirstChildOfClass("BodyVelocity")
                if bv then bv:Destroy() end
            end
        end
    end
    
    -- SPINOBJ COMMAND - Works with all prefixes
    if string.sub(command, 1, 8) == "spinobj " then
        local args = string.split(string.sub(command, 9), " ")
        local objectName = args[1]
        local speed = tonumber(args[2]) or 50
        
        for _, obj in pairs(workspace:GetDescendants()) do
            if obj.Name == objectName and obj:IsA("BasePart") then
                local bav = Instance.new("BodyAngularVelocity")
                bav.Parent = obj
                bav.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
                bav.AngularVelocity = Vector3.new(0, speed, 0)
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "Spinning Object";
                    Text = "Spinning " .. objectName .. " at speed " .. speed;
                })
            end
        end
    end
    
    -- EXPLODEME COMMAND - Works with all prefixes
    if command == "explodeme" then
        if lplayer.Character and lplayer.Character:FindFirstChild("HumanoidRootPart") then
            local explosion = Instance.new("Explosion")
            explosion.Position = lplayer.Character.HumanoidRootPart.Position
            explosion.BlastRadius = 20
            explosion.BlastPressure = 100000
            explosion.Parent = workspace
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Boom!";
                Text = "You exploded yourself";
            })
        end
    end
    
    -- AIMBOT COMMAND - Works with all prefixes
    if command == "aimbot" then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Aimbot";
            Text = "Aimbot feature would go here";
        })
    end
    
    -- DEFAULT COMMAND - Works with all prefixes
    if command == "default" then
        if lplayer.Character and lplayer.Character:FindFirstChildOfClass("Humanoid") then
            lplayer.Character.Humanoid.WalkSpeed = 16
            lplayer.Character.Humanoid.JumpPower = 50
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Defaults Reset";
                Text = "Speed and jump reset to default";
            })
        end
    end
    
    -- CMDS COMMAND - Works with all prefixes
    if command == "cmds" then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Commands List";
            Text = "Available prefixes: / : ; , . ! ?\n/fly, /goto [player], /noclip, /reset, etc.";
            Duration = 10;
        })
    end
    
    -- PREFIX COMMAND - Change main prefix
    if string.sub(command, 1, 7) == "prefix " then
        local newPrefix = string.sub(command, 8, 8)
        if table.find(prefixes, newPrefix) then
            mainPrefix = newPrefix
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Prefix Changed";
                Text = "Main prefix changed to: " .. mainPrefix;
            })
        end
    end
    
    -- VERSION COMMAND - Works with all prefixes
    if command == "version" then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Core Admin v3.1";
            Text = "By illremember - Multiple prefix support";
            Duration = 5;
        })
    end
end)

-- Noclip loop
game:GetService("RunService").Stepped:Connect(function()
    if noclip and lplayer.Character then
        for _, part in pairs(lplayer.Character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end
    end
end)

-- Create UI
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local CMDBAR = Instance.new("TextBox")
local Title = Instance.new("TextLabel")

ScreenGui.Name = "CoreAdminUI"
ScreenGui.Parent = game:GetService("CoreGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
Frame.BackgroundTransparency = 0.2
Frame.Position = UDim2.new(0.5, -150, 0, 10)
Frame.Size = UDim2.new(0, 300, 0, 60)
Frame.Active = true
Frame.Draggable = true

Title.Parent = Frame
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 10, 0, 5)
Title.Size = UDim2.new(1, -20, 0, 20)
Title.Font = Enum.Font.GothamBold
Title.Text = "Core Admin - Prefixes: / : ; , . ! ?"
Title.TextColor3 = Color3.fromRGB(100, 150, 255)
Title.TextSize = 14

CMDBAR.Name = "CMDBAR"
CMDBAR.Parent = Frame
CMDBAR.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
CMDBAR.Size = UDim2.new(1, -20, 0, 25)
CMDBAR.Position = UDim2.new(0, 10, 0, 30)
CMDBAR.Font = Enum.Font.Gotham
CMDBAR.TextColor3 = Color3.fromRGB(220, 220, 220)
CMDBAR.TextSize = 14
CMDBAR.Text = ""
CMDBAR.PlaceholderText = "Type command here (use any prefix)"

-- Command bar execution
CMDBAR.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local cmd = CMDBAR.Text
        if cmd ~= "" then
            lplayer.Chatted:FireServer(cmd)
            CMDBAR.Text = ""
        end
    end
end)

-- Activate command bar with main prefix
Mouse.KeyDown:Connect(function(Key)
    if Key == mainPrefix then
        CMDBAR:CaptureFocus()
    end
end)

-- Show loaded message
wait(1)
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Core Admin Loaded!";
    Text = "Use / : ; , . ! ? before commands\nExample: /fly or ;fly or .fly";
    Icon = "rbxassetid://4457851885";
    Duration = 8;
})