AddCSLuaFile()

SWEP.Base = "arc9_base"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_sg")
SWEP.Credits = { 
    [ARC9:GetPhrase("eft_trivia_author") .. "1"] = "Darsu", 
    [ARC9:GetPhrase("eft_trivia_assets") .. "2"] = "Battlestate Games LTD", 
    [ARC9:GetPhrase("eft_trivia_help") .. "3"] = "Mal0", 
    [ARC9:GetPhrase("eft_trivia_arc9") .. "4"] = "Arctic",
}

SWEP.PrintName = "Benelli M3 Super 90"

SWEP.Class = "Dual-mode shotgun"
SWEP.Trivia = {
    [ARC9:GetPhrase("eft_trivia_manuf") .. "1"] = "Benelli Armi SpA",
    [ARC9:GetPhrase("eft_trivia_cal") .. "2"] = "12 gauge",
    [ARC9:GetPhrase("eft_trivia_act") .. "3"]= ARC9:GetPhrase("eft_trivia_act_recoil"),
    [ARC9:GetPhrase("eft_trivia_country") .. "4"] = ARC9:GetPhrase("eft_trivia_country_italy"),
    [ARC9:GetPhrase("eft_trivia_year") .. "5"] = "1990"
}

SWEP.Description = [[The Benelli M3 S90 is a dual-mode shotgun designed and manufactured by Benelli. The M3 is notable for allowing the user to choose between semi-automatic or pump-action operation. Benelli shotguns show excellent ballistic performance, and the finish and fine workmanship are the epitome of traditional Italian style.]]

-- SWEP.StandardPresets = {
--     "[308 Conversion]XQAAAQDgAgAAAAAAAAA9iIIiM7tuo1AtT00OeFDsVy0QjzPJ+n72/CiKtDlryAX9+6/kqhA7Hr1E/2D9Iz6rN8zTUCuQ+5Sp9lQY7qxUfunqrzbaeslGLj1cfug0NTlmGh3gA+wVZQA19whbS40jfVlj6uqIKtm8FZlaaIpJNHmek0HjPG94drKMnm1eLKJZln1zdAss1Q90n0VytUc4mj3lf8lEE2semdym9+SxGjHM01bSaBF/wcnHHwiusLCFbaQpe/jslG+Y7ojSHZTNEFqsqYb7KccG04jc/+gn2C2szNw="
-- }
    
SWEP.Slot = 3
SWEP.WorldModel = "models/weapons/w_shot_xm1014.mdl"
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_m3super90.mdl"
SWEP.ViewModelFOVBase = 62
SWEP.MirrorVMWM = true
SWEP.DefaultBodygroups = "00000000000000000"

SWEP.BarrelLength = 42
------------------------- [[[           STATS            ]]] -------------------------

--          Damage

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


--          Spread
SWEP.Spread = 18.22 * ARC9.MOAToAcc
SWEP.UseDispersion = true
SWEP.DispersionSpread = 0.005
SWEP.DispersionSpreadAddHipFire = 0.03
SWEP.DispersionSpreadMultMove = 1.5
SWEP.DispersionSpreadAddMove = 0.015

--          Recoil

SWEP.Recoil = 3 * 0.81

SWEP.RecoilMultHipFire = 1.1
SWEP.RecoilMultCrouch = 0.75
SWEP.RecoilAutoControlMultHipFire = 0.5

SWEP.RecoilUp = 5 * 0.85 -- patch 0.13.0.4.22617
SWEP.RecoilSide = 0.4
SWEP.RecoilRandomUp = 1.8
SWEP.RecoilRandomSide = 0.96

SWEP.ViewRecoil = false 
-- SWEP.ViewRecoil = false 
SWEP.ViewRecoilUpMult = 3 * 0.85 -- patch 0.13.0.4.22617
SWEP.ViewRecoilUpMultMultHipFire = 2
SWEP.ViewRecoilSideMult = -4
SWEP.ViewRecoilSideMultMultHipFire = -2

SWEP.RecoilDissipationRate = 11
SWEP.RecoilAutoControl = 10
SWEP.RecoilResetTime = 0.03
SWEP.RecoilFullResetTime = 0.15



