GameData = {["save_version"] = 1, ["language"] = 1, ["network"] = 5, ["networkMax"] = 7, ["overflow"] = 0, ["seed"] = 20093, ["difficulty"] = 1, ["ach_info"] = {["squad"] = "Pinnacle_A", ["trackers"] = {["Detritus_B_2"] = 0, ["Global_Challenge_Power"] = 0, ["Archive_A_1"] = 0, ["Archive_B_2"] = 0, ["Rust_A_2"] = 0, ["Rust_A_3"] = 0, ["Pinnacle_A_3"] = 0, ["Archive_B_1"] = 0, ["Pinnacle_B_3"] = 0, ["Detritus_B_1"] = 0, ["Pinnacle_B_1"] = 0, ["Global_Island_Mechs"] = 18, ["Global_Island_Building"] = 0, },
},


["current"] = {["score"] = 3922, ["time"] = 1056903.625000, ["kills"] = 39, ["damage"] = 0, ["failures"] = 0, ["difficulty"] = 1, ["victory"] = false, ["squad"] = 2, 
["mechs"] = {"LaserMech", "ChargeMech", "ScienceMech", },
["colors"] = {2, 2, 2, },
["weapons"] = {"Prime_Lasermech", "", "Brute_Beetle", "", "Science_Pullmech", "Science_Shield", },
["pilot0"] = {["id"] = "Pilot_Detritus", ["name"] = "Miguel Torcasio", ["name_id"] = "", ["renamed"] = false, ["skill1"] = 1, ["skill2"] = 3, ["exp"] = 12, ["level"] = 1, ["travel"] = 0, ["final"] = 0, ["starting"] = true, },
["pilot1"] = {["id"] = "Pilot_Archive", ["name"] = "Thuy Koleda", ["name_id"] = "", ["renamed"] = false, ["skill1"] = 2, ["skill2"] = 3, ["exp"] = 11, ["level"] = 1, ["travel"] = 0, ["final"] = 0, ["starting"] = true, },
["pilot2"] = {["id"] = "Pilot_Miner", ["name"] = "Silica", ["name_id"] = "Pilot_Miner_Name", ["renamed"] = false, ["skill1"] = 0, ["skill2"] = 1, ["exp"] = 50, ["level"] = 2, ["travel"] = 1, ["final"] = 1, ["starting"] = true, ["power"] = {0, 0, },
["last_end"] = 1, },
},
["current_squad"] = 2, ["undosave"] = true, }
 

