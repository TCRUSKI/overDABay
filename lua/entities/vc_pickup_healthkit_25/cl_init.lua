// Copyright © 2012-2017 VCMod (freemmaann). All Rights Reserved. if you have any complaints or ideas contact me: steam - steamcommunity.com/id/freemmaann/ or email - freemmaann@gmail.com.

include('shared.lua')

ENT.RenderGroup = RENDERGROUP_BOTH

function ENT:Initialize() self.VC_Color = Color(100, 255, 55, 255) self.VC_Length = 210 self.VC_Text = "Vehicle Repair 25%" self.VC_PVsb = util.GetPixelVisibleHandle() end