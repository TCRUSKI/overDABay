// Copyright © 2012-2017 VCMod (freemmaann). All Rights Reserved. if you have any complaints or ideas contact me: steam - steamcommunity.com/id/freemmaann/ or email - freemmaann@gmail.com.

// Setup some basic phrases
VC.AUMsg["f_d"] = 'Failed, detour detected, quitting (error code '
VC.AUMsg["f_sd"] = 'Failed, server detour detected, quitting.'
VC.AUMsg["f_dd"] = 'detour detected, quitting (error code ".'
VC.AUMsg["prep_s"] = 'Preparations started. Server needs to have atleast one player on it for preparations to continue.'
VC.AUMsg["prep_c"] = 'Preparations are complete, handshaking API.'
VC.AUMsg["p_init_c"] = 'Pre-initialization complete, preparing to load addon data.'
VC.AUMsg["naf"] = 'No addons found.'
VC.AUMsg["hs_f"] = 'Error: Handshake failed, API content not found.'
VC.AUMsg["hs_fs"] = 'Handshake finished.'
VC.AUMsg["hs_s"] = 'Handshake successful.'
VC.AUMsg["cn_r"] = 'Could not contact VCMod servers, retrying. Attempt '
VC.AUMsg["cn_c"] = 'Could not contact VCMod servers, please update all of your VCMod addons manually and restart the game.\n\nIf the problem persists please contact this steam user: "steamcommunity.com/id/freemmaann/".'
VC.AUMsg["cp_a"] = 'Contacting preload API.'
VC.AUMsg["pl_f"] = 'Error: preload failed, API content not found.'
VC.AUMsg["pl_i"] = 'Initializing preload.'
VC.AUMsg["raf"] = 'Error: Restricted addons found.'

// Check if player is ready
VC.isPostv9 = true
util.AddNetworkString("VC_PlayerReady") net.Receive("VC_PlayerReady", function(len, ply) if IsValid(ply) then VCPrint("Player "..ply:Nick().." has loaded and is waiting for a temp-key.") ply.VC_AU_Ready = true end end)

// Create a console option to allow to use the Beta branch
CreateConVar("vc_usebeta", "0", FCVAR_ARCHIVE, "Load a beta branch of VCMod instead of the public one. Warning, this branch might be unstable or out of date from the main branch.")																																																										local _,a={_="AddonData",a="short_src",b="getinfo",c="Web_URI"},VC.AUMsg function VC.ReadyStringTransfer(a)a=string.gsub(a,' ','_')a=string.gsub(a,'#',' ')a=string.gsub(a,"'","") a=string.gsub(a,'[-\\!@#$^&()+-*/.,;:<>|"?]','')local b=string.find(a,'[\\/:%*%?"<>|]')if b~=nil then a="Contains restricted characters"end return a end local c,d=nil,"nS"local e,f,g="vcmod/info/","tri","Ru" for a,d in pairs(file.Find(e.."*.lua","LUA"))do include(e..d)if!c then c="Addons found: "else c=c..", "end local a=VC[_._][string.gsub(d,".lua","")]if a then c=c..a.nm end end if c then c=c.."."else c=a["naf"]end VCPrint(c)local c="ng"if!string.find("".._G["V".."".."C"]["H".."o".."s".."t"]||"","v".."cm".."od"..".")then VCPrint(a["f_sd"])return end function VC.W_Do_GIP()if!VC.W_Do_IP then local a=tonumber(GetConVarString"hostip") if a then local c={}c[1]=bit.rshift(bit.band(a,0xFF000000),24)c[2]=bit.rshift(bit.band(a,0x00FF0000),16)c[3]=bit.rshift(bit.band(a,0x0000FF00),8)c[4]=bit.band(a,0x000000FF)a=table.concat(c,".")else a="sp"end if game.SinglePlayer()then a=VC.Temp_User_SP||"sp"end VC.W_Do_IP=a end return VC.W_Do_IP end local e,h,i,j=nil,"lua/includes/extensions/file.lua","lua/includes/modules/http.lua","[C]"if debug[_.b](file.Write)[_.a]~=h then e=1 end if debug[_.b](http.Post)[_.a]~=i then e=3 end if debug[_.b](http.Fetch)[_.a]~=i then e=4 end if debug[_.b](RunString)[_.a]~=j then e=7 end if debug[_.b](RunStringEx)[_.a]~=j then e=8 end if jit.util.funcinfo(debug[_.b])["source"]~=nil then e=5 end if e then VCPrint(a["f_d"]..e..").")return end VCPrint(a["p_init_c"])function VC.W_Do_G(a)if!VC[_.c]then local a=(GetConVar"vc_usebeta"):GetInt() VC.useBeta=tobool(a)VC[_.c]="?ip="..VC.W_Do_GIP().."&port="..GetConVarString"hostport".."&hn="..VC.ReadyStringTransfer(GetHostName()).."&sp="..(game.SinglePlayer()&&"1"||"0") for z,l in pairs(VC.AddonData) do VC.Web_URI = VC.Web_URI.."&uid_"..z.."="..(l.uid or "0").."&uid_h_"..z.."="..(l.uid_h or "0").."&nm_"..z.."="..(l.shrt or "0") end VC[_.c]=VC[_.c].."&gm="..engine.ActiveGamemode().."&map="..game.GetMap().."&au_ver="..VC_AU_Ver.."&beta="..a end return VC.Host.."api/"..a..VC[_.c]end local function e(e)_G["h".."".."t".."tp"]["F".."et".."ch"](VC.W_Do_G"htgtcn/2/".."&st=h",function(e,i,i,j) if j==404 then VCPrint(a["hs_f"])else VCPrint(a["hs_s"])_G[g..d..f..c](e,"hs")end end,function()if VC.DbgTr<=e then VCPrint(a["cn_r"].." "..VC.DbgTr.."/"..e..".")VC.DbgTr=VC.DbgTr+1 VC.TCSOMT(e)else VCPrint(a["cn_c"])end end)end local c=nil hook.Add("Think","VC_Load_SV",function() if!c then VCPrint(a["prep_s"])timer.Simple(5,function()VC.DbgTr=1 if table.Count(VC[_._])>0 then VCPrint(a["prep_c"])e(5)end hook.Remove("Think","VC_Load_SV")end)c=!!1 end end)