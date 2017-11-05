// Copyright © 2012-2017 VCMod (freemmaann). All Rights Reserved. if you have any complaints or ideas contact me: steam - steamcommunity.com/id/freemmaann/ or email - freemmaann@gmail.com.

AddCSLuaFile("shared.lua")

SWEP.Category 		= "VCMod"
SWEP.PrintName		= "Spike strip"
SWEP.Author			= "freemmaann"
SWEP.Instructions	= "You can carry it, its magic."

SWEP.ViewModel		= "models/sentry/c_vc_spikestrip.mdl"
SWEP.WorldModel		= "models/VC-Mod/v_wrench.mdl"

SWEP.ViewModel = Model("models/weapons/v_slam.mdl")
SWEP.WorldModel = Model("models/sentry/vc_spikestrip.mdl")

SWEP.ViewModelFOV	= 75

SWEP.Spawnable		= true
SWEP.AdminSpawnable		= true
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

function SWEP:Initialize() if VC and VC.CodeEnt.Spikestrip_wep and VC.CodeEnt.Spikestrip_wep.Initialize then return VC.CodeEnt.Spikestrip_wep.Initialize(self) end end
function SWEP:Deploy() if VC and VC.CodeEnt.Spikestrip_wep and VC.CodeEnt.Spikestrip_wep.Deploy then return VC.CodeEnt.Spikestrip_wep.Deploy(self) end return end
function SWEP:Holster() if VC and VC.CodeEnt.Spikestrip_wep and VC.CodeEnt.Spikestrip_wep.Holster then return VC.CodeEnt.Spikestrip_wep.Holster(self) end return end
function SWEP:PrimaryAttack() if VC and VC.CodeEnt.Spikestrip_wep and VC.CodeEnt.Spikestrip_wep.PrimaryAttack then return VC.CodeEnt.Spikestrip_wep.PrimaryAttack(self) end end
function SWEP:SecondaryAttack() if VC and VC.CodeEnt.Spikestrip_wep and VC.CodeEnt.Spikestrip_wep.SecondaryAttack then return VC.CodeEnt.Spikestrip_wep.SecondaryAttack(self) end end
function SWEP:Think() if VC and VC.CodeEnt.Spikestrip_wep and VC.CodeEnt.Spikestrip_wep.Think then return VC.CodeEnt.Spikestrip_wep.Think(self) end end

if CLIENT then
function SWEP:GetViewModelPosition(pos, ang) if VC and VC.CodeEnt.Spikestrip_wep and VC.CodeEnt.Spikestrip_wep.GetViewModelPosition then return VC.CodeEnt.Spikestrip_wep.GetViewModelPosition(self, pos, ang) end end
function SWEP:DrawHUD() if VC and VC.CodeEnt.Spikestrip_wep and VC.CodeEnt.Spikestrip_wep.DrawHUD then return VC.CodeEnt.Spikestrip_wep.DrawHUD(self) end end
function SWEP:DrawWorldModel() if VC and VC.CodeEnt.Spikestrip_wep and VC.CodeEnt.Spikestrip_wep.DrawWorldModel then return VC.CodeEnt.Spikestrip_wep.DrawWorldModel(self) end end
function SWEP:ViewModelDrawn() if VC and VC.CodeEnt.Spikestrip_wep and VC.CodeEnt.Spikestrip_wep.ViewModelDrawn then return VC.CodeEnt.Spikestrip_wep.ViewModelDrawn(self) end end
else
function SWEP:VC_AddFuel(ftype, num) if VC and VC.CodeEnt.Spikestrip_wep and VC.CodeEnt.Spikestrip_wep.VC_AddFuel then return VC.CodeEnt.Spikestrip_wep.VC_AddFuel(self, ftype, num) end end
end