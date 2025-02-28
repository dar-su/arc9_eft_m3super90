AddCSLuaFile()
SWEP.Base = "arc9_eft_base"
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.Spawnable = true

------------------------- |||           Trivia            ||| -------------------------

SWEP.PrintName = "Benelli M3 Super 90"
SWEP.Description = [[The Benelli M3 S90 is a dual-mode shotgun designed and manufactured by Benelli. The M3 is notable for allowing the user to choose between semi-automatic or pump-action operation. Benelli shotguns show excellent ballistic performance, and the finish and fine workmanship are the epitome of traditional Italian style.]]

SWEP.Class = ARC9:GetPhrase("eft_class_weapon_dualsg")
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_sg")

SWEP.Trivia = {
    [ARC9:GetPhrase("eft_trivia_manuf") .. "1"] = "Benelli Armi SpA",
    [ARC9:GetPhrase("eft_trivia_cal") .. "2"] = "12 gauge",
    [ARC9:GetPhrase("eft_trivia_act") .. "3"]= ARC9:GetPhrase("eft_trivia_act_recoil"),
    [ARC9:GetPhrase("eft_trivia_country") .. "4"] = ARC9:GetPhrase("eft_trivia_country_italy"),
    [ARC9:GetPhrase("eft_trivia_year") .. "5"] = "1990"
}

SWEP.StandardPresets = false 

SWEP.WorldModel = "models/weapons/w_shot_xm1014.mdl"
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_m3super90.mdl"
SWEP.DefaultBodygroups = "0000000000000"

------------------------- |||           Offsets            ||| -------------------------

SWEP.WorldModelOffset = {
    Pos = Vector(-8.33, 5.5, -4.5),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-7, 5, 0), -- rpg
    TPIKAng = Angle(-11.5, 0, 180),
    Scale = 1
}

SWEP.IronSights = {
    Pos = Vector(-4.27, -6, 0.567),
    Ang = Angle(0, 0.06, 0),
    Midpoint = { Pos = Vector(-1, 0, 8), Ang = Angle(0, 0, -145) },
    Magnification = 1.1,
    ViewModelFOV = 54
}

SWEP.ActivePos = Vector(-0.5, -3.2, -0.5)
SWEP.CustomizePos = Vector(20.5, 30, 4)
SWEP.CustomizeSnapshotFOV = 100
-- SWEP.CustomizeRotateAnchor = Vector(14.5, -4.28-0.1, -5.23)

------------------------- |||           Stats            ||| -------------------------

SWEP.Spread = 18.22 * ARC9.MOAToAcc
SWEP.UseDispersion = true
SWEP.DispersionSpread = 0.005
SWEP.DispersionSpreadAddHipFire = 0.02
SWEP.DispersionSpreadMultMove = 1.5
SWEP.DispersionSpreadAddMove = 0.015

-- prevent subbase to fuck up shotgun spread
SWEP.SpreadAddHipFire = 0
SWEP.SpreadMultMove = 1
SWEP.SpreadAddMove = 0
SWEP.SpreadHook = false
SWEP.SpreadAddHot = 0
SWEP.DispersionHook = ARC9EFT.SpreadBonus or nil
SWEP.DispersionSpreadAddHot = 0.01 -- overheat debuff

SWEP.RPM = 300

SWEP.EFTErgo = 42
SWEP.BarrelLength = 42
SWEP.Ammo = "Buckshot"

SWEP.SuppressEmptySuffix = false 
SWEP.NoFiremodeWhenEmpty = true 
SWEP.Firemodes = {
    { Mode = 1, PrintName = "Pump-action", EFTSingleAction = true, ManualAction = true, SuppressEmptySuffix = true, NoShellEject = true, RPM = 999, SlamFire = true, RecoilUpMult = 0.7 },
    { Mode = 1, PrintName = "Semi auto", MalfunctionMeanShotsToFailMult = 0.8 },
}

-- SWEP.ManualAction = true
-- SWEP.NoShellEject = true
SWEP.EjectDelay = 0.05

SWEP.ShotgunReload = true
SWEP.ManualActionNoLastCycle = false
SWEP.ManualActionEjectAnyway = false

SWEP.Slot = 3

------------------------- |||           Recoil            ||| -------------------------

SWEP.Recoil = 1.5 -- general multiplier of main recoil

SWEP.RecoilUp   = 5   -- up recoil
SWEP.RecoilSide = 1.1 -- sideways recoil
SWEP.RecoilRandomUp   = 0.5 -- random up/down
SWEP.RecoilRandomSide = 1   -- random left/right

SWEP.RecoilAutoControl = 3.6 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 0.5 -- general multiplier for it

SWEP.EFT_VisualRecoilUp_BURST_SEMI   = 0.4   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 0.6   --   when fullautoing
SWEP.EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.04   --   when fullautoing
SWEP.VisualRecoilRoll = -15 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 5 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = 11 -- same but in sights only

