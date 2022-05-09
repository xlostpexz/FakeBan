local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Auto Ban", "Sentinel")
local Tab = Window:NewTab("Ban")
local Section = Tab:NewSection("Ban")
Section:NewTextBox("Ban Reason", "TextboxInfo", function(txt)
	Reason = txt
end)

Section:NewButton("Ban", "Ban", function()
    game.Players.LocalPlayer:Kick(Reason)
end)

Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.RightControl, function()
    Library:ToggleUI()
end)