SWEP.UseVisualRecoil = true 
SWEP.VisualRecoil = 1 * 0.81
SWEP.VisualRecoilMultHipFire = 0.3
SWEP.VisualRecoilMultSights = 0.3
SWEP.VisualRecoilMultCrouch = 0.5

SWEP.VisualRecoilCenter = Vector(2, 14, 2)
SWEP.VisualRecoilUp = 170 -- Vertical tilt
SWEP.VisualRecoilUpMultHipFire = 0.4
SWEP.VisualRecoilSide = 1.0 -- Horizontal tilt
SWEP.VisualRecoilRoll = 25 -- Roll tilt

SWEP.VisualRecoilPunch = 25 -- How far back visual recoil moves the gun
SWEP.VisualRecoilPunchSights = 100 -- How far back visual recoil moves the gun


SWEP.VisualRecoilSpringPunchDamping = 7
SWEP.VisualRecoilDampingConst = 250
SWEP.VisualRecoilSpringMagnitude = 2 / 1.67
SWEP.VisualRecoilPositionBumpUp = -0.00
SWEP.VisualRecoilPositionBumpUpRTScope = -0.09
SWEP.VisualRecoilPositionBumpUpHipFire = 0.02


-- SWEP.VisualRecoilThinkFunc = function(springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING, recamount)
--     if recamount > 2 then
--         recamount = math.Clamp((recamount - 2) / 6, 0, 1)
--         return springconstant * math.max(1, 10 * recamount) * 15, VisualRecoilSpringMagnitude * 1, PUNCH_DAMPING * 0.75
--     elseif recamount == 1 then
--         return springconstant * 50, VisualRecoilSpringMagnitude * 1, PUNCH_DAMPING * 1
--     end

--     return springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING
-- end


-- SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
--     if recamount > 2 then
--         recamount = 1.6 - math.Clamp((recamount - 2) / 3.5, 0, 1)
        
--         local fakerandom = 1 + (((69+recamount%5*CurTime()%3)*2420)%6)/10 
        
--         return up * recamount * fakerandom, side * 0.8, roll, punch * 0.5
--     elseif recamount == 1 then
--         return up * 2, side * 2, roll, punch
--     end

--     return up, side, roll, punch
-- end


SWEP.RecoilKick = 0
SWEP.RecoilKickDamping = 10



--          Heating

SWEP.Malfunction = true 
SWEP.MalfunctionNeverLastShoot = false 
SWEP.MalfunctionMeanShotsToFail = 1.5 * 250
SWEP.MalfunctionMeanShotsToFailMultHot = -0.1
SWEP.Overheat = true
SWEP.HeatCapacity = 30
SWEP.HeatDissipation = 0.5
SWEP.HeatPerShot = 1
SWEP.HeatLockout = false


--          Firemodes

SWEP.RPM = 300

SWEP.SuppressEmptySuffix = false 
SWEP.NoFiremodeWhenEmpty = true 

SWEP.Firemodes = {
    { Mode = 1, PrintName = "Pump-action", EFTSingleAction = true, ManualAction = true, SuppressEmptySuffix = true, NoShellEject = true, RPM = 999, SlamFire = true, RecoilUpMult = 0.7 },
    { Mode = 1, PrintName = "Semi auto"  },
}

--          Speed

SWEP.AimDownSightsTime = 0.33
SWEP.SprintToFireTime = 0.35

SWEP.SpeedMult = 0.95
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 0.7
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1


--          Other

SWEP.FreeAimRadius = 2
SWEP.FreeAimRadiusSights = 0

SWEP.Sway = 1
SWEP.SwayMove = 0.5
SWEP.SwayMidAir = 10
SWEP.SwayMultCrouch = 0.75
SWEP.SwayMultHipFire = 0.2
SWEP.SwayMultSights = 0.25
SWEP.HoldBreathTime = 40
SWEP.RestoreBreathTime = 30
SWEP.BreathInSound = false 
SWEP.BreathOutSound = false
SWEP.BreathRunOutSound = "arc9_eft_shared/bear3_breath_sprint.wav"

--          Generic stats

