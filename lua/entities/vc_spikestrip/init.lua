// Copyright © 2012-2017 VCMod (freemmaann). All Rights Reserved. if you have any complaints or ideas contact me: steam - steamcommunity.com/id/freemmaann/ or email - freemmaann@gmail.com.

AddCSLuaFile("cl_init.lua") AddCSLuaFile("shared.lua") include('shared.lua')

function ENT:Initialize() self:SetModel("models/sentry/vc_spikestrip.mdl") self:PhysicsInit(SOLID_VPHYSICS) self:SetMoveType(MOVETYPE_VPHYSICS) self:SetSolid(SOLID_VPHYSICS) self:SetUseType(CONTINUOUS_USE) local phys = self:GetPhysicsObject() if phys:IsValid() then phys:SetMaterial("metal") phys:Wake() self:SetCustomCollisionCheck(true) self:SetCustomCollisionCheck(true) end end

function ENT:Use(ply) if VC and VC.CodeEnt.Spikestrip and VC.CodeEnt.Spikestrip.Use then return VC.CodeEnt.Spikestrip.Use(self, ply) end end
function ENT:Think() if VC and VC.CodeEnt.Spikestrip and VC.CodeEnt.Spikestrip.Think then return VC.CodeEnt.Spikestrip.Think(self, ply) end end
function ENT:Touch(ent) if VC and VC.CodeEnt.Spikestrip and VC.CodeEnt.Spikestrip.Touch then return VC.CodeEnt.Spikestrip.Touch(self, ent) end end
function ENT:OnTakeDamage(dinfo) if VC and VC.CodeEnt.Spikestrip and VC.CodeEnt.Spikestrip.OnTakeDamage then return VC.CodeEnt.Spikestrip.OnTakeDamage(self, dinfo) end end