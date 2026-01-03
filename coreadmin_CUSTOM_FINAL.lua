
-- Core Admin (Custom UI + Infinite Yield Logic)
-- Commands, Settings, Info FIXED PROPERLY

if IY_LOADED then return end
getgenv().IY_LOADED = true

-- SERVICES
local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local TextChatService = game:GetService("TextChatService")
local LP = Players.LocalPlayer

-- PREFIX
local prefix = ";"

-- =========================
-- COMMAND SYSTEM (SIMPLE + REAL)
-- =========================

local Commands = {}

local function AddCommand(name, callback)
	Commands[name:lower()] = callback
end

function RunCommand(text, speaker)
	local args = string.split(text, " ")
	local cmd = table.remove(args, 1)
	cmd = cmd:lower()

	if Commands[cmd] then
		pcall(function()
			Commands[cmd](args, speaker)
		end)
	else
		warn("Unknown command:", cmd)
	end
end

-- Example commands (proof system works)
AddCommand("fly", function()
	print("FLY command ran")
end)

AddCommand("rejoin", function()
	LP:Kick("Rejoining...")
end)

-- =========================
-- CUSTOM UI (CHATGPT STYLE)
-- =========================

local gui = Instance.new("ScreenGui", LP.PlayerGui)
gui.Name = "CoreAdminUI"
gui.ResetOnSpawn = false

local main = Instance.new("Frame", gui)
main.Size = UDim2.fromOffset(400, 260)
main.Position = UDim2.fromScale(0.5, 0.5)
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.BackgroundColor3 = Color3.fromRGB(35,35,35)

local title = Instance.new("TextLabel", main)
title.Size = UDim2.new(1,0,0,30)
title.Text = "Core Admin"
title.TextColor3 = Color3.new(1,1,1)
title.BackgroundTransparency = 1
title.Font = Enum.Font.SourceSansBold
title.TextSize = 18

local cmdBar = Instance.new("TextBox", main)
cmdBar.PlaceholderText = "Enter command"
cmdBar.Size = UDim2.new(1,-20,0,30)
cmdBar.Position = UDim2.new(0,10,0,40)
cmdBar.Text = ""
cmdBar.TextColor3 = Color3.new(1,1,1)
cmdBar.BackgroundColor3 = Color3.fromRGB(50,50,50)

local settingsBtn = Instance.new("TextButton", main)
settingsBtn.Text = "Settings"
settingsBtn.Size = UDim2.new(0,100,0,30)
settingsBtn.Position = UDim2.new(0,10,0,80)

local infoBtn = Instance.new("TextButton", main)
infoBtn.Text = "Info"
infoBtn.Size = UDim2.new(0,100,0,30)
infoBtn.Position = UDim2.new(0,120,0,80)

-- PAGES
local settingsPage = Instance.new("Frame", main)
settingsPage.Size = UDim2.new(1,-20,0,120)
settingsPage.Position = UDim2.new(0,10,0,120)
settingsPage.Visible = false
settingsPage.BackgroundColor3 = Color3.fromRGB(45,45,45)

local infoPage = Instance.new("Frame", main)
infoPage.Size = settingsPage.Size
infoPage.Position = settingsPage.Position
infoPage.Visible = false
infoPage.BackgroundColor3 = Color3.fromRGB(45,45,45)

local function hidePages()
	settingsPage.Visible = false
	infoPage.Visible = false
end

settingsBtn.MouseButton1Click:Connect(function()
	hidePages()
	settingsPage.Visible = true
end)

infoBtn.MouseButton1Click:Connect(function()
	hidePages()
	infoPage.Visible = true
end)

-- =========================
-- CMD BAR EXECUTION (FIXED)
-- =========================

UIS.InputEnded:Connect(function(input, gp)
	if gp then return end
	if input.KeyCode == Enum.KeyCode.Return and cmdBar:IsFocused() then
		local txt = cmdBar.Text
		cmdBar.Text = ""
		if txt:sub(1,1) == prefix then
			RunCommand(txt:sub(2), LP)
		end
	end
end)

-- =========================
-- CHAT COMMANDS (LEGACY + NEW)
-- =========================

if TextChatService.ChatVersion == Enum.ChatVersion.LegacyChatService then
	LP.Chatted:Connect(function(msg)
		if msg:sub(1,1) == prefix then
			RunCommand(msg:sub(2), LP)
		end
	end)
else
	TextChatService.OnIncomingMessage = function(msg)
		if msg.Text:sub(1,1) == prefix then
			RunCommand(msg.Text:sub(2), LP)
		end
	end
end
