// Copyright © 2012-2017 VCMod (freemmaann). All Rights Reserved. if you have any complaints or ideas contact me: steam - steamcommunity.com/id/freemmaann/ or email - freemmaann@gmail.com.

AddCSLuaFile("cl_init.lua") AddCSLuaFile("shared.lua") include('shared.lua')

function ENT:Initialize()
	if !self:GetModel() or self:GetModel() == "" then self:SetModel("models/barney.mdl") end
	self:SetHullType(HULL_HUMAN) self:SetHullSizeNormal()
	self:SetNPCState(NPC_STATE_SCRIPT) self:SetSolid(SOLID_BBOX) self:CapabilitiesAdd(CAP_ANIMATEDFACE) self:CapabilitiesAdd(CAP_TURN_HEAD)
	self:SetMoveType(MOVETYPE_STEP) self:SetSchedule(SCHED_FALL_TO_GROUND)
	self:SetUseType(SIMPLE_USE)
	self.VC_HumTime = CurTime()+math.Rand(30,50)
end

function ENT:Think() if VC.Settings and VC.Settings.CD_Hum and (!self.VC_HumTime or CurTime() >= self.VC_HumTime) then self:PlayScene("scenes/eli_lab/al_tele_workloop1.vcd") self.VC_HumTime = CurTime()+math.Rand(30,50) end end

function ENT:AcceptInput(name, activator, ply, data) if VC and VC.CD and VC.CD.RequestOpen then VC.CD.RequestOpen(self, ply) end end