SWEP.Ammo = "Buckshot"
SWEP.ChamberSize = 0 -- no mag
SWEP.ClipSize = 0 -- actual chamber (no mag)
SWEP.SupplyLimit = 4
SWEP.SecondarySupplyLimit = 4
SWEP.ReloadInSights = true
SWEP.DropMagazineSounds = {}
SWEP.DropMagazineAmount = 0
SWEP.Bash = false
SWEP.PrimaryBash = false
SWEP.TracerNum = 0
SWEP.TracerColor = Color(255, 225, 200)



------------------------- [[[           Other            ]]] -------------------------

--          Positions and offsets

SWEP.IronSights = {
    Pos = Vector(-4.27, -6, 0.567),
    Ang = Angle(0, 0.06, 0),
    Midpoint = { Pos = Vector(-1, 0, 8), Ang = Angle(0, 0, -145) },
    Magnification = 1.1,
    ViewModelFOV = 54
}

SWEP.ActivePos = Vector(-0.5, -3.2, -0.5)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintAng = Angle(50, 10, -45)
SWEP.SprintPos = Vector(4, -5, 0)

SWEP.NearWallAng = Angle(0, 55, 0)
SWEP.NearWallPos = Vector(0, 0, -15)

SWEP.CrouchPos = Vector(-0.7, -3.8, .35)
SWEP.CrouchAng = Angle(0, 0, -1)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(20.5, 30, 4)
SWEP.CustomizeSnapshotFOV = 100


--          Third person stuff

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "physgun"

SWEP.WorldModelOffset = {
    Pos = Vector(-7.8, 5.5, -5),
    Ang = Angle(-7, 0, 180),
    -- TPIKPos = Vector(-3.5, 6, -3), -- rpg ghhh     good for reload but awful on crouch
    TPIKPos = Vector(-7, 5, 0), -- rpg
    TPIKAng = Angle(-11.5, 0, 180),
    Scale = 1
}

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

--          Effects

SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)
SWEP.CamQCA_Mult = 1
SWEP.CamQCA_Mult_ADS = 0.1


SWEP.MuzzleParticle = "muzzleflash_M3"
SWEP.AfterShotParticle = "barrel_smoke"

SWEP.CaseEffectQCA = 2
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/patron_12x70_shell.mdl"
SWEP.ShellScale = 1
SWEP.ShellCorrectAng = Angle(0, 180, 180)
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.EjectDelay = 0.05

-- SWEP.BulletBones = {
--     [1] = "bullet001",
--     [2] = "bullet002",
--     [3] = "bullet003",
--     [4] = "bullet004",
--     [5] = "bullet005",
-- }




------------------------- [[[           Sounds            ]]] -------------------------

local path = "weapons/darsu_eft/m3s90/"

SWEP.ShootPitchVariation = 0
SWEP.DistantShootVolume = 0.05
SWEP.DistantShootVolumeActual = 0.05

SWEP.ShootSound = path .. "m3_fire_outdoor_close.wav"
SWEP.ShootSoundIndoor = path .. "m3_fire_indoor_close.wav"
SWEP.DistantShootSound = path .. "m3_fire_outdoor_distant.wav"
SWEP.DistantShootSoundIndoor = path .. "m3_fire_indoor_distant.wav"

SWEP.ShootSoundSilenced = path .. "m3_fire_outdoor_silenced_close.wav"
SWEP.ShootSoundSilencedIndoor = path .. "m3_fire_indoor_silenced_close.wav"
SWEP.DistantShootSoundSilenced = path .. "m3_fire_outdoor_silenced_distant.wav"
SWEP.DistantShootSoundSilencedIndoor = path .. "m3_fire_indoor_silenced_distant.wav"

SWEP.FiremodeSound = "" -- we will have own in sound tables
SWEP.ToggleAttSound = "" -- we will have own in sound tables
SWEP.DryFireSound = "" -- we will have own in sound tables


SWEP.EnterSightsSound = "arc9_eft_shared/weap_in.wav"
SWEP.ExitSightsSound = "arc9_eft_shared/weap_handoff.wav"



------------------------- [[[           Hooks & functions            ]]] -------------------------


------------------------- [[[           Animations            ]]] -------------------------

-- SWEP.ReloadHideBoneTables = {
--     [1] = {
--         "mod_magazine",
--         "bullet1",
--         "bullet2",
--         "bullet3",
--         "bullet4",
--     },
-- }

