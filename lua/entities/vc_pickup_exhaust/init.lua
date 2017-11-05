// Copyright © 2012-2017 VCMod (freemmaann). All Rights Reserved. if you have any complaints or ideas contact me: steam - steamcommunity.com/id/freemmaann/ or email - freemmaann@gmail.com.

AddCSLuaFile("cl_init.lua") AddCSLuaFile("shared.lua") include('shared.lua')

function ENT:Initialize() self:SetModel("models/props_vehicles/carparts_muffler01a.mdl") self:PhysicsInit(SOLID_VPHYSICS) self:SetMoveType(MOVETYPE_VPHYSICS) self:SetSolid(SOLID_VPHYSICS) self:SetUseType(SIMPLE_USE) local phys = self:GetPhysicsObject() if phys:IsValid() then phys:SetMaterial("metal") phys:Wake() end self:SetCustomCollisionCheck(true) end

function ENT:Use(ply) if VC and VC.CodeEnt.Pickup_carpart and VC.CodeEnt.Pickup_carpart.Use then return VC.CodeEnt.Pickup_carpart.Use(self, ply) end end
function ENT:Think() if VC and VC.CodeEnt.Pickup_carpart and VC.CodeEnt.Pickup_carpart.Think then return VC.CodeEnt.Pickup_carpart.Think(self, ply) end end
function ENT:Touch(ent) if VC and VC.CodeEnt.Pickup_carpart and VC.CodeEnt.Pickup_carpart.Touch then return VC.CodeEnt.Pickup_carpart.Touch(self, ent) end end
function ENT:OnTakeDamage(dinfo) if VC and VC.CodeEnt.Pickup_carpart and VC.CodeEnt.Pickup_carpart.OnTakeDamage then return VC.CodeEnt.Pickup_carpart.OnTakeDamage(self, dinfo) end end