RegionData = {
["sector"] = 0, ["island"] = 1, ["secret"] = false, 
["island0"] = {["corporation"] = "Corp_Grass", ["id"] = 0, ["secured"] = false, },
["island1"] = {["corporation"] = "Corp_Desert", ["id"] = 1, ["secured"] = false, },
["island2"] = {["corporation"] = "Corp_Snow", ["id"] = 2, ["secured"] = false, },
["island3"] = {["corporation"] = "Corp_Factory", ["id"] = 3, ["secured"] = false, },

["turn"] = 4, ["iTower"] = 1, ["quest_tracker"] = 0, ["quest_id"] = 0, ["podRewards"] = {},


["region0"] = {["mission"] = "", ["state"] = 2, ["name"] = "Weather Watch", ["objectives"] = {["0"] = {["text"] = "Bonus_Simple_Grid", ["param1"] = "", ["param2"] = "", ["value"] = 1, ["potential"] = 1, ["category"] = 0, },
["1"] = {["text"] = "Bonus_Simple_Asset", ["param1"] = "Str_Battery_Name", ["param2"] = "", ["value"] = 1, ["potential"] = 1, ["category"] = 1, },
},
},

["region1"] = {["mission"] = "Mission8", ["player"] = {["battle_type"] = 1, ["iCurrentTurn"] = 4, ["iTeamTurn"] = 1, ["iState"] = 0, ["sMission"] = "Mission8", ["podReward"] = CreateEffect({}), ["secret"] = false, ["spawn_needed"] = false, ["env_time"] = 1000, ["actions"] = 0, ["iUndoTurn"] = 1, ["aiState"] = 3, ["aiDelay"] = 0.000000, ["aiSeed"] = 3884, ["victory"] = 2, ["undo_pawns"] = {},


["map_data"] = {["version"] = 7, ["dimensions"] = Point( 8, 8 ), ["name"] = "any49", 
["map"] = {{["loc"] = Point( 0, 0 ), ["terrain"] = 4, },
{["loc"] = Point( 0, 1 ), ["terrain"] = 7, },
{["loc"] = Point( 0, 5 ), ["terrain"] = 7, },
{["loc"] = Point( 1, 1 ), ["terrain"] = 7, },
{["loc"] = Point( 1, 2 ), ["terrain"] = 2, ["health_max"] = 1, ["health_min"] = 0, ["rubble_type"] = 0, },
{["loc"] = Point( 1, 4 ), ["terrain"] = 1, ["populated"] = 1, ["people1"] = 99, ["people2"] = 0, ["health_max"] = 1, },
{["loc"] = Point( 1, 5 ), ["terrain"] = 1, ["populated"] = 1, ["people1"] = 100, ["people2"] = 0, ["health_max"] = 1, },
{["loc"] = Point( 1, 6 ), ["terrain"] = 1, ["populated"] = 1, ["people1"] = 111, ["people2"] = 0, ["health_max"] = 1, },
{["loc"] = Point( 2, 2 ), ["terrain"] = 1, ["populated"] = 1, ["people1"] = 216, ["people2"] = 0, ["health_max"] = 2, },
{["loc"] = Point( 3, 2 ), ["terrain"] = 0, ["undo_state"] = {["active"] = true, },
},
{["loc"] = Point( 4, 1 ), ["terrain"] = 1, ["populated"] = 1, ["unique"] = "str_tower1", ["people1"] = 98, ["people2"] = 0, ["health_max"] = 1, },
{["loc"] = Point( 4, 2 ), ["terrain"] = 0, },
{["loc"] = Point( 5, 2 ), ["terrain"] = 0, ["smoke"] = 1, ["smoke"] = 1, },
{["loc"] = Point( 5, 3 ), ["terrain"] = 0, ["undo_state"] = {["active"] = true, },
},
{["loc"] = Point( 5, 4 ), ["terrain"] = 7, ["undo_state"] = {["terrain"] = 7, ["active"] = true, },
},
{["loc"] = Point( 5, 6 ), ["terrain"] = 1, ["populated"] = 1, ["people1"] = 252, ["people2"] = 0, ["health_max"] = 2, },
{["loc"] = Point( 5, 7 ), ["terrain"] = 4, },
{["loc"] = Point( 6, 3 ), ["terrain"] = 7, ["grappled"] = 1, ["undo_state"] = {["terrain"] = 7, ["active"] = true, },
},
{["loc"] = Point( 6, 4 ), ["terrain"] = 7, ["grapple_targets"] = {0, },
},
{["loc"] = Point( 6, 6 ), ["terrain"] = 4, },
{["loc"] = Point( 6, 7 ), ["terrain"] = 4, },
{["loc"] = Point( 7, 0 ), ["terrain"] = 4, },
{["loc"] = Point( 7, 6 ), ["terrain"] = 4, },
{["loc"] = Point( 7, 7 ), ["terrain"] = 9, },
},
["pod"] = Point(4,2), ["spawns"] = {},
["spawn_ids"] = {},
["spawn_points"] = {},
["zones"] = {["satellite"] = {Point( 3, 5 ), Point( 3, 6 ), Point( 3, 4 ), Point( 4, 4 ), Point( 4, 3 ), Point( 5, 3 ), Point( 5, 4 ), },
},
["tags"] = {"generic", "any_sector", "satellite", "mountain", },


["pawn1"] = {["type"] = "LaserMech", ["name"] = "", ["id"] = 0, ["mech"] = true, ["offset"] = 2, 
["reactor"] = {["iNormalPower"] = 0, ["iUsedPower"] = 1, ["iBonusPower"] = 0, ["iUsedBonus"] = 0, ["iUndoPower"] = 0, ["iUsedUndo"] = 0, },
["movePower"] = {0, },
["healthPower"] = {0, },
["primary"] = "Prime_Lasermech", ["primary_power"] = {1, },
["primary_power_class"] = false, ["primary_mod1"] = {0, },
["primary_mod2"] = {0, 0, 0, },
["primary_uses"] = 1, ["primary_damaged"] = false, ["primary_starting"] = true, ["pilot"] = {["id"] = "Pilot_Detritus", ["name"] = "Miguel Torcasio", ["name_id"] = "", ["renamed"] = false, ["skill1"] = 1, ["skill2"] = 3, ["exp"] = 12, ["level"] = 1, ["travel"] = 0, ["final"] = 0, ["starting"] = true, },
["iTeamId"] = 1, ["iFaction"] = 0, ["health"] = 3, ["max_health"] = 3, ["undo_state"] = {["health"] = 3, ["max_health"] = 3, },
["undo_ready"] = false, ["undo_point"] = Point(5,3), ["iMissionDamage"] = 0, ["location"] = Point(5,3), ["last_location"] = Point(4,3), ["bActive"] = true, ["iCurrentWeapon"] = 0, ["iTurnCount"] = 4, ["undoPosition"] = Point(5,3), ["undoReady"] = false, ["iKillCount"] = 7, ["iOwner"] = 0, ["piTarget"] = Point(5,1), ["piOrigin"] = Point(5,3), ["piQueuedShot"] = Point(-1,-1), ["iQueuedSkill"] = -1, ["priorityTarget"] = Point(-1,-1), ["targetHistory"] = Point(5,1), },


["pawn2"] = {["type"] = "ChargeMech", ["name"] = "", ["id"] = 1, ["mech"] = true, ["offset"] = 2, 
["reactor"] = {["iNormalPower"] = 0, ["iUsedPower"] = 2, ["iBonusPower"] = 0, ["iUsedBonus"] = 0, ["iUndoPower"] = 0, ["iUsedUndo"] = 0, },
["movePower"] = {0, },
["healthPower"] = {1, },
["primary"] = "Brute_Beetle", ["primary_power"] = {1, },
["primary_power_class"] = false, ["primary_mod1"] = {0, },
["primary_mod2"] = {0, 0, 0, },
["primary_uses"] = 1, ["primary_damaged"] = false, ["primary_starting"] = true, ["pilot"] = {["id"] = "Pilot_Archive", ["name"] = "Thuy Koleda", ["name_id"] = "", ["renamed"] = false, ["skill1"] = 2, ["skill2"] = 3, ["exp"] = 11, ["level"] = 1, ["travel"] = 0, ["final"] = 0, ["starting"] = true, },
["iTeamId"] = 1, ["iFaction"] = 0, ["health"] = 2, ["max_health"] = 5, ["undo_state"] = {["health"] = 3, ["max_health"] = 5, },
["undo_ready"] = false, ["undo_point"] = Point(3,2), ["iMissionDamage"] = 0, ["location"] = Point(3,2), ["last_location"] = Point(3,3), ["bActive"] = true, ["iCurrentWeapon"] = 0, ["iTurnCount"] = 4, ["undoPosition"] = Point(3,2), ["undoReady"] = false, ["iKillCount"] = 9, ["iOwner"] = 1, ["piTarget"] = Point(4,2), ["piOrigin"] = Point(3,2), ["piQueuedShot"] = Point(-1,-1), ["iQueuedSkill"] = -1, ["priorityTarget"] = Point(-1,-1), ["targetHistory"] = Point(4,2), },


["pawn3"] = {["type"] = "ScienceMech", ["name"] = "", ["id"] = 2, ["mech"] = true, ["offset"] = 2, 
["reactor"] = {["iNormalPower"] = 0, ["iUsedPower"] = 1, ["iBonusPower"] = 0, ["iUsedBonus"] = 0, ["iUndoPower"] = 0, ["iUsedUndo"] = 0, },
["movePower"] = {0, },
["healthPower"] = {0, },
["primary"] = "Science_Pullmech", ["primary_power"] = {},
["primary_power_class"] = false, ["primary_mod1"] = {0, },
["primary_mod2"] = {0, },
["primary_uses"] = 1, ["primary_damaged"] = false, ["primary_starting"] = true, ["secondary"] = "Science_Shield", ["secondary_power"] = {1, },
["secondary_power_class"] = false, ["secondary_mod1"] = {0, 0, },
["secondary_mod2"] = {0, 0, },
["secondary_uses"] = 1, ["secondary_damaged"] = false, ["secondary_starting"] = true, ["pilot"] = {["id"] = "Pilot_Miner", ["name"] = "Silica", ["name_id"] = "Pilot_Miner_Name", ["renamed"] = false, ["skill1"] = 0, ["skill2"] = 1, ["exp"] = 50, ["level"] = 2, ["travel"] = 1, ["final"] = 1, ["starting"] = true, ["power"] = {0, 0, },
["last_end"] = 1, },
["iTeamId"] = 1, ["iFaction"] = 0, ["health"] = 3, ["max_health"] = 4, ["undo_state"] = {["health"] = 4, ["max_health"] = 4, },
["undo_ready"] = false, ["undo_point"] = Point(6,3), ["iMissionDamage"] = 0, ["location"] = Point(6,3), ["last_location"] = Point(5,3), ["bActive"] = true, ["iCurrentWeapon"] = 0, ["iTurnCount"] = 4, ["undoPosition"] = Point(6,3), ["undoReady"] = false, ["iKillCount"] = 2, ["iOwner"] = 2, ["piTarget"] = Point(6,4), ["piOrigin"] = Point(6,3), ["piQueuedShot"] = Point(-1,-1), ["iQueuedSkill"] = -1, ["priorityTarget"] = Point(-1,-1), ["targetHistory"] = Point(6,4), },


["pawn4"] = {["type"] = "Scorpion1", ["name"] = "", ["id"] = 136, ["mech"] = false, ["offset"] = 0, ["primary"] = "ScorpionAtk1", ["iTeamId"] = 6, ["iFaction"] = 0, ["health"] = 3, ["max_health"] = 3, ["undo_state"] = {["health"] = 5, ["max_health"] = 5, },
["undo_ready"] = false, ["undo_point"] = Point(-1,-1), ["iMissionDamage"] = 0, ["location"] = Point(6,4), ["last_location"] = Point(7,4), ["iCurrentWeapon"] = 1, ["iTurnCount"] = 0, ["undoPosition"] = Point(-1,-1), ["undoReady"] = false, ["iKillCount"] = 0, ["iOwner"] = 136, ["piTarget"] = Point(6,3), ["piOrigin"] = Point(6,4), ["piQueuedShot"] = Point(6,3), ["iQueuedSkill"] = 1, ["priorityTarget"] = Point(-1,-1), ["targetHistory"] = Point(6,3), },


["pawn5"] = {["type"] = "Scarab1", ["name"] = "", ["id"] = 137, ["mech"] = false, ["offset"] = 0, ["primary"] = "ScarabAtk1", ["iTeamId"] = 6, ["iFaction"] = 0, ["health"] = 2, ["max_health"] = 2, ["undo_state"] = {["health"] = 5, ["max_health"] = 5, },
["undo_ready"] = false, ["undo_point"] = Point(-1,-1), ["iMissionDamage"] = 0, ["location"] = Point(4,2), ["last_location"] = Point(5,2), ["iCurrentWeapon"] = 1, ["iTurnCount"] = 0, ["undoPosition"] = Point(-1,-1), ["undoReady"] = false, ["iKillCount"] = 0, ["iOwner"] = 137, ["piTarget"] = Point(2,2), ["piOrigin"] = Point(4,2), ["piQueuedShot"] = Point(2,2), ["iQueuedSkill"] = 1, ["priorityTarget"] = Point(-1,-1), ["targetHistory"] = Point(2,2), },
["pawn_count"] = 5, ["blocked_points"] = {},
["blocked_type"] = {},
},


},
["state"] = 1, ["name"] = "Corporate HQ", },

["region2"] = {["mission"] = "", ["state"] = 3, ["name"] = "Erosion Flats", ["objectives"] = {["0"] = {["text"] = "Mission_Volatile_PreGame", ["param1"] = "", ["param2"] = "", ["value"] = 0, ["potential"] = 1, ["category"] = 0, },
},
},

["region3"] = {["mission"] = "", ["state"] = 2, ["name"] = "Dead Bird Field", ["objectives"] = {["0"] = {["text"] = "Mission_Train_Obj", ["param1"] = "", ["param2"] = "", ["value"] = 2, ["potential"] = 2, ["category"] = 0, },
["1"] = {["text"] = "Pod_Objective", ["param1"] = "", ["param2"] = "", ["value"] = 1, ["potential"] = 1, ["category"] = 3, },
},
},

["region4"] = {["mission"] = "", ["state"] = 2, ["name"] = "Countdown Ridge", ["objectives"] = {["0"] = {["text"] = "Mission_Filler_Obj", ["param1"] = "", ["param2"] = "", ["value"] = 1, ["potential"] = 1, ["category"] = 0, },
["1"] = {["text"] = "Bonus_Simple_Mechs", ["param1"] = "", ["param2"] = "", ["value"] = 1, ["potential"] = 1, ["category"] = 0, },
},
},

["region5"] = {["mission"] = "", ["state"] = 3, ["name"] = "Suncatcher Array", ["objectives"] = {["0"] = {["text"] = "Mission_Bomb_Obj", ["param1"] = "", ["param2"] = "", ["value"] = 0, ["potential"] = 2, ["category"] = 0, },
},
},

["region6"] = {["mission"] = "", ["state"] = 2, ["name"] = "Geothermal Station", ["objectives"] = {["0"] = {["text"] = "Bonus_Simple_Grid", ["param1"] = "", ["param2"] = "", ["value"] = 1, ["potential"] = 1, ["category"] = 0, },
["1"] = {["text"] = "Bonus_Simple_Asset", ["param1"] = "Str_Power_Name", ["param2"] = "", ["value"] = 1, ["potential"] = 1, ["category"] = 1, },
},
},

["region7"] = {["mission"] = "", ["state"] = 3, ["name"] = "Rust Dunes", ["objectives"] = {["0"] = {["text"] = "Bonus_Simple_Grid", ["param1"] = "", ["param2"] = "", ["value"] = 0, ["potential"] = 1, ["category"] = 0, },
["1"] = {["text"] = "Bonus_Simple_Asset", ["param1"] = "Str_Power_Name", ["param2"] = "", ["value"] = 0, ["potential"] = 1, ["category"] = 1, },
},
},
["iBattleRegion"] = 1, }
 

