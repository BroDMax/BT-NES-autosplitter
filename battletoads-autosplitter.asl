state("fceux")
{
    byte level:         0x3B1388, 0x0010;
    byte start:         0x3B1388, 0x03B5;
    byte complete:      0x3B1388, 0x0033;
    byte pauseComplete: 0x3B1388, 0x00EB;
    byte warp1:         0x3B1388, 0x0066;
    byte warp2:         0x3B1388, 0x006A;
    byte BikeGlitch:    0x3B1388, 0x0650;
    byte BikeGlitch2:   0x3B1388, 0x0318;
    uint screen:        0x3B1388, 0x005A;
}

state("nestopia")
{
    byte level:         "nestopia.exe", 0x1B2BCC, 0x00, 0x08, 0x0C, 0x0C, 0x78;
    byte start:         "nestopia.exe", 0x1B2BCC, 0x00, 0x08, 0x0C, 0x0C, 0x41D;
    byte complete:      "nestopia.exe", 0x1B2BCC, 0x00, 0x08, 0x0C, 0x0C, 0x9B;
    byte pauseComplete: "nestopia.exe", 0x1B2BCC, 0x00, 0x08, 0x0C, 0x0C, 0x153;
    byte warp1:         "nestopia.exe", 0x1B2BCC, 0x00, 0x08, 0x0C, 0x0C, 0xCE;
    byte warp2:         "nestopia.exe", 0x1B2BCC, 0x00, 0x08, 0x0C, 0x0C, 0xD2;
    byte BikeGlitch:    "nestopia.exe", 0x1B2BCC, 0x00, 0x08, 0x0C, 0x0C, 0x6B8;
    byte BikeGlitch2:   "nestopia.exe", 0x1B2BCC, 0x00, 0x08, 0x0C, 0x0C, 0x380;
    uint screen:        "nestopia.exe", 0x1B2BCC, 0x00, 0x08, 0x0C, 0x0C, 0xC2;
}

state("mednafen")
{
    byte level:         "mednafen.exe", 0xBE1CF0;
    byte start:         "mednafen.exe", 0xBE2095;
    byte complete:      "mednafen.exe", 0xBE1D13;
    byte pauseComplete: "mednafen.exe", 0xBE1DCB;
    byte warp1:         "mednafen.exe", 0xBE1D46;
    byte warp2:         "mednafen.exe", 0xBE1D4A;
    byte BikeGlitch:    "mednafen.exe", 0xBE2330;
    byte BikeGlitch2:   "mednafen.exe", 0xBE1FF8;
    uint screen:        "mednafen.exe", 0xBE1D3A;
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
    if ((old.screen == 0x0F241404) && (current.screen == 0x0F201C0C) && (old.level == 0xFE) && (current.level == 0xFF) && (settings["lvl13"])) return true;
    
    
    // Bike Glitch
    if ((current.BikeGlitch == 0x0F) && (old.BikeGlitch2 != 0x93) && (current.BikeGlitch2 == 0x93) && (current.level == 3) && (settings["warp2"])) return true;
    // Warps
    if ((old.warp1 != 0x20) && (current.warp1 == 0x20) && (old.warp2 != 0x05) && (current.warp2 == 0x05))
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
    return (current.level == 0x01) && (old.start == 0x05) && (current.start == 0x04);
}