SWEP.VisualRecoilDampingConst = 160  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 5 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 0.5 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = 0.1 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = -0.05 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

SWEP.EFT_ShotsToSwitchToFullAutoBehaviur = 2 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 1.6 -- camera roll each shot + makes camera go more up when fullautoing

SWEP.VisualRecoilCenter = Vector(4.28, 19, -1)
SWEP.SubtleVisualRecoil = 2
SWEP.SubtleVisualRecoilDirection = 4.25
SWEP.SubtleVisualRecoilSpeed = 0.7

------------------------- |||           Damage            ||| -------------------------

-- default 7mm
SWEP.DamageMax = 39/2
SWEP.DamageMin = 24.57/2
SWEP.PhysBulletMuzzleVelocity = 415 /0.0254

SWEP.RangeMin = 10
SWEP.RangeMax = 100 /0.0254

SWEP.Penetration =      3 *2.54/100/0.0254
SWEP.PenetrationDelta = 26/100
SWEP.ArmorPiercing =    26/100
SWEP.RicochetChance =   0

SWEP.Num = 8

------------------------- |||           Malfunctions            ||| -------------------------

SWEP.MalfunctionCycle = true  
SWEP.MalfunctionNeverLastShoot = true 
SWEP.MalfunctionMeanShotsToFail = 375
SWEP.MalfunctionMeanShotsToFailMultHot = -0.2
SWEP.MalfunctionWait = -1 -- oh god why the fuck 0 is 0.5???????
SWEP.HeatCapacity = 30
SWEP.HeatDissipation = 0.5

------------------------- |||           Minor stuff            ||| -------------------------

SWEP.CamQCA_Mult = 1
SWEP.MuzzleParticle = "muzzleflash_M3"
SWEP.AfterShotParticle = "barrel_smoke"
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/patron_12x70_shell.mdl"
SWEP.ShellSounds = ARC9EFT.Shells12cal

------------------------- |||           Sounds            ||| -------------------------

local path = "weapons/darsu_eft/m3s90/"

SWEP.ShootSound = path .. "m3_fire_outdoor_close.ogg"
SWEP.ShootSoundIndoor = path .. "m3_fire_indoor_close.ogg"
SWEP.DistantShootSound = path .. "m3_fire_outdoor_distant.ogg"
SWEP.DistantShootSoundIndoor = path .. "m3_fire_indoor_distant.ogg"

SWEP.ShootSoundSilenced = path .. "m3_fire_outdoor_silenced_close.ogg"
SWEP.ShootSoundSilencedIndoor = path .. "m3_fire_indoor_silenced_close.ogg"
SWEP.DistantShootSoundSilenced = path .. "m3_fire_outdoor_silenced_distant.ogg"
SWEP.DistantShootSoundSilencedIndoor = path .. "m3_fire_indoor_silenced_distant.ogg"

------------------------- |||           Dropped magazines            ||| -------------------------

SWEP.DropMagazineAmount = 0

------------------------- |||           Animations            ||| -------------------------

-- SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
--     [1] = "patron_in_weapon",
--     [2] = "patron_in_mag1",
--     [3] = "patron_in_mag2",
--     [4] = "patron_in_mag3",
--     [5] = "patron_in_mag4",
-- }

local infitieammoconvar = GetConVar("arc9_infinite_ammo")

SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()
    
    if !IsValid(swep:GetOwner()) then return end

    local clip = swep:Clip1()
    local empty = swep:Clip1() == 0
    local maxclip = swep:GetMaxClip1()+1
    local reserve = infitieammoconvar:GetBool() and 5 or math.Clamp(swep:GetOwner():GetAmmoCount(swep.Ammo), 0, 5)
    local sa = swep:GetValue("EFTSingleAction")
    
    
    if anim == "inspect" then        
        swep.EFTInspectnum = swep.EFTInspectnum or 0
        if IsFirstTimePredicted() then
            swep.EFTInspectnum = swep.EFTInspectnum + 1
        end
        local rand = swep.EFTInspectnum
        if rand == 3 then swep.EFTInspectnum = 0 rand = 0 end

        if rand == 2 and nomag then rand = 0 swep.EFTInspectnum = 0 end
        if rand == 0 then anim = (sa and "checkchamber_pa" or "checkchamber_sa") end

        if rand == 2 then
            if ARC9EFTBASE and SERVER then
                net.Start("arc9eftmagcheck")
                net.WriteBool(true) -- accurate or not based on mag type
                net.WriteUInt(math.min(clip , maxclip), 9)
                net.WriteUInt(maxclip, 9)
                net.Send(swep:GetOwner())

                anim = (sa and "mag_check_pa" or "mag_check_sa")
                if clip == 1 then return "mag_check_pa_empty" end -- its in chamber but we'll play empty mag inspect anim with closed bolt
            end
        elseif rand == 1 then
            anim = "look"
            if empty and sa then return "look_empty_pa" end -- to not play empty open bolt anim on pumpaction
        end
        
        return empty and anim .. "_empty" or anim
    end
    
    local johnwick = elements["eft_m3s90_jonnwick"]

    if anim == "idle" then   
        if swep.fistful then swep.fistful = nil end
    elseif anim == "ready" then   
        return sa and "ready_sa" or "ready"
    elseif anim == "fire" then
        return sa and "fire_sa" or "fire"
    elseif anim == "reload_start" then
        swep.onebyonestart = nil
        swep.onebyonestart2 = nil
        swep.roundcount = 0

        if clip == 0 then
            swep.onebyonestart2 = (reserve < 5) 

            return sa and "pa_ammo_in_first"  or "sa_ammo_in_first_catch" 
        end

        if johnwick then swep.onebyonestart2 = true return "reload_start2" end
        
        if maxclip - clip < 3 or reserve < 5 then
            swep.onebyonestart = true
            return "reload_start"
        end

        return "fistful_start"

    elseif anim == "reload_insert" then
        if johnwick and maxclip - clip > 3 then swep.onebyonestart2 = true return "loop_quad_loading" end
        if johnwick and maxclip - clip > 1 then swep.onebyonestart2 = true return "loop_twin_loading" end
        -- if johnwick and maxclip - clip == 1 then return "reload_in_loop3" end

        if swep.onebyonestart then return "reload_in_loop" end
        if swep.onebyonestart2 then swep.onebyonestart2 = nil swep.onebyonestart = true return "reload_in_loop3" end
        
        swep.roundcount = swep.roundcount + 1

        if swep.roundcount == 5 then 
            if maxclip-1 == clip then return "fistful5" end
            if maxclip - clip < 3 then swep.onebyonestart2 = true end

            swep.roundcount = 0 
            return "fistful5next"
        end

        return "fistful" .. swep.roundcount

    elseif anim == "reload_finish" then
        if swep.onebyonestart then swep.onebyonestart = nil return "reload_end" end
        if swep.onebyonestart2 then swep.onebyonestart2 = nil return "reload_end2" end
        if swep.roundcount == 5 then swep.roundcount = 0 return "fistful_end" end
        if swep.roundcount == 0 then return "reload_end2" end
        
        return "fistful_abort_" .. swep.roundcount
    elseif anim == "fix" then
        rand = math.Truncate(util.SharedRandom("hi", 1, 4.99))
        -- swep.EFTInspectnum = swep.EFTInspectnum or 0
        -- if IsFirstTimePredicted() then
        --     swep.EFTInspectnum = swep.EFTInspectnum + 1
        -- end
        -- local rand = swep.EFTInspectnum
        -- if rand == 5 then swep.EFTInspectnum = 1 rand = 1 end

        if ARC9EFTBASE and SERVER then
            timer.Simple(0.75, function()
                if IsValid(swep) and IsValid(swep:GetOwner()) then
                    net.Start("arc9eftjam")
                    net.WriteUInt(rand, 3)
                    net.Send(swep:GetOwner())
                end
            end)
        end

        return "jam_" .. rand .. (sa and "" or "_sa")
    end

    return anim
end

-- SWEP.ReloadHideBoneTables = {
--     [1] = {
--         "mod_magazine",
--         "patron_in_mag1",
--         "patron_in_mag2",
--         "patron_in_mag3",
--         "patron_in_mag4"
--     },
-- }


local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}
local switchi = { { s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 } }
local shell_in = {path .. "m3_shell_in1.ogg", path .. "m3_shell_in2.ogg", path .. "m3_shell_in3.ogg"}

local readypa = {
    { s = randspin, t = 0 },
    { s = path .. "m3_pump_in.ogg", t = 0.56 },
    { s = path .. "m3_pump_out.ogg", t = 0.73 },
    { s = randspin, t = 0.99 },
}
local readysa = {
    { s = randspin, t = 0 },
    { s = path .. "m3_bolt_in.ogg", t = 0.52 },
    { s = path .. "m3_bolt_out.ogg", t = 0.72 },
    { s = randspin, t = 0.81 },
}

local cycle = {
    { s = path .. "m3_pump_in.ogg", t = 0.01 },
    { s = path .. "m3_pump_out.ogg", t = 0.25 },
}

local look = {
    { s = randspin, t = 0.05 },
    { s = randspin, t = 1.26 },
    { s = randspin, t = 2.54 },
}

local magcheck = {
    { s = randspin, t = 0.1 },
    { s = path .. "mr133_magcover.ogg", t = 0.36 },
    { s = path .. "mr133_magcover.ogg", t = 0.92 },
    { s = randspin, t = 1.09 },
}