GAME = { 
["Island"] = 2, 
["PodDeck"] = { 
[1] = { 
["cores"] = 1 
}, 
[2] = { 
["cores"] = 1 
}, 
[3] = { 
["cores"] = 1, 
["weapon"] = "random" 
}, 
[4] = { 
["cores"] = 1, 
["weapon"] = "random" 
}, 
[5] = { 
["cores"] = 1, 
["weapon"] = "random" 
}, 
[6] = { 
["cores"] = 1, 
["weapon"] = "random" 
}, 
[7] = { 
["cores"] = 1, 
["pilot"] = "random" 
}, 
[8] = { 
["cores"] = 1, 
["pilot"] = "random" 
}, 
[9] = { 
["cores"] = 1, 
["pilot"] = "random" 
} 
}, 
["Missions"] = { 
[1] = { 
["Spawner"] = { 
["curr_weakRatio"] = { 
[1] = 2, 
[2] = 2 
}, 
["curr_upgradeRatio"] = { 
[1] = 0, 
[2] = 2 
}, 
["upgrade_streak"] = 0, 
["num_spawns"] = 3, 
["pawn_counts"] = { 
["Hornet"] = 1, 
["Scarab"] = 2 
} 
}, 
["LiveEnvironment"] = { 
}, 
["Bombs"] = { 
[1] = 103, 
[2] = 104 
}, 
["ID"] = "Mission_Bomb", 
["VoiceEvents"] = { 
}, 
["BonusObjs"] = { 
} 
}, 
[2] = { 
["Spawner"] = { 
["curr_weakRatio"] = { 
[1] = 1, 
[2] = 2 
}, 
["curr_upgradeRatio"] = { 
[1] = 0, 
[2] = 2 
}, 
["upgrade_streak"] = 0, 
["num_spawns"] = 3, 
["pawn_counts"] = { 
["Scorpion"] = 1, 
["Scarab"] = 1, 
["Jelly_Explode"] = 1 
} 
}, 
["AssetId"] = "Str_Power", 
["AssetLoc"] = Point( 2, 3 ), 
["ID"] = "Mission_Crack", 
["VoiceEvents"] = { 
}, 
["LiveEnvironment"] = { 
["Path"] = { 
[1] = Point( 7, 3 ), 
[2] = Point( 6, 3 ), 
[3] = Point( 5, 3 ), 
[4] = Point( 4, 3 ), 
[5] = Point( 3, 3 ), 
[6] = Point( 3, 2 ), 
[7] = Point( 2, 2 ), 
[8] = Point( 1, 2 ), 
[9] = Point( 1, 3 ), 
[10] = Point( 0, 3 ) 
}, 
["Locations"] = { 
}, 
["Planned"] = { 
} 
}, 
["BonusObjs"] = { 
[1] = 3, 
[2] = 1 
} 
}, 
[3] = { 
["Filler"] = 99, 
["LiveEnvironment"] = { 
}, 
["BonusObjs"] = { 
[1] = 4 
}, 
["ID"] = "Mission_Filler", 
["VoiceEvents"] = { 
}, 
["Spawner"] = { 
["curr_weakRatio"] = { 
[1] = 0, 
[2] = 0 
}, 
["curr_upgradeRatio"] = { 
[1] = 0, 
[2] = 0 
}, 
["upgrade_streak"] = 0, 
["num_spawns"] = 10, 
["pawn_counts"] = { 
["Scorpion"] = 3, 
["Hornet"] = 3, 
["Scarab"] = 3, 
["Jelly_Explode"] = 1 
} 
}, 
["PowerStart"] = 6 
}, 
[4] = { 
["Spawner"] = { 
["curr_weakRatio"] = { 
[1] = 1, 
[2] = 1 
}, 
["curr_upgradeRatio"] = { 
[1] = 0, 
[2] = 1 
}, 
["upgrade_streak"] = 0, 
["num_spawns"] = 9, 
["pawn_counts"] = { 
["Scarab"] = 1, 
["Hornet"] = 3, 
["Scorpion"] = 4, 
["Jelly_Explode"] = 1 
} 
}, 
["AssetId"] = "Str_Power", 
["BonusObjs"] = { 
[1] = 3, 
[2] = 1 
}, 
["AssetLoc"] = Point( 0, 4 ), 
["ID"] = "Mission_Cataclysm", 
["VoiceEvents"] = { 
}, 
["LiveEnvironment"] = { 
["Index"] = 3 
}, 
["PowerStart"] = 5 
}, 
[5] = { 
["Spawner"] = { 
["curr_weakRatio"] = { 
[1] = 4, 
[2] = 4 
}, 
["curr_upgradeRatio"] = { 
[1] = 0, 
[2] = 4 
}, 
["upgrade_streak"] = 0, 
["num_spawns"] = 11, 
["pawn_counts"] = { 
["Scorpion"] = 1, 
["Hornet"] = 10 
} 
}, 
["AssetId"] = "Str_Battery", 
["BonusObjs"] = { 
[1] = 3, 
[2] = 1 
}, 
["AssetLoc"] = Point( 1, 4 ), 
["ID"] = "Mission_Holes", 
["VoiceEvents"] = { 
}, 
["LiveEnvironment"] = { 
}, 
["PowerStart"] = 5 
}, 
[6] = { 
["BonusObjs"] = { 
}, 
["Target"] = 74, 
["SpawnStart"] = { 
[1] = 3, 
[2] = 3, 
[3] = 4, 
[4] = 4 
}, 
["InfiniteSpawn"] = true, 
["SpawnsPerTurn_Easy"] = { 
[1] = 2, 
[2] = 1 
}, 
["Spawner"] = { 
["curr_weakRatio"] = { 
[1] = 2, 
[2] = 3 
}, 
["curr_upgradeRatio"] = { 
[1] = 0, 
[2] = 3 
}, 
["upgrade_streak"] = 0, 
["num_spawns"] = 2, 
["pawn_counts"] = { 
["Scarab"] = 1, 
["Hornet"] = 1 
} 
}, 
["LiveEnvironment"] = { 
}, 
["BonusPool"] = { 
[1] = 3, 
[2] = 4, 
[3] = 5, 
[4] = 6 
}, 
["SpawnStart_Easy"] = { 
[1] = 2, 
[2] = 2, 
[3] = 3, 
[4] = 3 
}, 
["ID"] = "Mission_Volatile", 
["VoiceEvents"] = { 
}, 
["DiffMod"] = 1, 
["SpawnsPerTurn"] = { 
[1] = 2, 
[2] = 3 
} 
}, 
[7] = { 
["Train"] = 77, 
["LiveEnvironment"] = { 
}, 
["BonusObjs"] = { 
}, 
["TrainLoc"] = Point( 4, 0 ), 
["ID"] = "Mission_Train", 
["VoiceEvents"] = { 
}, 
["Spawner"] = { 
["curr_weakRatio"] = { 
[1] = 1, 
[2] = 2 
}, 
["curr_upgradeRatio"] = { 
[1] = 0, 
[2] = 2 
}, 
["upgrade_streak"] = 0, 
["num_spawns"] = 8, 
["pawn_counts"] = { 
["Scorpion"] = 2, 
["Hornet"] = 3, 
["Scarab"] = 2, 
["Jelly_Explode"] = 1 
} 
}, 
["PowerStart"] = 6 
}, 
[8] = { 
["BonusObjs"] = { 
[1] = 1 
}, 
["Spawner"] = { 
["curr_weakRatio"] = { 
[1] = 2, 
[2] = 2 
}, 
["curr_upgradeRatio"] = { 
[1] = 0, 
[2] = 2 
}, 
["upgrade_streak"] = 0, 
["num_spawns"] = 8, 
["pawn_counts"] = { 
["Jelly_Regen"] = 5, 
["Scarab"] = 4, 
["Hornet"] = 2, 
["Jelly_Health"] = 5, 
["Scorpion"] = 2, 
["Jelly_Armor"] = 5, 
["Jelly_Explode"] = 5 
} 
}, 
["LiveEnvironment"] = { 
}, 
["BossID"] = 126, 
["AssetLoc"] = Point( 4, 1 ), 
["ID"] = "Mission_JellyBoss", 
["VoiceEvents"] = { 
}, 
["AssetId"] = "Str_Tower", 
["PowerStart"] = 6 
} 
}, 
["WeaponDeck"] = { 
[1] = "Prime_Punchmech", 
[2] = "Prime_Lightning", 
[3] = "Prime_ShieldBash", 
[4] = "Prime_Rockmech", 
[5] = "Prime_RightHook", 
[6] = "Prime_RocketPunch", 
[7] = "Prime_Shift", 
[8] = "Prime_Flamethrower", 
[9] = "Prime_Spear", 
[10] = "Prime_Leap", 
[11] = "Prime_SpinFist", 
[12] = "Prime_Sword", 
[13] = "Prime_Smash", 
[14] = "Brute_Tankmech", 
[15] = "Brute_Jetmech", 
[16] = "Brute_Mirrorshot", 
[17] = "Brute_PhaseShot", 
[18] = "Brute_Grapple", 
[19] = "Brute_Shrapnel", 
[20] = "Brute_Sniper", 
[21] = "Brute_Unstable", 
[22] = "Brute_Heavyrocket", 
[23] = "Brute_Splitshot", 
[24] = "Brute_Bombrun", 
[25] = "Brute_Sonic", 
[26] = "Ranged_Artillerymech", 
[27] = "Ranged_Rockthrow", 
[28] = "Ranged_Defensestrike", 
[29] = "Ranged_Rocket", 
[30] = "Ranged_Ignite", 
[31] = "Ranged_ScatterShot", 
[32] = "Ranged_BackShot", 
[33] = "Ranged_Ice", 
[34] = "Ranged_SmokeBlast", 
[35] = "Ranged_Fireball", 
[36] = "Ranged_RainingVolley", 
[37] = "Ranged_Wide", 
[38] = "Ranged_Dual", 
[39] = "Science_Gravwell", 
[40] = "Science_Swap", 
[41] = "Science_Repulse", 
[42] = "Science_AcidShot", 
[43] = "Science_Confuse", 
[44] = "Science_SmokeDefense", 
[45] = "Science_FireBeam", 
[46] = "Science_FreezeBeam", 
[47] = "Science_LocalShield", 
[48] = "Science_PushBeam", 
[49] = "Support_Boosters", 
[50] = "Support_Smoke", 
[51] = "Support_Refrigerate", 
[52] = "Support_Destruct", 
[53] = "DeploySkill_ShieldTank", 
[54] = "DeploySkill_Tank", 
[55] = "DeploySkill_PullTank", 
[56] = "Support_Force", 
[57] = "Support_SmokeDrop", 
[58] = "Support_Missiles", 
[59] = "Support_Wind", 
[60] = "Support_Blizzard", 
[61] = "Passive_FlameImmune", 
[62] = "Passive_Electric", 
[63] = "Passive_Leech", 
[64] = "Passive_Defenses", 
[65] = "Passive_Burrows", 
[66] = "Passive_AutoShields", 
[67] = "Passive_Psions", 
[68] = "Passive_Boosters", 
[69] = "Passive_Medical", 
[70] = "Passive_FriendlyFire", 
[71] = "Passive_ForceAmp", 
[72] = "Passive_CritDefense" 
}, 
["Bosses"] = { 
[1] = "Mission_HornetBoss", 
[2] = "Mission_JellyBoss", 
[3] = "Mission_BlobBoss", 
[4] = "Mission_BeetleBoss" 
}, 
["Enemies"] = { 
[1] = { 
[1] = "Leaper", 
[2] = "Hornet", 
[3] = "Firefly", 
[4] = "Jelly_Health", 
[5] = "Blobber", 
[6] = "Burrower", 
["island"] = 1 
}, 
[2] = { 
[1] = "Scarab", 
[2] = "Scorpion", 
[3] = "Hornet", 
[4] = "Jelly_Explode", 
[5] = "Centipede", 
[6] = "Digger", 
["island"] = 2 
}, 
[3] = { 
[1] = "Scorpion", 
[2] = "Scarab", 
[3] = "Firefly", 
[4] = "Jelly_Regen", 
[5] = "Beetle", 
[6] = "Spider", 
["island"] = 3 
}, 
[4] = { 
[1] = "Leaper", 
[2] = "Firefly", 
[3] = "Hornet", 
[4] = "Jelly_Armor", 
[5] = "Crab", 
[6] = "Blobber", 
["island"] = 4 
} 
}, 
["PilotDeck"] = { 
[1] = "Pilot_Original", 
[2] = "Pilot_Soldier", 
[3] = "Pilot_Youth", 
[4] = "Pilot_Warrior", 
[5] = "Pilot_Aquatic", 
[6] = "Pilot_Medic", 
[7] = "Pilot_Genius", 
[8] = "Pilot_Recycler", 
[9] = "Pilot_Assassin", 
[10] = "Pilot_Leader", 
[11] = "Pilot_Repairman" 
}, 
["SeenPilots"] = { 
[1] = "Pilot_Detritus", 
[2] = "Pilot_Archive", 
[3] = "Pilot_Miner", 
[4] = "Pilot_Hotshot" 
} 
}

 

SquadData = {
["money"] = 6, ["cores"] = 0, ["bIsFavor"] = false, ["repairs"] = 0, ["CorpReward"] = {CreateEffect({weapon = "Brute_Shockblast",}), CreateEffect({pilot = "Pilot_Hotshot",}), CreateEffect({power = 2,}), },
["RewardClaimed"] = false, 
["skip_pawns"] = true, 

["storage_size"] = 3, ["CorpStore"] = {CreateEffect({weapon = "Support_Repair",money = -1,}), CreateEffect({weapon = "Passive_MassRepair",money = -1,}), CreateEffect({weapon = "DeploySkill_AcidTank",money = -1,}), CreateEffect({weapon = "Prime_Areablast",money = -1,}), CreateEffect({money = -3,stock = -1,cores = 1,}), CreateEffect({money = -1,power = 1,stock = -1,}), },
["store_undo_size"] = 0, }
 

