// Copyright © 2012-2017 VCMod (freemmaann). All Rights Reserved. if you have any complaints or ideas contact me: steam - steamcommunity.com/id/freemmaann/ or email - freemmaann@gmail.com.

AddCSLuaFile("shared.lua")

SWEP.Category 		= "VCMod"
SWEP.PrintName		= "Wrench"
SWEP.Author			= "freemmaann"
SWEP.Instructions	= "Aim at their damaged parts to restore them individually\n\nRight click repair the whole vehicle (admin only)"

SWEP.ViewModel		= "models/VC-Mod/v_wrench.mdl"
SWEP.WorldModel		= "models/VC-Mod/v_wrench.mdl"
SWEP.ViewModelFOV	= 55

SWEP.Spawnable		= true
SWEP.Slot 			= 5
SWEP.UseHands 		= true

SWEP.Primary.ClipSize		= -1
SWEP.Primary.DefaultClip	= -1
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "none"

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

if !VC.CodeEnt then VC.CodeEnt = {} end

function SWEP:Initialize() if VC and VC.CodeEnt.Repair_Wep and VC.CodeEnt.Repair_Wep.Initialize then return VC.CodeEnt.Repair_Wep.Initialize(self) end end
function SWEP:Deploy() if VC and VC.CodeEnt.Repair_Wep and VC.CodeEnt.Repair_Wep.Deploy then return VC.CodeEnt.Repair_Wep.Deploy(self) end end
function SWEP:Holster() if VC and VC.CodeEnt.Repair_Wep and VC.CodeEnt.Repair_Wep.Holster then return VC.CodeEnt.Repair_Wep.Holster(self) end end
function SWEP:PrimaryAttack() if VC and VC.CodeEnt.Repair_Wep and VC.CodeEnt.Repair_Wep.PrimaryAttack then return VC.CodeEnt.Repair_Wep.PrimaryAttack(self) end end
function SWEP:SecondaryAttack() if VC and VC.CodeEnt.Repair_Wep and VC.CodeEnt.Repair_Wep.SecondaryAttack then return VC.CodeEnt.Repair_Wep.SecondaryAttack(self) end end
function SWEP:Think() if VC and VC.CodeEnt.Repair_Wep and VC.CodeEnt.Repair_Wep.Think then return VC.CodeEnt.Repair_Wep.Think(self) end end

if CLIENT then
function SWEP:GetViewModelPosition(pos, ang) if VC and VC.CodeEnt.Repair_Wep and VC.CodeEnt.Repair_Wep.GetViewModelPosition then return VC.CodeEnt.Repair_Wep.GetViewModelPosition(self, pos, ang) end end
function SWEP:DrawHUD() if VC and VC.CodeEnt.Repair_Wep and VC.CodeEnt.Repair_Wep.DrawHUD then return VC.CodeEnt.Repair_Wep.DrawHUD(self) end end
end