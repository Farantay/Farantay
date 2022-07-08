local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Fry Who V1", "RJTheme3") -- Название

local Tab = Window:NewTab("Main") -- Раздел для скриптов (по типу main,global,cfg и тд)

local Section = Tab:NewSection("Wall Hack")

Section:NewButton("Wall hack", "You visible player on the wall (this is no my cheat)", function() --Вкл и Выкл
--// Script

loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Wall-Hack/main/Resources/Scripts/Main.lua"))()

--// Variables

local Environment = getgenv().WallHack

--// Script / Global Settings

Environment.Settings.Enabled = true
Environment.Settings.TeamCheck = false
Environment.Settings.AliveCheck = true

--// Visuals Settings

Environment.Visuals.ESPSettings.Enabled = true
Environment.Visuals.TracersSettings.Enabled = true
Environment.Visuals.BoxSettings.Enabled = true
Environment.Visuals.HeadDotSettings.Enabled = true

--// Crosshair

Environment.Crosshair.CrosshairSettings.Enabled = true
end)

	local Tab = Window:NewTab("Fan") -- новый раздел для веселья

	local Section = Tab:NewSection("Gravity Controller")
Section:NewSlider("Gravity", "Min 16", 500, 16, function(g)-- g это гравити
	while game:GetService("RunService").RenderStepped:wait() do
	game.Workspace.Gravity = g
end)

local Section = Tab:NewSection("Speed Hack") --Новый раздел

Section:NewSlider("Speed", "Max Speed 500", 500, 16, function(s) --Максимальное значение 500
    while game:GetService("RunService").RenderStepped:wait() do
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s -- скорость это s
end)
