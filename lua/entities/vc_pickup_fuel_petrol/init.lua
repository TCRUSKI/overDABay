// Copyright © 2012-2017 VCMod (freemmaann). All Rights Reserved. if you have any complaints or ideas contact me: steam - steamcommunity.com/id/freemmaann/ or email - freemmaann@gmail.com.

AddCSLuaFile("cl_init.lua") AddCSLuaFile("shared.lua") include('shared.lua')

ENT.VC_Type = "pickup_fuel"

function ENT:Initialize() self:SetModel("models/props_junk/metalgascan.mdl") self:PhysicsInit(SOLID_VPHYSICS) self:SetMoveType(MOVETYPE_VPHYSICS) self:SetSolid(SOLID_VPHYSICS) self:SetUseType(SIMPLE_USE) local phys = self:GetPhysicsObject() if phys:IsValid() then phys:SetMaterial("canister") phys:Wake() end end

function ENT:Use(ply) if VC and VC.CodeEnt.Pickup_fuel and VC.CodeEnt.Pickup_fuel.Use then return VC.CodeEnt.Pickup_fuel.Use(self, ply) end end
function ENT:Think() if VC and VC.CodeEnt.Pickup_fuel and VC.CodeEnt.Pickup_fuel.Think then return VC.CodeEnt.Pickup_fuel.Think(self, ply) end end
function ENT:Touch(ent) if VC and VC.CodeEnt.Pickup_fuel and VC.CodeEnt.Pickup_fuel.Touch then return VC.CodeEnt.Pickup_fuel.Touch(self, ent) end end
function ENT:OnTakeDamage(dinfo) if VC and VC.CodeEnt.Pickup_fuel and VC.CodeEnt.Pickup_fuel.OnTakeDamage then return VC.CodeEnt.Pickup_fuel.OnTakeDamage(self, dinfo) end end