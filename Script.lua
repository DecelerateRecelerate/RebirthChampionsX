-- Create UI
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Rebirth Champions X", "Ocean")
-- Tabs
local automationsection = Window:NewTab("Automation") local automation = automationsection:NewSection("Automation")
local autohatchsection = Window:NewTab("AutoHatch") local autohatch = autohatchsection:NewSection("Autohatch")
-- Main
automation:NewToggle("AutoClicker", "Autoclicks for you", function(state)
    if state then
		_G.autoClicker = true;
		        while _G.autoClicker == true do
			game:GetService("ReplicatedStorage").Events.Click3:FireServer()
			wait()
        end
    else
		_G.autoClicker = false;
    end
end)
autohatch:NewToggle("Basic eggs (3x)", "Hatches eggs for you", function(state)
    if state then
		_G.autohatchbasic3x = true;
		        while _G.autohatchbasic3x == true do
			local args = {
    [1] = "Basic",
    [2] = "Triple"
}
game:GetService("ReplicatedStorage").Functions.Unbox:InvokeServer(unpack(args))
			wait()
        end
    else
		_G.autohatchbasic3x = false;
    end
end)