SWEP.ShotgunReload = true
-- SWEP.ShellVelocity = 0
SWEP.ManualActionNoLastCycle = false
SWEP.ManualActionEjectAnyway = false

local infitieammoconvar = GetConVar("arc9_infinite_ammo")

SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()
    
    if !IsValid(swep:GetOwner()) then return end

    local clip = swep:Clip1()
    local empty = swep:Clip1() == 0
    local maxclip = swep:GetMaxClip1()
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

                anim = "mag_check"
            end
        elseif rand == 1 then
            anim = "look"
        end
        
        return empty and anim .. "_empty" or anim
    end
    
    
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

            if sa then 
                return "pa_ammo_in_first" 
            else
                return "sa_ammo_in_first_catch" 
            end
        end

        if maxclip - clip < 3 or reserve < 5 then
            swep.onebyonestart = true
            return "reload_start"
        end

        return "fistful_start"

    elseif anim == "reload_insert" then
        if swep.onebyonestart then return "reload_in_loop" end
        if swep.onebyonestart2 then swep.onebyonestart2 = nil swep.onebyonestart = true return "reload_in_loop3" end
        
        swep.roundcount = swep.roundcount + 1

        if swep.roundcount == 5 then 
            if maxclip == clip then return "fistful5" end
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
            timer.Simple(0.5, function()
                net.Start("arc9eftjam")
                net.WriteUInt(rand, 3)
                net.Send(swep:GetOwner())
            end)
        end

        return "jam_" .. rand .. (sa and "" or "_sa")
    end

    return anim
end


local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.wav","arc9_eft_shared/weapon_generic_rifle_spin2.wav","arc9_eft_shared/weapon_generic_rifle_spin3.wav","arc9_eft_shared/weapon_generic_rifle_spin4.wav","arc9_eft_shared/weapon_generic_rifle_spin5.wav","arc9_eft_shared/weapon_generic_rifle_spin6.wav","arc9_eft_shared/weapon_generic_rifle_spin7.wav","arc9_eft_shared/weapon_generic_rifle_spin8.wav","arc9_eft_shared/weapon_generic_rifle_spin9.wav","arc9_eft_shared/weapon_generic_rifle_spin10.wav"}
local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.wav","arc9_eft_shared/generic_mag_pouch_in2.wav","arc9_eft_shared/generic_mag_pouch_in3.wav","arc9_eft_shared/generic_mag_pouch_in4.wav","arc9_eft_shared/generic_mag_pouch_in5.wav","arc9_eft_shared/generic_mag_pouch_in6.wav","arc9_eft_shared/generic_mag_pouch_in7.wav"}
local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.wav","arc9_eft_shared/generic_mag_pouch_out2.wav","arc9_eft_shared/generic_mag_pouch_out3.wav","arc9_eft_shared/generic_mag_pouch_out4.wav","arc9_eft_shared/generic_mag_pouch_out5.wav","arc9_eft_shared/generic_mag_pouch_out6.wav","arc9_eft_shared/generic_mag_pouch_out7.wav"}
local switchi = { { s = {"arc9_eft_shared/weapon_light_switcher1.wav", "arc9_eft_shared/weapon_light_switcher2.wav", "arc9_eft_shared/weapon_light_switcher3.wav"}, t = 0 } }
local shell_in = {path .. "m3_shell_in1.wav", path .. "m3_shell_in2.wav", path .. "m3_shell_in3.wav"}

local readypa = {
    { s = randspin, t = 0 },
    { s = path .. "m3_pump_in.wav", t = 0.56 },
    { s = path .. "m3_pump_out.wav", t = 0.73 },
    { s = randspin, t = 0.99 },
}
local readysa = {
    { s = randspin, t = 0 },
    { s = path .. "m3_bolt_in.wav", t = 0.52 },
    { s = path .. "m3_bolt_out.wav", t = 0.72 },
    { s = randspin, t = 0.81 },
}

local cycle = {
    { s = path .. "m3_pump_in.wav", t = 0.01 },
    { s = path .. "m3_pump_out.wav", t = 0.25 },
}

local look = {
    { s = randspin, t = 0.05 },
    { s = randspin, t = 1.26 },
    { s = randspin, t = 2.54 },
}

