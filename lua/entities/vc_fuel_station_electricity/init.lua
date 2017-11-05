// Copyright © 2012-2017 VCMod (freemmaann). All Rights Reserved. if you have any complaints or ideas contact me: steam - steamcommunity.com/id/freemmaann/ or email - freemmaann@gmail.com.

AddCSLuaFile("cl_init.lua") AddCSLuaFile("shared.lua") include('shared.lua')

function ENT:Initialize() self:SetModel("models/props_wasteland/gaspump001a.mdl") self:PhysicsInit(SOLID_VPHYSICS) self:SetMoveType(MOVETYPE_VPHYSICS) self:SetSolid(SOLID_VPHYSICS) self:SetUseType(SIMPLE_USE) local phys = self:GetPhysicsObject() if phys:IsValid() then phys:SetMaterial("metal") phys:Wake() end
	if VC and VC.CodeEnt.Fuel_station and VC.CodeEnt.Fuel_station.VC_Init then VC.CodeEnt.Fuel_station.VC_Init(self) end
end

function ENT:Use(ply) if VC and VC.CodeEnt.Fuel_station and VC.CodeEnt.Fuel_station.Use then return VC.CodeEnt.Fuel_station.Use(self, ply) end end
function ENT:Think() if VC and VC.CodeEnt.Fuel_station and VC.CodeEnt.Fuel_station.Think then return VC.CodeEnt.Fuel_station.Think(self, ply) end end
function ENT:Touch(ent) if VC and VC.CodeEnt.Fuel_station and VC.CodeEnt.Fuel_station.Touch then return VC.CodeEnt.Fuel_station.Touch(self, ent) end end
function ENT:OnTakeDamage(dinfo) if VC and VC.CodeEnt.Fuel_station and VC.CodeEnt.Fuel_station.OnTakeDamage then return VC.CodeEnt.Fuel_station.OnTakeDamage(self, dinfo) end end
function ENT:VC_Hitch() if VC and VC.CodeEnt.Fuel_station and VC.CodeEnt.Fuel_station.VC_Hitch then return VC.CodeEnt.Fuel_station.VC_Hitch(self) end end