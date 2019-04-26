state("fceux")
{
    byte level:         0x3B1388, 0x0010;
    byte start:         0x3B1388, 0x03B5;
    byte start2:        0x3B1388, 0x03B6;
    byte complete:      0x3B1388, 0x0033;
    byte pauseComplete: 0x3B1388, 0x00EB;
    byte BikeGlitch:    0x3B1388, 0x0650;
    byte BikeGlitch2:   0x3B1388, 0x0318;
    uint screen:        0x3B1388, 0x005A;
    uint warpScreen:    0x3B1388, 0x006A;
}

state("nestopia")
{
    byte level:         "nestopia.exe", 0x1B2BCC, 0x00, 0x08, 0x0C, 0x0C, 0x78;
    byte start:         "nestopia.exe", 0x1B2BCC, 0x00, 0x08, 0x0C, 0x0C, 0x41D;
    byte start2:        "nestopia.exe", 0x1B2BCC, 0x00, 0x08, 0x0C, 0x0C, 0x41E;
    byte complete:      "nestopia.exe", 0x1B2BCC, 0x00, 0x08, 0x0C, 0x0C, 0x9B;
    byte pauseComplete: "nestopia.exe", 0x1B2BCC, 0x00, 0x08, 0x0C, 0x0C, 0x153;
    byte BikeGlitch:    "nestopia.exe", 0x1B2BCC, 0x00, 0x08, 0x0C, 0x0C, 0x6B8;
    byte BikeGlitch2:   "nestopia.exe", 0x1B2BCC, 0x00, 0x08, 0x0C, 0x0C, 0x380;
    uint screen:        "nestopia.exe", 0x1B2BCC, 0x00, 0x08, 0x0C, 0x0C, 0xC2;
    uint warpScreen:    "nestopia.exe", 0x1B2BCC, 0x00, 0x08, 0x0C, 0x0C, 0xD2;
}

state("mednafen")
{
    byte level:         "mednafen.exe", 0xBE1CF0;
    byte start:         "mednafen.exe", 0xBE2095;
    byte start2:        "mednafen.exe", 0xBE2096;
    byte complete:      "mednafen.exe", 0xBE1D13;
    byte pauseComplete: "mednafen.exe", 0xBE1DCB;
    byte BikeGlitch:    "mednafen.exe", 0xBE2330;
    byte BikeGlitch2:   "mednafen.exe", 0xBE1FF8;
    uint screen:        "mednafen.exe", 0xBE1D3A;
    uint warpScreen:    "mednafen.exe", 0xBE1D4A;
}

state("punes32")
{
    byte level:         "punes32.exe", 0xDDC8, 0x0010;
    byte start:         "punes32.exe", 0xDDC8, 0x03B5;
    byte start2:        "punes32.exe", 0xDDC8, 0x03B6;
    byte complete:      "punes32.exe", 0xDDC8, 0x0033;
    byte pauseComplete: "punes32.exe", 0xDDC8, 0x00EB;
    byte BikeGlitch:    "punes32.exe", 0xDDC8, 0x0650;
    byte BikeGlitch2:   "punes32.exe", 0xDDC8, 0x0318;
    uint screen:        "punes32.exe", 0xDDC8, 0x005A;
    uint warpScreen:    "punes32.exe", 0xDDC8, 0x006A;
}

state("punes64")
{
    byte level:         0x13F1710;
    byte start:         0x13F1AB5;
    byte start2:        0x13F1AB6;
    byte complete:      0x13F1733;
    byte pauseComplete: 0x13F17EB;
    byte BikeGlitch:    0x13F1D50;
    byte BikeGlitch2:   0x13F1A18;
    uint screen:        0x13F175A;
    uint warpScreen:    0x13F176A;
}

state("nintendulator")
{
    byte level:         0x5C0D8;
    byte start:         0x5C47D;
    byte start2:        0x5C47E;
    byte complete:      0x5C0FB;
    byte pauseComplete: 0x5C1B3;
    byte BikeGlitch:    0x5C718;
    byte BikeGlitch2:   0x5C3E0;
    uint screen:        0x5C122;
    uint warpScreen:    0x5C132;
}