local checkchamber_pa = {
    { s = randspin, t = 0.05 },
    { s = path .. "m3_pump_in_check.ogg", t = 0.34 },
    { s = path .. "m3_pump_out_check.ogg", t = 1.19 },
    { s = randspin, t = 1.36 },
}
local checkchamber_sa = {
    { s = randspin, t = 0.05 },
    { s = path .. "m3_bolt_in_check.ogg", t = 0.72 },
    { s = path .. "m3_bolt_out_check.ogg", t = 1.24 },
    { s = randspin, t = 1.45 },
}
local checkchamber_sa_empty = {
    { s = randspin, t = 0.1 },
    { s = randspin, t = 0.82 },
}
local fistfualabort = {
    { s = pouchin, t = 0.3 },
    { s = randspin, t = 0.59 },
    { s = randspin, t = 0.87 },
}

local drawa = { { s = path .. "mr133_draw.ogg", t = 0 } }
local holstera = { { s = path .. "mr133_holster.ogg", t = 0 } }

SWEP.Animations = {
    ["idle"] = { Source = "idle", Time = 1111 }, -- remove TIME !!!!!!
    ["idle_empty"] = { Source = "idle_empty" },

    ["ready"] = { Source = {"ready0_sa","ready1_sa","ready2_sa"}, EventTable = readypa },
    ["ready_sa"] = { Source = {"ready0_pa","ready1_pa","ready2_pa"}, EventTable = readysa },

    ["draw"] = { Source = "draw", EventTable = drawa },
    ["holster"] = { Source = "holster", EventTable = holstera },
    ["draw_empty"] = { Source = "draw_empty", EventTable = drawa },
    ["holster_empty"] = { Source = "holster_empty", EventTable = holstera },

    ["fire_sa"] = { Source = "fire", EventTable = { { s = path .. "m3_hammer_release.ogg", t = 0 } } },
    ["fire"] = { Source = "fire_sa", EventTable = { { s = path .. "m3_hammer_release.ogg", t = 0 } }, NoIdle = true },
    ["fire_empty"] = { Source = "fire_salast", EventTable = { { s = path .. "m3_hammer_release.ogg", t = 0 } }, NoIdle = true },

    ["dryfire"] = { Source = "dryfire", EventTable = { { s = path .. "pm_trigger_empty.ogg", t = 0 } } },
    ["dryfire_empty"] = { Source = "dryfire_empty", EventTable = { { s = path .. "pm_trigger_empty.ogg", t = 0 } } },

    ["cycle"] = { Source = {"pump0","pump1","pump2"}, EventTable = cycle, Mult = 0.8 },
    -- ["cycle"] = { Source = "pumpfast", EventTable = cycle, Mult = 1 },

    ["look"] = { Source = "look", MinProgress = 0.95, FireASAP = true, EventTable = look },
    ["look_empty"] = { Source = "look_empty", MinProgress = 0.95, FireASAP = true, EventTable = look },
    ["look_empty_pa"] = { Source = "look_empty_pa", MinProgress = 0.95, FireASAP = true, EventTable = look },

    ["mag_check_pa"] = { Source = "magcheck", MinProgress = 0.95, FireASAP = true, EventTable = magcheck },
    ["mag_check_pa_empty"] = { Source = "ammo_check_emptypa", MinProgress = 0.95, FireASAP = true, EventTable = magcheck },
    ["mag_check_sa"] = { Source = "magcheck", MinProgress = 0.95, FireASAP = true, EventTable = magcheck },
    ["mag_check_sa_empty"] = { Source = "magcheck_empty", MinProgress = 0.95, FireASAP = true, EventTable = magcheck },

    ["checkchamber_pa"] = { Source = "checkchamber_pa", MinProgress = 0.95, FireASAP = true, EventTable = checkchamber_pa },
    ["checkchamber_pa_empty"] = { Source = "pa_chamber_check_empty", MinProgress = 0.95, FireASAP = true, EventTable = checkchamber_pa },
    ["checkchamber_sa"] = { Source = "checkchamber_sa", MinProgress = 0.95, FireASAP = true, EventTable = checkchamber_sa },
    ["checkchamber_sa_empty"] = { Source = "checkchamber_sa_empty", MinProgress = 0.95, FireASAP = true, EventTable = checkchamber_sa_empty },

    ["toggle"] = {        Source = "mod_switch", EventTable = switchi },
    ["switchsights"] = {  Source = "mod_switch", EventTable = switchi },
    ["toggle_empty"] = {        Source = "mod_switch_empty", EventTable = switchi },
    ["switchsights_empty"] = {  Source = "mod_switch_empty", EventTable = switchi },

    ["firemode_1"] = { Source = "sa_to_pa", EventTable = { { s = path .. "m3_switch_to_pa.ogg", t = 0.22 } } },
    ["firemode_2"] = { Source = "pa_to_sa", EventTable = { { s = path .. "m3_switch_to_sa.ogg", t = 0.22 } } },
    ["firemode_1_empty"] = { Source = "sa_to_pa_empty", EventTable = cock }, -- disallow swtiching firemodes while empty !! ! 
    ["firemode_2_empty"] = { Source = "pa_to_sa_empty", EventTable = cock },

    
    ["sa_ammo_in_first_catch"] = { Source = "sa_ammo_in_first_catch", RestoreAmmo = 1, Mult = 0.85, EventTable = { 
        { s = randspin, t = 0.1 },
        { s = path .. "mr133_shell_pickup.ogg", t = 0.64 },
        { s = path .. "m3_shell_in_first.ogg", t = 1.02 },
        { s = path .. "m3_bolt_release_button.ogg", t = 1.43 },
        { s = path .. "m3_bolt_out.ogg", t = 1.52 },
        { s = randspin, t = 1.83 },
    }},
    ["pa_ammo_in_first"] = { Source = {"pa_ammo_in_first_0", "pa_ammo_in_first_0", "pa_ammo_in_first_1", "pa_ammo_in_first_2"}, Mult = 0.85, RestoreAmmo = 1, EventTable = { 
        { s = path .. "m3_pump_in.ogg", t = 0.06 },
        { s = randspin, t = 0.32 },
        { s = path .. "mr133_shell_pickup.ogg", t = 0.72 },
        { s = path .. "m3_shell_in_first.ogg", t = 1.08 },
        { s = path .. "m3_bolt_release_button.ogg", t = 1.39 },
        { s = path .. "m3_bolt_out.ogg", t = 1.48 },
        { s = randspin, t = 1.67 },
    }},
    ["reload_start"] = { Source = "reload_start", RestoreAmmo = 1, Mult = 0.9, EventTable = {
        { s = randspin, t = 0.03 },
        { s = path .. "mr133_shell_pickup.ogg", t = 0.46 },
        { s = path .. "mr133_magcover.ogg", t = 0.88 },
        { s = shell_in, t = 1 },
    }},
    ["reload_in_loop"] = { Source = "reload_in_loop", Mult = 0.9, EventTable = {
        { s = path .. "mr133_shell_pickup.ogg", t = 0.42 },
        { s = path .. "mr133_magcover.ogg", t = 0.76 },
        { s = shell_in, t = 0.87 },
    }},
    ["reload_in_loop3"] = { Source = "reload_in_loop3", Mult = 0.9, EventTable = {
        { s = path .. "mr133_shell_pickup.ogg", t = 0.04 },
        { s = path .. "mr133_magcover.ogg", t = 0.31 },
        { s = shell_in, t = 0.44 },
    }},
    ["reload_end"] = { Source = "reload_end", Mult = 0.9, EventTable = {
        { s = randspin, t = 0.07 },
    }},
    ["reload_end2"] = { Source = "reload_end2", Mult = 0.9, EventTable = {
        { s = randspin, t = 0.1 },
        { s = randspin, t = 0.38 },
    }},
    ["fistful_start"] = { Source = "fistful_start", Mult = 0.9, EventTable = {
        { s = randspin, t = 0.15 },
    }},
    ["fistful1"] = { Source = "fistful1", Mult = 0.9, EventTable = {
        -- { s = path .. "mr133_shell_pickup.ogg", t = 0.05 },
        { s = pouchout, t = 0.05 },
        { s = randspin, t = 0.1 },
        { s = path .. "mr133_magcover.ogg", t = 0.45 },
        { s = shell_in, t = 0.64 },
    }},
    ["fistful2"] = { Source = "fistful2", Mult = 0.9, EventTable = {
        { s = path .. "mr133_shell_pickup.ogg", t = 0.08 },
        { s = path .. "mr133_magcover.ogg", t = 0.29 },
        { s = shell_in, t = 0.48 },
    }},
    ["fistful3"] = { Source = "fistful3", Mult = 0.9, EventTable = {
        { s = path .. "mr133_shell_pickup.ogg", t = 0.05 },
        { s = path .. "mr133_magcover.ogg", t = 0.21 },
        { s = shell_in, t = 0.44 },
    }},
    ["fistful4"] = { Source = "fistful4", Mult = 0.9, EventTable = {
        { s = path .. "mr133_shell_pickup.ogg", t = 0.04 },
        { s = path .. "mr133_magcover.ogg", t = 0.21 },
        { s = shell_in, t = 0.39 },
    }},
    ["fistful5"] = { Source = "fistful5", Mult = 0.9, EventTable = {
        { s = path .. "mr133_magcover.ogg", t = 0.31 },
        { s = shell_in, t = 0.52 },
    }},
    ["fistful5next"] = { Source = "fistful5next", Mult = 0.9, EventTable = {
        { s = path .. "mr133_magcover.ogg", t = 0.31 },
        { s = shell_in, t = 0.52 },
        { s = randspin, t = 0.89 },
    }},
    ["fistful_abort_1"] = { Source = "fistful_abort_1", Mult = 0.9, EventTable = fistfualabort},
    ["fistful_abort_2"] = { Source = "fistful_abort_2", Mult = 0.9, EventTable = fistfualabort},
    ["fistful_abort_3"] = { Source = "fistful_abort_3", Mult = 0.9, EventTable = fistfualabort},
    ["fistful_abort_4"] = { Source = "fistful_abort_4", Mult = 0.9, EventTable = fistfualabort},
    ["fistful_end"] = { Source = "fistful_end", Mult = 0.9, EventTable = {
        { s = randspin, t = 0.15 },
    }},

    ["reload_start2"] = { Source = "reload_start2", Mult = 0.9, EventTable = {
        { s = randspin, t = 0.03 },
    }},
    ["loop_quad_loading"] = { Source = "loop_quad_loading", RestoreAmmo = 3, Mult = 0.9, EventTable = { -- restore 3 cuz insert already gives +1
        { s = pouchout, t = 0.05 },
        { s = path .. "mr133_shell_pickup.ogg", t = 0.1 },
        { s = path .. "mr133_magcover.ogg", t = 0.36 },
        { s = path .. "m3_shell_in_owo.ogg", t = 0.57 },
            -- { s = shell_in, t = 0.58 },
        -- { s = shell_in, t = 0.64 },
        { s = path .. "mr133_shell_pickup.ogg", t = 0.91 },
        -- { s = path .. "mr133_magcover.ogg", t = 1.00 },
        { s = path .. "m3_shell_in_owo.ogg", t = 1.23 },
            -- { s = shell_in, t = 1.24 },
        -- { s = shell_in, t = 1.36 },
        -- { s = path .. "mr133_magcover.ogg", t = 1.60 },
        { s = randspin, t = 1.67 },
    }},
    ["loop_twin_loading"] = { Source = "loop_twin_loading", RestoreAmmo = 1, Mult = 0.9, EventTable = { -- restore 1 cuz insert already gives +1
        { s = pouchout, t = 0.05 },
        { s = path .. "mr133_shell_pickup.ogg", t = 0.1 },
        { s = path .. "mr133_magcover.ogg", t = 0.31 },
        { s = path .. "m3_shell_in_owo.ogg", t = 0.45 },
            -- { s = shell_in, t = 0.46 },
        -- { s = shell_in, t = 0.55 },
        -- { s = path .. "mr133_magcover.ogg", t = 0.79 },
        { s = randspin, t = 0.92 },
    }},

    ["jam_1_sa"] = {
        Source = "jam_shell_sa", -- jam shell
        EventTable = {
            { s = randspin, t = 0.1 },
            { s = randspin, t = 0.83 },
            { s = randspin, t = 1.22 },
            { s = path .. "mr133_shell_pickup.ogg", t = 1.64 },
            { s = path .. "pump_jam_shell_out1.ogg", t = 2.29},
            { s = randspin, t = 2.61 },
            { s = path .. "m3_bolt_in_check.ogg", t = 2.98 },
            { s = path .. "m3_bolt_out.ogg", t = 3.36 },
            { s = randspin, t = 3.6 },
        },
    },
    ["jam_2_sa"] = {
        Source = "jam_feed_sa", -- jam feed
        EventTable = {
            { s = randspin, t = 0.1 },
            { s = randspin, t = 0.83 },
            { s = randspin, t = 1.27 },
            { s = path .. "pump_jam_slidelock_grab2.ogg", t = 1.6 },
            { s = path .. "ak_jam_stuckbolt_in1.ogg", t = 1.88 },
            { s = path .. "m3_bolt_in_check.ogg", t = 2.32 },
            { s = randspin, t = 2.74 },
            { s = randspin, t = 2.98 },
            { s = path .. "pump_jam_shell_out2.ogg", t = 3.01 },
            { s = randspin, t = 3.3 },
            { s = randspin, t = 3.6 },
            { s = randspin, t = 3.94 },
            { s = path .. "m3_bolt_out_check.ogg", t = 4.29 },
            { s = path .. "m3_bolt_in.ogg", t = 4.52 },
            { s = path .. "m3_bolt_out.ogg", t = 4.87 },
            { s = randspin, t = 5.08 },
        },
    },
    ["jam_3_sa"] = {
        Source = "jam_hardslide_sa", -- jam hard
        EventTable = {
            { s = randspin, t = 0.1 },
            { s = randspin, t = 0.83 },
            { s = randspin, t = 1.22 },
            -- { s = randspin, t = 1.92 },
            { s = path .. "pump_jam_slidelock_grab2.ogg", t = 1.53 },
            { s = path .. "ak_jam_stuckbolt_in_starting.ogg", t = 1.7 },
            { s = path .. "ak_jam_stuckbolt_in1.ogg", t = 1.83 },
            { s = path .. "ak_jam_stuckbolt_in2.ogg", t = 2.29 },
            { s = randspin, t = 2.7 },
            { s = path .. "pump_jam_slidelock_grab2.ogg", t = 3.54 },
            { s = path .. "ak_jam_stuckbolt_in_starting.ogg", t = 4.03 },
            { s = path .. "m3_bolt_in_check.ogg", t = 4.31 },
            { s = path .. "pump_jam_shell_out2.ogg", t = 4.45 },
            { s = path .. "m3_bolt_out.ogg", t = 4.7 },
            { s = randspin, t = 5.04 },
        },
        EjectAt = 4.45
    },
    ["jam_4_sa"] = {
        Source = "jam_softslide_sa", -- jam soft
        EventTable = {
            { s = randspin, t = 0.1 },
            { s = randspin, t = 0.83 },
            { s = randspin, t = 1.22 },
            { s = path .. "pump_jam_slidelock_grab2.ogg", t = 1.85 },
            { s = path .. "ak_jam_stuckbolt_in1.ogg", t = 1.97 },
            { s = path .. "ak_jam_stuckbolt_in2.ogg", t = 2.4 },
            { s = path .. "ak_jam_stuckbolt_in_starting.ogg", t = 2.82 },
            { s = path .. "m3_bolt_in_check.ogg", t = 3.17 },
            { s = path .. "pump_jam_shell_out2.ogg", t = 3.34 },
            { s = path .. "m3_bolt_out.ogg", t = 3.56 },
            { s = randspin, t = 3.87 },
        },
        EjectAt = 3.34
    },

    
    ["jam_1"] = {
        Source = "jam_shell_pa", -- jam shell
        EventTable = {
            { s = path .. "m3_pump_in.ogg", t = 0.01 },
            { s = path .. "m3_pump_out_check.ogg", t = 0.25 },
            { s = randspin, t = 0.7 },
            { s = randspin, t = 1.42 },

            { s = randspin, t = 1.86 },
            { s = path .. "pump_jam_slidelock_try2.ogg", t = 2.29 },
            { s = path .. "pump_jam_shell_out1.ogg", t = 2.3},
            { s = path .. "pump_jam_slidelock_try1.ogg", t = 2.44 },
            { s = path .. "pump_jam_slidelock_try4.ogg", t = 2.64 },
            { s = randspin, t = 2.88 },
            { s = path .. "m3_pump_in.ogg", t = 3.4 },
            { s = path .. "m3_pump_out.ogg", t = 3.69 },
            { s = randspin, t = 3.99 },
        },
    },
    ["jam_2"] = {
        Source = "jam_feed_pa", -- jam feed
        EventTable = {
            { s = path .. "m3_pump_in.ogg", t = 0.01 },
            { s = path .. "pump_jam_slidelock_try1.ogg", t = 0.25 },
            { s = randspin, t = 0.7 },
            { s = randspin, t = 1.42 },

            { s = path .. "m3_pump_in_check.ogg", t = 1.84 },
            { s = randspin, t = 2.22 },
            { s = path .. "pump_jam_shell_out1.ogg", t = 2.76 },
            { s = path .. "pump_jam_shell_out2.ogg", t = 3.35 },
            { s = randspin, t = 3.8 },
            { s = path .. "m3_pump_out.ogg", t = 4.03 },
            { s = path .. "m3_pump_in.ogg", t = 4.31 },
            { s = path .. "m3_pump_out.ogg", t = 4.67 },
            { s = randspin, t = 4.95 },
        },
    },
    ["jam_3"] = {
        Source = "jam_hardslide_pa", -- jam hard
        EventTable = {
            { s = path .. "pump_jam_slidelock_try4.ogg", t = 0.01 },
            { s = randspin, t = 0.7 },
            { s = randspin, t = 1.42 },

            { s = randspin, t = 1.94 },
            { s = path .. "pump_jam_slidelock_try1.ogg", t = 2.34 },
            { s = path .. "pump_jam_slidelock_try2.ogg", t = 2.79 },
            { s = path .. "pump_jam_slidelock_try4.ogg", t = 3.52 },
            { s = path .. "pump_jam_slidelock_try3.ogg", t = 4.28 },
            { s = path .. "m3_pump_in.ogg", t = 4.45 },
            { s = path .. "pump_jam_shell_out2.ogg", t = 4.62 },
            { s = path .. "m3_pump_out.ogg", t = 4.84 },
            { s = randspin, t = 5.15 },
        },
        EjectAt = 4.62
    },
    ["jam_4"] = {
        Source = "jam_softslide_pa", -- jam soft
        EventTable = {
            { s = path .. "pump_jam_slidelock_try4.ogg", t = 0.01 },
            { s = path .. "pump_jam_slidelock_try1.ogg", t = 0.25 },
            { s = randspin, t = 0.7 },
            { s = randspin, t = 1.42 },

            { s = randspin, t = 1.82 },
            { s = path .. "pump_jam_slidelock_try1.ogg", t = 2.29 },
            { s = path .. "pump_jam_slidelock_try2.ogg", t = 2.84 },
            { s = path .. "pump_jam_slidelock_try3.ogg", t = 3.24 },
            { s = path .. "m3_pump_in.ogg", t = 3.4 },
            { s = path .. "pump_jam_shell_out2.ogg", t = 3.55 },
            { s = path .. "m3_pump_out.ogg", t = 3.84 },
            { s = randspin, t = 4.11 },
        },
        EjectAt = 3.55
    },

}

