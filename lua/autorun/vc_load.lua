// Copyright © 2012-2017 VCMod (freemmaann). All Rights Reserved. if you have any complaints or ideas contact me: steam - steamcommunity.com/id/freemmaann/ or email - freemmaann@gmail.com.

// Nice round version number
VC_AU_Ver = 9

// Initialize basic VCMod functionality, setup the initial core tables
if SERVER then resource.AddWorkshop("632470227") end AddCSLuaFile() AddCSLuaFile("vcmod/client/load.lua") if file.Exists("autorun/vc_local.lua", "LUA") then return end if !VC then VC = {} end if !VC.Versions then VC.Versions = {} end if !VC.AddonData then VC.AddonData = {} end VC.Copyright = "Copyright © 2012-2017 VCMod (freemmaann)." VC.Host = "http://vcmod.org/" VC.AUMsg = {} if SERVER then include("vcmod/server/logging.lua") end

// Load some VCMod colours that will not change
VC.Color = {}
VC.Color.Main = Color(0,0,0,220)
VC.Color.Base = Color(237, 237, 237, 255)
VC.Color.Accent = Color(127, 37, 37, 255)
VC.Color.Accent_Light = Color(163, 48, 48, 255)

// Setup VCMod custom "print()"
function VCPrint_noPrefix(msg) MsgC(VC.Color.Accent_Light, msg, "\n") end
function VCPrint(msg) local smsg = "VCMod: " if CLIENT then smsg = "VCMod Local: " else VC.log('<General> '..msg) end MsgC(VC.Color.Accent_Light, smsg, VC.Color.Base, msg, "\n") end

// Print the welcome message
VCPrint_noPrefix("")
VCPrint_noPrefix("----------------------------------------------------------------------------")
VCPrint("Welcome to VCMod Auto-Updater version - "..VC_AU_Ver..".")
VCPrint_noPrefix("----------------------------------------------------------------------------")
VCPrint_noPrefix("")

// Load other VCMod files
if CLIENT then include("vcmod/client/load.lua") else include("vcmod/server/load.lua") end