state("mesen")
{
    byte level:         "MesenCore.dll", 0x4311838, 0x118, 0xB8, 0x90, 0x1D8, 0x08, 0x10;
    byte start:         "MesenCore.dll", 0x4311838, 0x118, 0xB8, 0x90, 0x1D8, 0x08, 0x3B5;
    byte start2:        "MesenCore.dll", 0x4311838, 0x118, 0xB8, 0x90, 0x1D8, 0x08, 0x3B6;
    byte complete:      "MesenCore.dll", 0x4311838, 0x118, 0xB8, 0x90, 0x1D8, 0x08, 0x33;
    byte pauseComplete: "MesenCore.dll", 0x4311838, 0x118, 0xB8, 0x90, 0x1D8, 0x08, 0xEB;
    byte BikeGlitch:    "MesenCore.dll", 0x4311838, 0x118, 0xB8, 0x90, 0x1D8, 0x08, 0x650;
    byte BikeGlitch2:   "MesenCore.dll", 0x4311838, 0x118, 0xB8, 0x90, 0x1D8, 0x08, 0x318;
    uint screen:        "MesenCore.dll", 0x4311838, 0x118, 0xB8, 0x90, 0x1D8, 0x08, 0x5A;
    uint warpScreen:    "MesenCore.dll", 0x4311838, 0x118, 0xB8, 0x90, 0x1D8, 0x08, 0x6A;
}

startup
{
    settings.Add("gLevels", true, "Levels");
    settings.Add("gWarps", true, "Warps");
    
    settings.Add("lvl1", true, "Ragnarok's Canyon", "gLevels");
    settings.Add("lvl2", true, "Wookie Hole", "gLevels");
    settings.Add("lvl3", true, "Turbo Tunnel", "gLevels");
    settings.Add("lvl4", true, "Arctic Caverns", "gLevels");
    settings.Add("lvl5", true, "Surf City", "gLevels");
    settings.Add("lvl6", true, "Karnath's Lair", "gLevels");
    settings.Add("lvl7", true, "Volkmire's Inferno", "gLevels");
    settings.Add("lvl8", true, "Intruder Excluder", "gLevels");
    settings.Add("lvl9", true, "Terra Tubes", "gLevels");
    settings.Add("lvl10", true, "Rat Race", "gLevels");
    settings.Add("lvl11", true, "Clinger Winger", "gLevels");
    settings.Add("lvl12", true, "The Revolution", "gLevels");
    settings.Add("lvl13", true, "Armageddon", "gLevels");
    
    settings.Add("warp1", true, "Warp in Level 1", "gWarps");
    settings.Add("warp2", true, "Glitch in Turbo Tunnel", "gWarps");
    settings.Add("warp3", true, "Warp in Level 3", "gWarps");
    settings.Add("warp4", true, "Warp in Level 4", "gWarps");
    settings.Add("warp6", true, "Warp in Level 6", "gWarps");
    settings.Add("warp10", true, "Warp in Level 10", "gWarps");
}

split
{
    if ((old.complete != 0x81) && (current.complete == 0x81) && (current.pauseComplete == 0x80 || current.pauseComplete == 0x81))
    {
        switch((int)current.level)
        {
            case 1:
                if (settings["lvl1"]) return true;
                break;
            case 2:
                if (settings["lvl2"]) return true;
                break;
            case 3:
                if (settings["lvl3"]) return true;
                break;
            case 4:
                if (settings["lvl4"]) return true;
                break;
            case 5:
                if (settings["lvl12"]) return true;
                break;
            case 6:
                if (settings["lvl7"]) return true;
                break;
            case 7:
                if (settings["lvl8"]) return true;
                break;
            case 8:
                if (settings["lvl6"]) return true;
                break;
            case 9:
                if (settings["lvl10"]) return true;
                break;
            case 10:
                if (settings["lvl11"]) return true;
                break;
            case 11:
                if (settings["lvl9"]) return true;
                break;
            case 12:
                if (settings["lvl5"]) return true;
                break;
        }
    }
    // The Revolution
    if ((current.BikeGlitch == 0x0F) && (old.BikeGlitch2 != 0x93) && (current.BikeGlitch2 == 0x93) && (current.level == 5) && (settings["lvl12"])) return true;
    // Armageddon (end game)
    if ((old.screen == 0x0F241404) && (current.screen == 0x0F201C0C) && ((current.level == 0xFE) || (current.level == 0xFF)) && (settings["lvl13"])) return true;
    
    
    // Bike Glitch
    if ((current.BikeGlitch == 0x0F) && (old.BikeGlitch2 != 0x93) && (current.BikeGlitch2 == 0x93) && (current.level == 3) && (settings["warp2"])) return true;
    // Warps
    if ((old.warpScreen != 0x0F382205) && (current.warpScreen == 0x0F382205))
    {
        switch((int)current.level)
        {
            case 1:
                if (settings["warp1"]) return true;
                break;
            case 3:
                if (settings["warp3"]) return true;
                break;
            case 4:
                if (settings["warp4"]) return true;
                break;
            case 8:
                if (settings["warp6"]) return true;
                break;
            case 9:
                if (settings["warp10"]) return true;
                break;
        }
    }
}

reset
{
    return ((old.level != 0x00) && (current.level == 0x00));
}

start
{
    return (current.level == 0x01) && (((old.start == 0x05) && (current.start == 0x04)) ||
    ((old.start2 == 0x05) && (current.start2 == 0x04)));
}
