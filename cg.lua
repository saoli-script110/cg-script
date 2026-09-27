--【自制复刻圣奥里风格地图 · 悬浮面板脚本】
--功能：加速、高跳、锁血、手铐、飞天、隔空商店、防摔伤、鼠标点击传送、穿墙
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local plr = Players.LocalPlayer
local PlayerGui = plr:WaitForChild("PlayerGui")
local char = plr.Character or plr.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

--功能开关
local speedToggle = false
local jumpToggle = false
local healthToggle = false
local cuffMode = false
local flyToggle = false
local noFallToggle = false
local tpClickMode = false
local noCollisionToggle = false --穿墙开关

local normalSpeed = 16
local fastSpeed = 120
local normalJump = 50
local highJump = 90
local flySpeed = 60

--悬浮窗口
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "MyFloatingPanel"
ScreenGui.Parent = PlayerGui

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 220, 0, 510)
MainFrame.Position = UDim2.new(0.03,0,0.18,0)
MainFrame.BackgroundColor3 = Color3.new(0.15,0.15,0.15)
MainFrame.BackgroundTransparency = 0.1
MainFrame.Parent = ScreenGui
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0,8)
UICorner.Parent = MainFrame

--===== 按钮 =====
local btnSpeed = Instance.new("TextButton")
btnSpeed.Size = UDim2.new(0.85,0,0,32)
btnSpeed.Position = UDim2.new(0.075,0,0.02,0)
btnSpeed.BackgroundColor3 = Color3.new(0.2,0.4,0.8)
btnSpeed.Text = "加速：关闭"
btnSpeed.TextColor3 = Color3.new(1,1,1)
btnSpeed.Parent = MainFrame

local btnJump = Instance.new("TextButton")
btnJump.Size = UDim2.new(0.85,0,0,32
