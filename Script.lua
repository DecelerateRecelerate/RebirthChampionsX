
local args = {
    [1] = "Scrirpt made by Frost_Texture",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))




-- Create UI
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Rebirth Champions X", "Ocean")
-- Tabs
local automationsection = Window:NewTab("Auto") local automation = automationsection:NewSection("Automation")
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




--local args = {
--    [1] = 1
--}
--game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