local magcheck = {
    { s = randspin, t = 0.1 },
    { s = path .. "mr133_magcover.wav", t = 0.36 },
    { s = path .. "mr133_magcover.wav", t = 0.92 },
    { s = randspin, t = 1.09 },
}

local checkchamber_pa = {
    { s = randspin, t = 0.05 },
    { s = path .. "m3_pump_in_check.wav", t = 0.34 },
    { s = path .. "m3_pump_out_check.wav", t = 1.19 },
    { s = randspin, t = 1.36 },
}
local checkchamber_sa = {
    { s = randspin, t = 0.05 },
    { s = path .. "m3_bolt_in_check.wav", t = 0.72 },
    { s = path .. "m3_bolt_out_check.wav", t = 1.24 },
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

local drawa = { { s = path .. "mr133_draw.wav", t = 0 } }
local holstera = { { s = path .. "mr133_holster.wav", t = 0 } }

SWEP.Animations = {
    ["idle"] = { Source = "idle", Time = 1111 }, -- remove TIME !!!!!!
    ["idle_empty"] = { Source = "idle_empty" },

    ["ready"] = { Source = {"ready0_sa","ready1_sa","ready2_sa"}, EventTable = readypa },
    ["ready_sa"] = { Source = {"ready0_pa","ready1_pa","ready2_pa"}, EventTable = readysa },

    ["draw"] = { Source = "draw", EventTable = drawa },
    ["holster"] = { Source = "holster", EventTable = holstera },
    ["draw_empty"] = { Source = "draw_empty", EventTable = drawa },
    ["holster_empty"] = { Source = "holster_empty", EventTable = holstera },

    ["fire_sa"] = { Source = "fire", EventTable = { { s = path .. "m3_hammer_release.wav", t = 0 } } },
    ["fire"] = { Source = "fire_sa", EventTable = { { s = path .. "m3_hammer_release.wav", t = 0 } }, NoIdle = true },
    ["fire_empty"] = { Source = "fire_salast", EventTable = { { s = path .. "m3_hammer_release.wav", t = 0 } }, NoIdle = true },

    ["dryfire"] = { Source = "dryfire", EventTable = { { s = path .. "pm_trigger_empty.wav", t = 0 } } },
    ["dryfire_empty"] = { Source = "dryfire_empty", EventTable = { { s = path .. "pm_trigger_empty.wav", t = 0 } } },

    ["cycle"] = { Source = {"pump0","pump1","pump2"}, EventTable = cycle, Mult = 0.8 },
    -- ["cycle"] = { Source = "pumpfast", EventTable = cycle, Mult = 1 },

    ["look"] = { Source = "look", MinProgress = 0.95, FireASAP = true, EventTable = look },
    ["look_empty"] = { Source = "look_empty", MinProgress = 0.95, FireASAP = true, EventTable = look },

    ["mag_check"] = { Source = "magcheck", MinProgress = 0.95, FireASAP = true, EventTable = magcheck },
    ["mag_check_empty"] = { Source = "magcheck_empty", MinProgress = 0.95, FireASAP = true, EventTable = magcheck },

    ["checkchamber_pa"] = { Source = "checkchamber_pa", MinProgress = 0.95, FireASAP = true, EventTable = checkchamber_pa },
    ["checkchamber_pa_empty"] = { Source = "checkchamber_pa", MinProgress = 0.95, FireASAP = true, EventTable = checkchamber_pa },
    ["checkchamber_sa"] = { Source = "checkchamber_sa", MinProgress = 0.95, FireASAP = true, EventTable = checkchamber_sa },
    ["checkchamber_sa_empty"] = { Source = "checkchamber_sa_empty", MinProgress = 0.95, FireASAP = true, EventTable = checkchamber_sa_empty },

    ["toggle"] = {        Source = "mod_switch", EventTable = switchi },
    ["switchsights"] = {  Source = "mod_switch", EventTable = switchi },
    ["toggle_empty"] = {        Source = "mod_switch_empty", EventTable = switchi },
    ["switchsights_empty"] = {  Source = "mod_switch_empty", EventTable = switchi },

    ["firemode_1"] = { Source = "sa_to_pa", EventTable = { { s = path .. "m3_switch_to_pa.wav", t = 0.22 } } },
    ["firemode_2"] = { Source = "pa_to_sa", EventTable = { { s = path .. "m3_switch_to_sa.wav", t = 0.22 } } },
    ["firemode_1_empty"] = { Source = "sa_to_pa_empty", EventTable = cock }, -- disallow swtiching firemodes while empty !! ! 
    ["firemode_2_empty"] = { Source = "pa_to_sa_empty", EventTable = cock },

    
    ["sa_ammo_in_first_catch"] = { Source = "sa_ammo_in_first_catch", RestoreAmmo = 1, Mult = 0.85, EventTable = { 
        { s = randspin, t = 0.1 },
        { s = path .. "mr133_shell_pickup.wav", t = 0.64 },
        { s = path .. "m3_shell_in_first.wav", t = 1.02 },
        { s = path .. "m3_bolt_release_button.wav", t = 1.43 },
        { s = path .. "m3_bolt_out.wav", t = 1.52 },
        { s = randspin, t = 1.83 },
    }},
    ["pa_ammo_in_first"] = { Source = {"pa_ammo_in_first_0", "pa_ammo_in_first_0", "pa_ammo_in_first_1", "pa_ammo_in_first_2"}, Mult = 0.85, RestoreAmmo = 1, EventTable = { 
        { s = path .. "m3_pump_in.wav", t = 0.06 },
        { s = randspin, t = 0.32 },
        { s = path .. "mr133_shell_pickup.wav", t = 0.72 },
        { s = path .. "m3_shell_in_first.wav", t = 1.08 },
        { s = path .. "m3_bolt_release_button.wav", t = 1.39 },
        { s = path .. "m3_bolt_out.wav", t = 1.48 },
        { s = randspin, t = 1.67 },
    }},
    ["reload_start"] = { Source = "reload_start", RestoreAmmo = 1, Mult = 0.9, EventTable = {
        { s = randspin, t = 0.03 },
        { s = path .. "mr133_shell_pickup.wav", t = 0.46 },
        { s = path .. "mr133_magcover.wav", t = 0.88 },
        { s = shell_in, t = 1 },
    }},
    ["reload_in_loop"] = { Source = "reload_in_loop", Mult = 0.9, EventTable = {
        { s = path .. "mr133_shell_pickup.wav", t = 0.42 },
        { s = path .. "mr133_magcover.wav", t = 0.76 },
        { s = shell_in, t = 0.87 },
    }},
    ["reload_in_loop3"] = { Source = "reload_in_loop3", Mult = 0.9, EventTable = {
        { s = path .. "mr133_shell_pickup.wav", t = 0.04 },
        { s = path .. "mr133_magcover.wav", t = 0.31 },
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
        -- { s = path .. "mr133_shell_pickup.wav", t = 0.05 },
        { s = pouchout, t = 0.05 },
        { s = randspin, t = 0.1 },
        { s = path .. "mr133_magcover.wav", t = 0.45 },
        { s = shell_in, t = 0.64 },
    }},
    ["fistful2"] = { Source = "fistful2", Mult = 0.9, EventTable = {
        { s = path .. "mr133_shell_pickup.wav", t = 0.08 },
        { s = path .. "mr133_magcover.wav", t = 0.29 },
        { s = shell_in, t = 0.48 },
    }},
    ["fistful3"] = { Source = "fistful3", Mult = 0.9, EventTable = {
        { s = path .. "mr133_shell_pickup.wav", t = 0.05 },
        { s = path .. "mr133_magcover.wav", t = 0.21 },
        { s = shell_in, t = 0.44 },
    }},
    ["fistful4"] = { Source = "fistful4", Mult = 0.9, EventTable = {
        { s = path .. "mr133_shell_pickup.wav", t = 0.04 },
        { s = path .. "mr133_magcover.wav", t = 0.21 },
        { s = shell_in, t = 0.39 },
    }},
    ["fistful5"] = { Source = "fistful5", Mult = 0.9, EventTable = {
        { s = path .. "mr133_magcover.wav", t = 0.31 },
        { s = shell_in, t = 0.52 },
    }},
    ["fistful5next"] = { Source = "fistful5next", Mult = 0.9, EventTable = {
        { s = path .. "mr133_magcover.wav", t = 0.31 },
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


    ["jam_1_sa"] = {
        Source = "jam_shell_sa", -- jam shell
        EventTable = {
            { s = randspin, t = 0.1 },
            { s = randspin, t = 0.83 },
            { s = randspin, t = 1.22 },
            { s = path .. "mr133_shell_pickup.wav", t = 1.64 },
            { s = path .. "pump_jam_shell_out1.wav", t = 2.29},
            { s = randspin, t = 2.61 },
            { s = path .. "m3_bolt_in_check.wav", t = 2.98 },
            { s = path .. "m3_bolt_out.wav", t = 3.36 },
            { s = randspin, t = 3.6 },
        },
    },
    ["jam_2_sa"] = {
        Source = "jam_feed_sa", -- jam feed
        EventTable = {
            { s = randspin, t = 0.1 },
            { s = randspin, t = 0.83 },
            { s = randspin, t = 1.27 },
            { s = path .. "pump_jam_slidelock_grab2.wav", t = 1.6 },
            { s = path .. "ak_jam_stuckbolt_in1.wav", t = 1.88 },
            { s = path .. "m3_bolt_in_check.wav", t = 2.32 },
            { s = randspin, t = 2.74 },
            { s = randspin, t = 2.98 },
            { s = path .. "pump_jam_shell_out2.wav", t = 3.01 },
            { s = randspin, t = 3.3 },
            { s = randspin, t = 3.6 },
            { s = randspin, t = 3.94 },
            { s = path .. "m3_bolt_out_check.wav", t = 4.29 },
            { s = path .. "m3_bolt_in.wav", t = 4.52 },
            { s = path .. "m3_bolt_out.wav", t = 4.87 },
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
            { s = path .. "pump_jam_slidelock_grab2.wav", t = 1.53 },
            { s = path .. "ak_jam_stuckbolt_in_starting.wav", t = 1.7 },
            { s = path .. "ak_jam_stuckbolt_in1.wav", t = 1.83 },
            { s = path .. "ak_jam_stuckbolt_in2.wav", t = 2.29 },
            { s = randspin, t = 2.7 },
            { s = path .. "pump_jam_slidelock_grab2.wav", t = 3.54 },
            { s = path .. "ak_jam_stuckbolt_in_starting.wav", t = 4.03 },
            { s = path .. "m3_bolt_in_check.wav", t = 4.31 },
            { s = path .. "pump_jam_shell_out2.wav", t = 4.45 },
            { s = path .. "m3_bolt_out.wav", t = 4.7 },
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
            { s = path .. "pump_jam_slidelock_grab2.wav", t = 1.85 },
            { s = path .. "ak_jam_stuckbolt_in1.wav", t = 1.97 },
            { s = path .. "ak_jam_stuckbolt_in2.wav", t = 2.4 },
            { s = path .. "ak_jam_stuckbolt_in_starting.wav", t = 2.82 },
            { s = path .. "m3_bolt_in_check.wav", t = 3.17 },
            { s = path .. "pump_jam_shell_out2.wav", t = 3.34 },
            { s = path .. "m3_bolt_out.wav", t = 3.56 },
            { s = randspin, t = 3.87 },
        },
        EjectAt = 3.34
    },

    
    ["jam_1"] = {
        Source = "jam_shell_pa", -- jam shell
        EventTable = {
            { s = path .. "m3_pump_in.wav", t = 0.01 },
            { s = path .. "m3_pump_out_check.wav", t = 0.25 },
            { s = randspin, t = 0.7 },
            { s = randspin, t = 1.42 },

            { s = randspin, t = 1.86 },
            { s = path .. "pump_jam_slidelock_try2.wav", t = 2.29 },
            { s = path .. "pump_jam_shell_out1.wav", t = 2.3},
            { s = path .. "pump_jam_slidelock_try1.wav", t = 2.44 },
            { s = path .. "pump_jam_slidelock_try4.wav", t = 2.64 },
            { s = randspin, t = 2.88 },
            { s = path .. "m3_pump_in.wav", t = 3.4 },
            { s = path .. "m3_pump_out.wav", t = 3.69 },
            { s = randspin, t = 3.99 },
        },
    },
    ["jam_2"] = {
        Source = "jam_feed_pa", -- jam feed
        EventTable = {
            { s = path .. "m3_pump_in.wav", t = 0.01 },
            { s = path .. "pump_jam_slidelock_try1.wav", t = 0.25 },
            { s = randspin, t = 0.7 },
            { s = randspin, t = 1.42 },

            { s = path .. "m3_pump_in_check.wav", t = 1.84 },
            { s = randspin, t = 2.22 },
            { s = path .. "pump_jam_shell_out1.wav", t = 2.76 },
            { s = path .. "pump_jam_shell_out2.wav", t = 3.35 },
            { s = randspin, t = 3.8 },
            { s = path .. "m3_pump_out.wav", t = 4.03 },
            { s = path .. "m3_pump_in.wav", t = 4.31 },
            { s = path .. "m3_pump_out.wav", t = 4.67 },
            { s = randspin, t = 4.95 },
        },
    },
    ["jam_3"] = {
        Source = "jam_hardslide_pa", -- jam hard
        EventTable = {
            { s = path .. "pump_jam_slidelock_try4.wav", t = 0.01 },
            { s = randspin, t = 0.7 },
            { s = randspin, t = 1.42 },

            { s = randspin, t = 1.94 },
            { s = path .. "pump_jam_slidelock_try1.wav", t = 2.34 },
            { s = path .. "pump_jam_slidelock_try2.wav", t = 2.79 },
            { s = path .. "pump_jam_slidelock_try4.wav", t = 3.52 },
            { s = path .. "pump_jam_slidelock_try3.wav", t = 4.28 },
            { s = path .. "m3_pump_in.wav", t = 4.45 },
            { s = path .. "pump_jam_shell_out2.wav", t = 4.62 },
            { s = path .. "m3_pump_out.wav", t = 4.84 },
            { s = randspin, t = 5.15 },
        },
        EjectAt = 4.62
    },
    ["jam_4"] = {
        Source = "jam_softslide_pa", -- jam soft
        EventTable = {
            { s = path .. "pump_jam_slidelock_try4.wav", t = 0.01 },
            { s = path .. "pump_jam_slidelock_try1.wav", t = 0.25 },
            { s = randspin, t = 0.7 },
            { s = randspin, t = 1.42 },

            { s = randspin, t = 1.82 },
            { s = path .. "pump_jam_slidelock_try1.wav", t = 2.29 },
            { s = path .. "pump_jam_slidelock_try2.wav", t = 2.84 },
            { s = path .. "pump_jam_slidelock_try3.wav", t = 3.24 },
            { s = path .. "m3_pump_in.wav", t = 3.4 },
            { s = path .. "pump_jam_shell_out2.wav", t = 3.55 },
            { s = path .. "m3_pump_out.wav", t = 3.84 },
            { s = randspin, t = 4.11 },
        },
        EjectAt = 3.55
    },

}

------------------------- [[[           Attachments            ]]] -------------------------

SWEP.missingpartsnotifsent = 0

function SWEP:HookP_BlockFire()
    if  !self:GetValue("HasMag") or 
        !self:GetValue("HasBolt") or
        !self:GetValue("HasGrip") or
        !self:GetValue("HasHG") or
        !self:GetValue("HasBarrel") or
        !self:GetValue("HasAmmoooooooo") then
            if self.missingpartsnotifsent < CurTime() then
                self.missingpartsnotifsent = CurTime() + 3
                net.Start("arc9eftmissingparts")
                net.Send(self:GetOwner())
            end
            return true 
    end
end

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

SWEP.EFTErgo = 42
if ARC9EFTBASE then
    SWEP.AimDownSightsTimeHook = ARC9EFT.ErgoHook or nil
    SWEP.HoldBreathTimeHook = ARC9EFT.ErgoBreathHook or nil
    SWEP.HookP_TranslateSound = ARC9EFT.ErgoAdsVolume or nil
    SWEP.SpreadHook = ARC9EFT.SpreadBonus or nil
else
    print("Dum! install arc9 eft shared!!!!!!!!!!!!!!")
end
SWEP.AimDownSightsTimeMultShooting = 4

SWEP.RicochetSounds = ARC9EFT.RicochetSounds
SWEP.ShellSounds = ARC9EFT.Shells12cal