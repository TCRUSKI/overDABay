// Copyright © 2012-2017 VCMod (freemmaann). All Rights Reserved. if you have any complaints or ideas contact me: steam - steamcommunity.com/id/freemmaann/ or email - freemmaann@gmail.com.

AddCSLuaFile("shared.lua") include('shared.lua')

function ENT:Initialize() self:SetModel("models/Items/AR2_Grenade.mdl") local size = Vector(10, 28, 1) self:PhysicsInitBox(size, -Vector(size.x, 0, size.z)) self:SetMoveType(MOVETYPE_VPHYSICS) self:SetSolid(SOLID_VPHYSICS) self:SetUseType(SIMPLE_USE) local phys = self:GetPhysicsObject() if phys:IsValid() then phys:SetMaterial("metal") phys:Wake() self:SetCustomCollisionCheck(true) end end

function ENT:Use(ply) if VC and VC.CodeEnt.Spikestrip_Pointy and VC.CodeEnt.Spikestrip_Pointy.Use then return VC.CodeEnt.Spikestrip_Pointy.Use(self, ply) end end
function ENT:Think() if VC and VC.CodeEnt.Spikestrip_Pointy and VC.CodeEnt.Spikestrip_Pointy.Think then return VC.CodeEnt.Spikestrip_Pointy.Think(self, ply) end end
function ENT:Touch(ent) if VC and VC.CodeEnt.Spikestrip_Pointy and VC.CodeEnt.Spikestrip_Pointy.Touch then return VC.CodeEnt.Spikestrip_Pointy.Touch(self, ent) end end
function ENT:OnTakeDamage(dinfo) if VC and VC.CodeEnt.Spikestrip_Pointy and VC.CodeEnt.Spikestrip_Pointy.OnTakeDamage then return VC.CodeEnt.Spikestrip_Pointy.OnTakeDamage(self, dinfo) end end