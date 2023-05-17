local ATT = {}


///////////////////////////////////////      eft_m3s90_barrel_std

ATT = {}

ATT.PrintName = "Benelli M3 Super 90 12ga 500mm barrel"
ATT.CompactName = "M3 500mm"
ATT.Icon = Material("entities/eft_m3s90_attachments/bar.png", "mips smooth")
ATT.Description = [[A 500mm barrel for the Benelli M3 S90 12 gauge shotgun.]]

ATT.HasBarrel = true 

ATT.EFTErgoAdd = -8
ATT.CustomCons = { Ergonomics = "-8" }
ATT.RecoilMult = 0.93
ATT.VisualRecoilMult = 0.93

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m3s90_barrel"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = "eft_12ga_muzzle",
        Pos = Vector(-19.2, 0, 0.12),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(1, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_m3s90_barrel_std")

///////////////////////////////////////      eft_m3s90_hg_std

ATT = {}

ATT.PrintName = "Benelli M3 forend"
ATT.CompactName = "M3 std"
ATT.Icon = Material("entities/eft_m3s90_attachments/hg.png", "mips smooth")
ATT.Description = [[Benelli M3 black synthetic forend with firing mode switch is constructed from polymer with grooved checkering for an easy grip, manufactured by Benelli.]]

ATT.HasHG = true 

ATT.EFTErgoAdd = 8
ATT.CustomPros = { Ergonomics = "+8" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m3s90_hg"}

ARC9.LoadAttachment(ATT, "eft_m3s90_hg_std")

///////////////////////////////////////      eft_m3s90_stock_std

ATT = {}

ATT.PrintName = "Benelli M3 telescopic stock"
ATT.CompactName = "M3 tel."
ATT.Icon = Material("entities/eft_m3s90_attachments/stcok.png", "mips smooth")
ATT.Description = [[An adjustable stock for M3 S90 shotguns, manufactured by Benelli.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m3s90_stock"}


ATT.EFTErgoAdd = 10
ATT.CustomPros = { Ergonomics = "+10", ["Recoil while extended"] = "-30%" }

-- ATT.RecoilMult = 0.62
-- ATT.VisualRecoilMult = 0.62
ATT.ActivateElements = {"eft_m3s90_stock_unfolded"}
ATT.Attachments = {
    {
        PrintName = "Pistol grip",
        Category = "eft_m3s90_pg",
        Pos = Vector(1, 0, 3),
        Ang = Angle(0, -90, 0),
    },
}
ATT.ToggleStats = {
    {
        PrintName = "Extended",
        RecoilMult = 0.7,
        VisualRecoilMult = 0.7,
    },
    {
        PrintName = "Folded",
        -- CustomizePos = Vector(21, 25, 2),
        ActivateElements = {"eft_m3s90_stock_folded"}
    },
}

ARC9.LoadAttachment(ATT, "eft_m3s90_stock_std")

///////////////////////////////////////      eft_m3s90_pg_std

ATT = {}

ATT.PrintName = "Benelli M3 telescopic stock pistol grip"
ATT.CompactName = "M3 PGrip"
ATT.Icon = Material("entities/eft_m3s90_attachments/pg.png", "mips smooth")
ATT.Description = [[A special pistol grip for M3 telescopic stocks manufactured by Benelli.]]

ATT.HasGrip = true 

ATT.EFTErgoAdd = 10
ATT.CustomPros = { Ergonomics = "+10" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m3s90_pg"}

ARC9.LoadAttachment(ATT, "eft_m3s90_pg_std")

///////////////////////////////////////      eft_m3s90_stock_urba

ATT = {}

ATT.PrintName = "Benelli M3 Mesa Tactical Urbino stock"
ATT.CompactName = "M3 Urbino"
ATT.Icon = Material("entities/eft_m3s90_attachments/urbandecay.png", "mips smooth")
ATT.Description = [[The Urbino fixed-length stock with a pistol grip for the Benelli M3 S90 shotgun manufactured by Mesa Tactical.]]

ATT.HasGrip = true 

ATT.EFTErgoAdd = 6
ATT.CustomPros = { Ergonomics = "+6" }
ATT.RecoilMult = 0.65
ATT.VisualRecoilMult = 0.65

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m3s90_stock"}

ARC9.LoadAttachment(ATT, "eft_m3s90_stock_urba")

///////////////////////////////////////      eft_m3s90_charge_std

ATT = {}

ATT.PrintName = "Benelli M3 Super 90 charging handle"
ATT.CompactName = "M3"
ATT.Icon = Material("entities/eft_m3s90_attachments/ch.png", "mips smooth")
ATT.Description = [[A standard charging handle for Benelli M3 S90. Simplifies bolt handling.]]

ATT.HasBolt = true 

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m3s90_charge"}

ARC9.LoadAttachment(ATT, "eft_m3s90_charge_std")

///////////////////////////////////////      eft_m3s90_rs_std

ATT = {}

ATT.PrintName = "Benelli M3 Ghost Ring rear sight"
ATT.CompactName = "M3 GR"
ATT.Icon = Material("entities/eft_m3s90_attachments/rs.png", "mips smooth")
ATT.Description = [[A Ghost Ring type rear sight for M3 S90 shotguns, manufactured by Benelli.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m3s90_rs"}

ARC9.LoadAttachment(ATT, "eft_m3s90_rs_std")

///////////////////////////////////////      eft_m3s90_mount_std

ATT = {}

ATT.PrintName = "Benelli M3 Super 90 upper receiver top rail"
ATT.CompactName = "M3 top"
ATT.Icon = Material("entities/eft_m3s90_attachments/rail.png", "mips smooth")
ATT.Description = [[The Benelli M3 top rail allows installation of additional equipment on the Benelli M3 S90.]]

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m3s90_mount"}
ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = {"eft_optic_large_nosniper", "eft_optic_medium", "eft_optic_small"},
        Pos = Vector(0, 0, -0.3),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0.75),
    },
}

ARC9.LoadAttachment(ATT, "eft_m3s90_mount_std")


///////////////////////////////////////      eft_m3s90_mag_5

ATT = {}

ATT.PrintName = "Benelli M3 Super 90 12ga 5-shell magazine cap"
ATT.CompactName = "M3x5"
ATT.Icon = Material("entities/eft_m3s90_attachments/5.png", "mips smooth")
ATT.Description = [[A 12ga 5-shell capacity tube magazine cap by Benelli, for M3 S90 shotguns.]]

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m3s90_mag"}

ATT.HasMag = true 

ATT.ClipSize = 5
ATT.ChamberSize = 1

ATT.MalfunctionMeanShotsToFailMult = 0.992

ARC9.LoadAttachment(ATT, "eft_m3s90_mag_5")

///////////////////////////////////////      eft_m3s90_mag_7

ATT = {}

ATT.PrintName = "Benelli M3 Super 90 12ga 7-shell magazine"
ATT.CompactName = "M3x7"
ATT.Icon = Material("entities/eft_m3s90_attachments/7.png", "mips smooth")
ATT.Description = [[A 7-shell capacity tube magazine for Benelli M3 S90 12ga.]]

ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }

ATT.SortOrder = 2
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m3s90_mag"}

ATT.ActivateElements = {"magclamp"}
ATT.HasMag = true 

ATT.ClipSize = 7
ATT.ChamberSize = 1

ATT.MalfunctionMeanShotsToFailMult = 0.99

ARC9.LoadAttachment(ATT, "eft_m3s90_mag_7")

///////////////////////////////////////      eft_m3s90_mag_9

ATT = {}

ATT.PrintName = "Benelli M3 Super 90 12ga Toni System 9-shell magazine"
ATT.CompactName = "M3x9"
ATT.Icon = Material("entities/eft_m3s90_attachments/9.png", "mips smooth")
ATT.Description = [[A 12ga 9-shell capacity tube magazine by Toni System for Benelli M3 S90 shotguns.]]

ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }

ATT.SortOrder = 3
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m3s90_mag"}
ATT.BarrelLengthAdd = 6

ATT.ActivateElements = {"magclamp"}
ATT.HasMag = true 

ATT.ClipSize = 9
ATT.ChamberSize = 1

ATT.MalfunctionMeanShotsToFailMult = 0.989

ATT.ExcludeElements = {"eft_muzzle_12g_salvo", "eft_muzzle_12g_hexasup", "eft_muzzle_12g_gk02"}

ARC9.LoadAttachment(ATT, "eft_m3s90_mag_9")

///////////////////////////////////////      eft_m3s90_mag_11

ATT = {}

ATT.PrintName = "Benelli M3 Super 90 12ga Toni System 11-shell magazine"
ATT.CompactName = "M3x11"
ATT.Icon = Material("entities/eft_m3s90_attachments/11.png", "mips smooth")
ATT.Description = [[A 12ga 11-shell capacity tube magazine by Toni System for Benelli M3 S90 shotguns.]]

ATT.EFTErgoAdd = -3
ATT.CustomCons = { Ergonomics = "-3" }

ATT.SortOrder = 4
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m3s90_mag"}
ATT.BarrelLengthAdd = 10

ATT.ActivateElements = {"magclamp"}
ATT.HasMag = true 

ATT.ClipSize = 11
ATT.ChamberSize = 1

ATT.MalfunctionMeanShotsToFailMult = 0.988

ATT.ExcludeElements = {"eft_muzzle_12g_salvo", "eft_muzzle_12g_hexasup", "eft_muzzle_12g_gk02"}

ARC9.LoadAttachment(ATT, "eft_m3s90_mag_11")

///////////////////////////////////////      eft_m3s90_mag_13

ATT = {}

ATT.PrintName = "Benelli M3 Super 90 12ga Toni System 13-shell magazine"
ATT.CompactName = "M3x13"
ATT.Icon = Material("entities/eft_m3s90_attachments/13.png", "mips smooth")
ATT.Description = [[A 12ga 13-shell capacity tube magazine by Toni System for Benelli M3 S90 shotguns.]]

ATT.EFTErgoAdd = -4
ATT.CustomCons = { Ergonomics = "-4" }

ATT.SortOrder = 5
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m3s90_mag"}
ATT.BarrelLengthAdd = 14

ATT.ActivateElements = {"magclamp"}
ATT.HasMag = true 

ATT.ClipSize = 13
ATT.ChamberSize = 1

ATT.MalfunctionMeanShotsToFailMult = 0.987

ATT.ExcludeElements = {"eft_muzzle_12g_salvo", "eft_muzzle_12g_hexasup", "eft_muzzle_12g_gk02"}

ARC9.LoadAttachment(ATT, "eft_m3s90_mag_13")


///////////////////////////////////////      eft_m3s90_jonnwick

ATT = {}

ATT.PrintName = "Quad shell loading (like john wick!!)"
ATT.CompactName = "Quad Load"
ATT.Icon = Material("entities/eft_m3s90_attachments/quad.png", "mips smooth")
ATT.Description = [[Make operator load shells by two at time. Pretty tactical. But also pretty cheaty as that technique is really fast lol compared to default reload.

Those animations were in files, but left unused, same for reloads with 5 shells in palm. They are way cooler than what currently used in tarkov!
Not presents in EFT, custom att.]]

ATT.SortOrder = -11
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_custom_slot_m3s90"}
ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot", "eft_custom_slot_m3s90"},
    },
}

ARC9.LoadAttachment(ATT, "eft_m3s90_jonnwick")