------------------------- |||           Attachments            ||| -------------------------

SWEP.EFTRequiredAtts = { "HasMag", "HasBolt", "HasGrip", "HasHG", "HasBarrel", "HasAmmoooooooo" }

SWEP.AttachmentElements = {
    ["eft_m3s90_barrel_std"] = { Bodygroups = { {1, 1} } },
    ["eft_m3s90_hg_std"] = { Bodygroups = { {2, 1} } },
    ["eft_m3s90_stock_unfolded"] = { Bodygroups = { {3, 1} } },
    ["eft_m3s90_stock_folded"] = { Bodygroups = { {3, 2} } },
    ["eft_m3s90_stock_urba"] = { Bodygroups = { {3, 3} } },
    ["eft_m3s90_pg_std"] = { Bodygroups = { {4, 1} } },
    ["eft_m3s90_rs_std"] = { Bodygroups = { {5, 1} } },
    ["eft_m3s90_mount_std"] = { Bodygroups = { {6, 1} } },
    ["eft_m3s90_charge_std"] = { Bodygroups = { {7, 1} } },
    
    ["magclamp"] = { Bodygroups = { {8, 1} } },
    ["eft_m3s90_mag_5"] = { Bodygroups = { {9, 1} } },
    ["eft_m3s90_mag_7"] = { Bodygroups = { {9, 2} } },
    ["eft_m3s90_mag_9"] = { Bodygroups = { {9, 3} } },
    ["eft_m3s90_mag_11"] = { Bodygroups = { {9, 4} } },
    ["eft_m3s90_mag_13"] = { Bodygroups = { {9, 5} } },
    ["eft_m3s90_mag_13"] = { Bodygroups = { {9, 5} } },
    
    ["eft_ammo_12x70_std"] = { Bodygroups = { {10, 1} } },
    ["eft_ammo_12x70_dual_sabot"] = { Bodygroups = { {10, 2} } },
    ["eft_ammo_12x70_flechette"] = { Bodygroups = { {10, 3} } },
    ["eft_ammo_12x70_rip"] = { Bodygroups = { {10, 4} } },
    ["eft_ammo_12x70_50bmg"] = { Bodygroups = { {10, 5} } },
    ["eft_ammo_12x70_ap20"] = { Bodygroups = { {10, 6} } },
    ["eft_ammo_12x70_ftx"] = { Bodygroups = { {10, 7} } },
    ["eft_ammo_12x70_grizzly40"] = { Bodygroups = { {10, 8} } },
    ["eft_ammo_12x70_hpcopper"] = { Bodygroups = { {10, 9} } },
    ["eft_ammo_12x70_poleva3"] = { Bodygroups = { {10, 10} } },
    ["eft_ammo_12x70_poleva6u"] = { Bodygroups = { {10, 11} } },
    ["eft_ammo_12x70_superformance"] = { Bodygroups = { {10, 12} } },
    ["eft_ammo_12x70_slug"] = { Bodygroups = { {10, 13} } },
    ["eft_ammo_12x70_mixed_50bmg_p3"] = { Bodygroups = { {10, 14} } },
}


