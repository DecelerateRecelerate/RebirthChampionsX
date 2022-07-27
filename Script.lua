-- Create UI
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua'))()

local Window = Library.CreateLib("Rebirth Champions X", "Ocean")
-- Tabs
local automationsection = Window:NewTab("Automation") local automation = automationsection:NewSection("Automation")
local autohatchsection = Window:NewTab("AutoHatch") local autohatch = autohatchsection:NewSection("Autohatch")
local miscsection = Window:NewTab("Misc") local misc = miscsection:NewSection("Misc")
-- Main
automation:NewToggle("AutoClicker", "Autoclicks for you", function(state)
    if state then
        _G.autoClicker = true;
                while _G.autoClicker == true do
            game:GetService("ReplicatedStorage").Events.Click3:FireServer()
            task.wait()
        end
    else
        _G.autoClicker = false;
    end
end)
autohatch:NewToggle("Basic eggs (3x)", "Hatches eggs for you", function(state)
    if state then
        _G.autohatchbasic3x = true;
                while _G.autohatchbasic3x == true do
local autohatchbasicegg3x = {
    [1] = "Basic",
    [2] = "Triple"
}

game:GetService("ReplicatedStorage").Functions.Unbox:InvokeServer(unpack(autohatchbasicegg3x))
            task.wait()
        end
    else
        _G.autohatchbasic3x = false;
    end
end)
misc:NewButton("Redeem ALL codes", "Redeems all codes in Rebirth Champions X.", function()
        local redeemcodes = {
    [1] = "75m",
    [2] = "fantasy",
    [3] = "lab",
    [4] = "kraken",
    [5] = "150kthanks",
    [6] = "60m",
    [7] = "galactic",
    [8] = "alien",
    [9] = "mars",
    [10] = "space",
    [11] = "50m",
    [12] = "hell",
    [13] = "steampunk",
    [14] = "easter2",
    [15] = "100kthanks",
    [16] = "easter",
    [17] = "cave",
    [18] = "75kthanks",
    [19] = "spooky",
    [20] = "void",
    [21] = "nuclear",
    [22] = "thanksfor50k",
    [23] = "10mthanks",
    [24] = "heaven",
    [25] = "wow30000",
    [26] = "20kthankyou",
    [27] = "freeluckboost",
    [28] = "wow10klikesthanks",
    [29] = "freeclicksomg",
    [30] = "5klikesthanks",
    [31] = "wow2500likes",
    [32] = "already1500likes",
    [33] = "thanks500likes",
    [34] = "RELEASE"
}
game:GetService("ReplicatedStorage").Events.Codes:FireServer(unpack(redeemcodes))
    print("Redeemed all codes!")
end)
misc:NewButton("Spin The Wheel (Works only each 24 hours)", "Spin the wheel - This works each 24 hours.", function()
game:GetService("ReplicatedStorage").Functions.Spin:InvokeServer()
end)