SWEP.Attachments = {
    {
        PrintName = "Barrel",
        Category = "eft_m3s90_barrel",
        Bone = "mod_magazine",
        Installed = "eft_m3s90_barrel_std",
        Pos = Vector(0, -10.98, 1.33),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Handguard",
        Category = "eft_m3s90_hg",
        Bone = "mod_handguard",
        Installed = "eft_m3s90_hg_std",
        Pos = Vector(0, -2, -1),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Mount",
        Category = "eft_m3s90_mount",
        Bone = "mod_mount",
        Installed = "eft_m3s90_mount_std",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Rear Sight",
        Category = "eft_m3s90_rs",
        Bone = "mod_sight_rear",
        Installed = "eft_m3s90_rs_std",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Ammunition",
        Category = {"eft_ammo_12x70"},
        Bone = "mod_magazine",
        Pos = Vector(0, -14, -3),
        Ang = Angle(0, 0, 0),
        Installed = "eft_ammo_12x70_7mm",
        Integral = "eft_ammo_12x70_7mm",
    },
    {
        PrintName = "Magazine",
        Category = "eft_m3s90_mag",
        Bone = "mod_magazine",
        Installed = "eft_m3s90_mag_5",
        Pos = Vector(0, 0.5, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Stock",
        Category = "eft_m3s90_stock",
        Bone = "mod_stock",
        Installed = "eft_m3s90_stock_std",
        SubAttachments = {
            {
                Installed = "eft_m3s90_pg_std"
            }
        },
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Charging Handle",
        Category = "eft_m3s90_charge",
        Bone = "mod_charge",
        Installed = "eft_m3s90_charge_std",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    
    {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_slot_m3s90"}, -- , "eft_ak_gp34"
        Bone = "mod_stock",
        Pos = Vector(0, -5, -4),
        Ang = Angle(0, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
        -- CosmeticOnly = true,
    },
}