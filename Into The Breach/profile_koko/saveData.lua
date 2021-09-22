GameData = {["save_version"] = 1, ["language"] = 1, ["network"] = 5, ["networkMax"] = 7, ["overflow"] = 0, ["seed"] = 20093, ["difficulty"] = 1, ["ach_info"] = {["squad"] = "Pinnacle_A", ["trackers"] = {["Detritus_B_2"] = 0, ["Global_Challenge_Power"] = 0, ["Archive_A_1"] = 0, ["Archive_B_2"] = 0, ["Rust_A_2"] = 0, ["Rust_A_3"] = 0, ["Pinnacle_A_3"] = 0, ["Archive_B_1"] = 0, ["Pinnacle_B_3"] = 0, ["Detritus_B_1"] = 0, ["Pinnacle_B_1"] = 0, ["Global_Island_Mechs"] = 0, ["Global_Island_Building"] = 0, },
},


["current"] = {["score"] = 4798, ["time"] = 1412312.750000, ["kills"] = 41, ["damage"] = 0, ["failures"] = 0, ["difficulty"] = 1, ["victory"] = false, ["islands"] = 1, ["squad"] = 2, 
["mechs"] = {"LaserMech", "ChargeMech", "ScienceMech", },
["colors"] = {2, 2, 2, },
["weapons"] = {"Prime_Lasermech", "", "Brute_Beetle", "", "Science_Pullmech", "Science_Shield", },
["pilot0"] = {["id"] = "Pilot_Detritus", ["name"] = "Miguel Torcasio", ["name_id"] = "", ["renamed"] = false, ["skill1"] = 1, ["skill2"] = 3, ["exp"] = 15, ["level"] = 1, ["travel"] = 0, ["final"] = 0, ["starting"] = true, },
["pilot1"] = {["id"] = "Pilot_Archive", ["name"] = "Thuy Koleda", ["name_id"] = "", ["renamed"] = false, ["skill1"] = 2, ["skill2"] = 3, ["exp"] = 13, ["level"] = 1, ["travel"] = 0, ["final"] = 0, ["starting"] = true, },
["pilot2"] = {["id"] = "Pilot_Miner", ["name"] = "Silica", ["name_id"] = "Pilot_Miner_Name", ["renamed"] = false, ["skill1"] = 0, ["skill2"] = 1, ["exp"] = 50, ["level"] = 2, ["travel"] = 1, ["final"] = 1, ["starting"] = true, ["power"] = {0, 0, },
["last_end"] = 1, },
},
["current_squad"] = 2, }
 

RegionData = {
["sector"] = 1, ["island"] = 3, ["secret"] = false, 
["island0"] = {["corporation"] = "Corp_Grass", ["id"] = 0, ["secured"] = false, },
["island1"] = {["corporation"] = "Corp_Desert", ["id"] = 1, ["secured"] = true, },
["island2"] = {["corporation"] = "Corp_Snow", ["id"] = 2, ["secured"] = false, },
["island3"] = {["corporation"] = "Corp_Factory", ["id"] = 3, ["secured"] = false, },

["turn"] = 0, ["iTower"] = 2, ["quest_tracker"] = 0, ["quest_id"] = 0, ["podRewards"] = {CreateEffect({weapon = "random",cores = 1,}), },


["region0"] = {["mission"] = "Mission1", ["state"] = 0, ["name"] = "Nanite Farms", },

["region1"] = {["mission"] = "Mission7", ["player"] = {["battle_type"] = 0, ["iCurrentTurn"] = 0, ["iTeamTurn"] = 1, ["iState"] = 4, ["sMission"] = "Mission7", ["podReward"] = CreateEffect({}), ["secret"] = false, ["spawn_needed"] = false, ["env_time"] = 1000, ["actions"] = 0, ["iUndoTurn"] = 1, ["aiState"] = 0, ["aiDelay"] = 0.000000, ["aiSeed"] = 4730, ["victory"] = 2, ["undo_pawns"] = {},


["map_data"] = {["version"] = 7, ["dimensions"] = Point( 8, 8 ), ["name"] = "acid0", 
["map"] = {{["loc"] = Point( 0, 0 ), ["terrain"] = 4, },
{["loc"] = Point( 0, 1 ), ["terrain"] = 4, },
{["loc"] = Point( 0, 2 ), ["terrain"] = 3, ["poison"] = 1, ["acid_pool"] = 2, },
{["loc"] = Point( 0, 3 ), ["terrain"] = 0, ["poison"] = 1, ["acid_pool"] = 1, },
{["loc"] = Point( 0, 5 ), ["terrain"] = 3, ["poison"] = 1, ["acid_pool"] = 3, },
{["loc"] = Point( 0, 6 ), ["terrain"] = 4, },
{["loc"] = Point( 0, 7 ), ["terrain"] = 4, },
{["loc"] = Point( 1, 0 ), ["terrain"] = 4, },
{["loc"] = Point( 1, 1 ), ["terrain"] = 3, ["poison"] = 1, ["acid_pool"] = 2, },
{["loc"] = Point( 1, 2 ), ["terrain"] = 1, ["populated"] = 1, ["people1"] = 107, ["people2"] = 0, ["health_max"] = 1, },
{["loc"] = Point( 1, 3 ), ["terrain"] = 0, ["poison"] = 1, ["acid_pool"] = 1, },
{["loc"] = Point( 1, 5 ), ["terrain"] = 1, ["populated"] = 1, ["people1"] = 110, ["people2"] = 0, ["health_max"] = 1, },
{["loc"] = Point( 1, 6 ), ["terrain"] = 3, ["poison"] = 1, ["acid_pool"] = 3, },
{["loc"] = Point( 1, 7 ), ["terrain"] = 4, },
{["loc"] = Point( 2, 0 ), ["terrain"] = 3, ["poison"] = 1, ["acid_pool"] = 0, },
{["loc"] = Point( 2, 1 ), ["terrain"] = 1, ["populated"] = 1, ["people1"] = 80, ["people2"] = 0, ["health_max"] = 1, },
{["loc"] = Point( 2, 2 ), ["terrain"] = 1, ["populated"] = 1, ["people1"] = 79, ["people2"] = 0, ["health_max"] = 1, },
{["loc"] = Point( 2, 5 ), ["terrain"] = 1, ["populated"] = 1, ["unique"] = "str_recycle1", ["people1"] = 101, ["people2"] = 0, ["health_max"] = 1, },
{["loc"] = Point( 2, 6 ), ["terrain"] = 1, ["populated"] = 1, ["people1"] = 167, ["people2"] = 0, ["health_max"] = 2, },
{["loc"] = Point( 2, 7 ), ["terrain"] = 3, ["poison"] = 1, ["acid_pool"] = 3, },
{["loc"] = Point( 3, 0 ), ["terrain"] = 3, ["poison"] = 1, ["acid_pool"] = 0, },
{["loc"] = Point( 3, 1 ), ["terrain"] = 0, ["custom"] = "conveyor0.png", },
{["loc"] = Point( 3, 2 ), ["terrain"] = 0, ["custom"] = "conveyor0.png", },
{["loc"] = Point( 3, 3 ), ["terrain"] = 0, ["custom"] = "conveyor0.png", },
{["loc"] = Point( 3, 4 ), ["terrain"] = 0, ["custom"] = "conveyor0.png", },
{["loc"] = Point( 3, 5 ), ["terrain"] = 0, ["custom"] = "conveyor0.png", },
{["loc"] = Point( 3, 6 ), ["terrain"] = 0, ["custom"] = "conveyor0.png", },
{["loc"] = Point( 3, 7 ), ["terrain"] = 0, ["custom"] = "conveyor0.png", },
{["loc"] = Point( 4, 3 ), ["terrain"] = 1, ["populated"] = 1, ["people1"] = 175, ["people2"] = 0, ["health_max"] = 2, },
{["loc"] = Point( 4, 4 ), ["terrain"] = 1, ["populated"] = 1, ["people1"] = 181, ["people2"] = 0, ["health_max"] = 2, },
{["loc"] = Point( 5, 0 ), ["terrain"] = 3, ["poison"] = 1, ["acid_pool"] = 0, },
{["loc"] = Point( 5, 7 ), ["terrain"] = 3, ["poison"] = 1, ["acid_pool"] = 3, },
{["loc"] = Point( 6, 0 ), ["terrain"] = 4, },
{["loc"] = Point( 6, 1 ), ["terrain"] = 3, ["poison"] = 1, ["acid_pool"] = 2, },
{["loc"] = Point( 6, 3 ), ["terrain"] = 0, ["poison"] = 1, ["acid_pool"] = 1, },
{["loc"] = Point( 6, 6 ), ["terrain"] = 3, ["poison"] = 1, ["acid_pool"] = 3, },
{["loc"] = Point( 6, 7 ), ["terrain"] = 4, },
{["loc"] = Point( 7, 0 ), ["terrain"] = 4, },
{["loc"] = Point( 7, 1 ), ["terrain"] = 4, },
{["loc"] = Point( 7, 2 ), ["terrain"] = 3, ["poison"] = 1, ["acid_pool"] = 2, },
{["loc"] = Point( 7, 5 ), ["terrain"] = 3, ["poison"] = 1, ["acid_pool"] = 3, },
{["loc"] = Point( 7, 6 ), ["terrain"] = 4, },
{["loc"] = Point( 7, 7 ), ["terrain"] = 4, },
},
["rain"] = 3, ["rain_type"] = 1, ["spawns"] = {"Hornet1", "Jelly_Armor1", "Firefly1", },
["spawn_ids"] = {173, 174, 175, },
["spawn_points"] = {Point(5,3), Point(6,2), Point(7,3), },
["zones"] = {["pistons"] = {Point( 4, 7 ), Point( 4, 6 ), Point( 5, 6 ), Point( 5, 5 ), Point( 6, 5 ), Point( 6, 2 ), Point( 5, 2 ), Point( 5, 1 ), Point( 4, 1 ), Point( 4, 0 ), Point( 4, 2 ), Point( 4, 5 ), Point( 4, 4 ), Point( 4, 3 ), },
},
["tags"] = {"generic", "acid", "acid_pool", "pistons", },
["pawn_count"] = 0, ["blocked_points"] = {Point(3,1), Point(3,2), Point(3,3), Point(3,4), Point(3,5), Point(3,6), Point(3,7), },
["blocked_type"] = {2, 2, 2, 2, 2, 2, 2, },
},


},
["state"] = 1, ["name"] = "Nano Silos", },

["region2"] = {["mission"] = "", ["state"] = 2, ["name"] = "Corporate HQ", ["objectives"] = {},
},

["region3"] = {["mission"] = "Mission2", ["player"] = {["battle_type"] = 0, ["iCurrentTurn"] = 0, ["iTeamTurn"] = 1, ["iState"] = 4, ["sMission"] = "Mission2", ["podReward"] = CreateEffect({}), ["secret"] = false, ["spawn_needed"] = false, ["env_time"] = 1000, ["actions"] = 0, ["iUndoTurn"] = 1, ["aiState"] = 0, ["aiDelay"] = 0.000000, ["aiSeed"] = 5207, ["victory"] = 2, ["undo_pawns"] = {},


["map_data"] = {["version"] = 7, ["dimensions"] = Point( 8, 8 ), ["name"] = "any10", 
["map"] = {{["loc"] = Point( 0, 0 ), ["terrain"] = 4, },
{["loc"] = Point( 0, 2 ), ["terrain"] = 0, ["poison"] = 1, ["acid_pool"] = 2, },
{["loc"] = Point( 0, 3 ), ["terrain"] = 4, },
{["loc"] = Point( 0, 4 ), ["terrain"] = 4, },
{["loc"] = Point( 0, 7 ), ["terrain"] = 4, },
{["loc"] = Point( 1, 0 ), ["terrain"] = 1, ["populated"] = 1, ["people1"] = 64, ["people2"] = 0, ["health_max"] = 1, ["shield"] = true, },
{["loc"] = Point( 1, 2 ), ["terrain"] = 0, ["custom"] = "conveyor1.png", },
{["loc"] = Point( 1, 3 ), ["terrain"] = 1, ["populated"] = 1, ["people1"] = 70, ["people2"] = 0, ["health_max"] = 1, },
{["loc"] = Point( 1, 4 ), ["terrain"] = 1, ["populated"] = 1, ["unique"] = "str_power1", ["people1"] = 72, ["people2"] = 0, ["health_max"] = 1, ["shield"] = true, },
{["loc"] = Point( 1, 7 ), ["terrain"] = 1, ["populated"] = 1, ["people1"] = 100, ["people2"] = 0, ["health_max"] = 1, },
{["loc"] = Point( 2, 0 ), ["terrain"] = 1, ["populated"] = 1, ["people1"] = 164, ["people2"] = 0, ["health_max"] = 2, },
{["loc"] = Point( 2, 1 ), ["terrain"] = 0, ["poison"] = 1, ["acid_pool"] = 1, },
{["loc"] = Point( 2, 6 ), ["terrain"] = 0, ["custom"] = "conveyor1.png", },
{["loc"] = Point( 2, 7 ), ["terrain"] = 1, ["populated"] = 1, ["people1"] = 131, ["people2"] = 0, ["health_max"] = 2, },
{["loc"] = Point( 3, 0 ), ["terrain"] = 4, },
{["loc"] = Point( 3, 3 ), ["terrain"] = 1, ["populated"] = 1, ["people1"] = 195, ["people2"] = 0, ["health_max"] = 2, ["shield"] = true, },
{["loc"] = Point( 3, 4 ), ["terrain"] = 1, ["populated"] = 1, ["people1"] = 204, ["people2"] = 0, ["health_max"] = 2, },
{["loc"] = Point( 3, 7 ), ["terrain"] = 4, },
{["loc"] = Point( 4, 0 ), ["terrain"] = 0, ["custom"] = "conveyor2.png", },
{["loc"] = Point( 4, 1 ), ["terrain"] = 0, ["custom"] = "conveyor2.png", },
{["loc"] = Point( 6, 0 ), ["terrain"] = 4, },
{["loc"] = Point( 6, 3 ), ["terrain"] = 4, },
{["loc"] = Point( 6, 4 ), ["terrain"] = 4, },
{["loc"] = Point( 6, 5 ), ["terrain"] = 0, ["custom"] = "conveyor2.png", },
{["loc"] = Point( 6, 6 ), ["terrain"] = 0, ["custom"] = "conveyor2.png", },
{["loc"] = Point( 6, 7 ), ["terrain"] = 4, },
{["loc"] = Point( 7, 0 ), ["terrain"] = 4, },
{["loc"] = Point( 7, 1 ), ["terrain"] = 0, ["poison"] = 1, ["acid_pool"] = 1, },
{["loc"] = Point( 7, 3 ), ["terrain"] = 4, },
{["loc"] = Point( 7, 4 ), ["terrain"] = 4, },
{["loc"] = Point( 7, 5 ), ["terrain"] = 0, ["poison"] = 1, ["acid_pool"] = 1, },
{["loc"] = Point( 7, 7 ), ["terrain"] = 4, },
},
["rain"] = 3, ["rain_type"] = 1, ["spawns"] = {"Crab1", "Hornet1", "Hornet1", },
["spawn_ids"] = {179, 180, 181, },
["spawn_points"] = {Point(7,2), Point(5,2), Point(5,3), },
["zones"] = {["flooding"] = {Point( 0, 1 ), Point( 1, 1 ), Point( 2, 2 ), Point( 1, 2 ), Point( 3, 5 ), Point( 2, 5 ), Point( 4, 6 ), Point( 3, 6 ), Point( 5, 7 ), Point( 4, 7 ), Point( 2, 6 ), Point( 0, 2 ), Point( 1, 5 ), Point( 0, 5 ), },
["satellite"] = {Point( 3, 6 ), Point( 5, 4 ), Point( 5, 3 ), Point( 3, 1 ), Point( 5, 6 ), Point( 5, 1 ), },
},
["tags"] = {"generic", "any_sector", "mountain", "flooding", "satellite", },
["pawn_count"] = 0, ["blocked_points"] = {Point(1,2), Point(2,6), Point(4,0), Point(4,1), Point(6,5), Point(6,6), },
["blocked_type"] = {2, 2, 2, 2, 2, 2, },
},


},
["state"] = 1, ["name"] = "Containment Zone J", },

["region4"] = {["mission"] = "Mission6", ["state"] = 0, ["name"] = "Venting Fields", },

["region5"] = {["mission"] = "Mission3", ["player"] = {["battle_type"] = 0, ["iCurrentTurn"] = 0, ["iTeamTurn"] = 1, ["iState"] = 4, ["sMission"] = "Mission3", ["podReward"] = CreateEffect({}), ["secret"] = false, ["spawn_needed"] = false, ["env_time"] = 1000, ["actions"] = 0, ["iUndoTurn"] = 1, ["aiState"] = 0, ["aiDelay"] = 0.000000, ["aiSeed"] = 22517, ["victory"] = 2, ["undo_pawns"] = {},


["map_data"] = {["version"] = 7, ["dimensions"] = Point( 8, 8 ), ["name"] = "disposal20", 
["map"] = {{["loc"] = Point( 0, 0 ), ["terrain"] = 3, },
{["loc"] = Point( 0, 3 ), ["terrain"] = 1, ["populated"] = 1, ["unique"] = "str_bar1", ["people1"] = 116, ["people2"] = 0, ["health_max"] = 1, },
{["loc"] = Point( 0, 5 ), ["terrain"] = 1, ["populated"] = 1, ["people1"] = 120, ["people2"] = 0, ["health_max"] = 1, },
{["loc"] = Point( 1, 3 ), ["terrain"] = 0, ["poison"] = 1, ["acid_pool"] = 3, },
{["loc"] = Point( 2, 2 ), ["terrain"] = 1, ["populated"] = 1, ["people1"] = 80, ["people2"] = 0, ["health_max"] = 1, },
{["loc"] = Point( 2, 4 ), ["terrain"] = 4, },
{["loc"] = Point( 2, 6 ), ["terrain"] = 1, ["populated"] = 1, ["people1"] = 124, ["people2"] = 0, ["health_max"] = 1, },
{["loc"] = Point( 3, 2 ), ["terrain"] = 1, ["populated"] = 1, ["people1"] = 200, ["people2"] = 0, ["health_max"] = 2, },
{["loc"] = Point( 3, 4 ), ["terrain"] = 4, },
{["loc"] = Point( 3, 6 ), ["terrain"] = 1, ["populated"] = 1, ["people1"] = 160, ["people2"] = 0, ["health_max"] = 2, },
{["loc"] = Point( 4, 7 ), ["terrain"] = 0, ["poison"] = 1, ["acid_pool"] = 0, },
{["loc"] = Point( 5, 0 ), ["terrain"] = 4, },
{["loc"] = Point( 5, 1 ), ["terrain"] = 4, },
{["loc"] = Point( 5, 4 ), ["terrain"] = 1, ["populated"] = 1, ["people1"] = 200, ["people2"] = 0, ["health_max"] = 2, },
{["loc"] = Point( 5, 5 ), ["terrain"] = 0, ["poison"] = 1, ["acid_pool"] = 2, },
{["loc"] = Point( 5, 6 ), ["terrain"] = 0, ["poison"] = 1, ["acid_pool"] = 0, },
{["loc"] = Point( 6, 0 ), ["terrain"] = 3, },
{["loc"] = Point( 6, 1 ), ["terrain"] = 4, },
{["loc"] = Point( 6, 3 ), ["terrain"] = 0, ["poison"] = 1, ["acid_pool"] = 3, },
{["loc"] = Point( 7, 0 ), ["terrain"] = 3, },
{["loc"] = Point( 7, 1 ), ["terrain"] = 3, },
{["loc"] = Point( 7, 2 ), ["terrain"] = 3, },
{["loc"] = Point( 7, 3 ), ["terrain"] = 0, ["poison"] = 1, ["acid_pool"] = 3, },
{["loc"] = Point( 7, 6 ), ["terrain"] = 3, },
{["loc"] = Point( 7, 7 ), ["terrain"] = 3, },
},
["spawns"] = {"Leaper1", "Crab1", "Jelly_Armor1", },
["spawn_ids"] = {176, 177, 178, },
["spawn_points"] = {Point(6,2), Point(5,2), Point(6,5), },
["zones"] = {["disposal"] = {Point( 0, 4 ), },
},
["tags"] = {"generic", "acid", "disposal", },
["pawn_count"] = 0, ["blocked_points"] = {},
["blocked_type"] = {},
},


},
["state"] = 1, ["name"] = "Waste Chambers", },

["region6"] = {["mission"] = "Mission4", ["state"] = 0, ["name"] = "Downtown", },

["region7"] = {["mission"] = "Mission5", ["state"] = 0, ["name"] = "Disposal Site C", },
}
 

GAME = { 
["Island"] = 4, 
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
["pilot"] = "random" 
}, 
[7] = { 
["cores"] = 1, 
["pilot"] = "random" 
}, 
[8] = { 
["cores"] = 1, 
["pilot"] = "random" 
} 
}, 
["Missions"] = { 
[1] = { 
["ID"] = "Mission_Acid", 
["BonusObjs"] = { 
[1] = 3, 
[2] = 1 
}, 
["AssetId"] = "Str_Power" 
}, 
[2] = { 
["BonusObjs"] = { 
[1] = 1 
}, 
["SpawnStart_Easy"] = { 
[1] = 2, 
[2] = 2, 
[3] = 3, 
[4] = 3 
}, 
["LiveEnvironment"] = { 
["Belts"] = { 
[1] = Point( 1, 2 ), 
[2] = Point( 2, 6 ), 
[3] = Point( 4, 1 ), 
[4] = Point( 4, 0 ), 
[5] = Point( 6, 6 ), 
[6] = Point( 6, 5 ) 
}, 
["BeltsDir"] = { 
[1] = 1, 
[2] = 1, 
[3] = 2, 
[4] = 2, 
[5] = 2, 
[6] = 2 
} 
}, 
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
[2] = 2 
}, 
["curr_upgradeRatio"] = { 
[1] = 1, 
[2] = 2 
}, 
["upgrade_streak"] = 0, 
["num_spawns"] = 3, 
["pawn_counts"] = { 
["Crab"] = 1, 
["Hornet"] = 2 
} 
}, 
["AssetId"] = "Str_Power", 
["BonusPool"] = { 
[1] = 3, 
[2] = 4, 
[3] = 5, 
[4] = 6 
}, 
["AssetLoc"] = Point( 1, 4 ), 
["ID"] = "Mission_BeltRandom", 
["VoiceEvents"] = { 
}, 
["DiffMod"] = 1, 
["SpawnsPerTurn"] = { 
[1] = 2, 
[2] = 3 
} 
}, 
[3] = { 
["Spawner"] = { 
["curr_weakRatio"] = { 
[1] = 2, 
[2] = 2 
}, 
["curr_upgradeRatio"] = { 
[1] = 1, 
[2] = 2 
}, 
["upgrade_streak"] = 0, 
["num_spawns"] = 3, 
["pawn_counts"] = { 
["Crab"] = 1, 
["Leaper"] = 1, 
["Jelly_Armor"] = 1 
} 
}, 
["AssetId"] = "Str_Bar", 
["AssetLoc"] = Point( 0, 3 ), 
["ID"] = "Mission_Survive", 
["VoiceEvents"] = { 
}, 
["LiveEnvironment"] = { 
}, 
["BonusObjs"] = { 
[1] = 5, 
[2] = 1 
} 
}, 
[4] = { 
["ID"] = "Mission_Disposal", 
["BonusObjs"] = { 
[1] = 1 
}, 
["DiffMod"] = 2, 
["AssetId"] = "Str_Robotics" 
}, 
[5] = { 
["BonusObjs"] = { 
[1] = 3, 
[2] = 1 
}, 
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
["AssetId"] = "Str_Battery", 
["ID"] = "Mission_Teleporter", 
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
["SpawnsPerTurn"] = { 
[1] = 2, 
[2] = 3 
} 
}, 
[6] = { 
["ID"] = "Mission_Train", 
["BonusObjs"] = { 
} 
}, 
[7] = { 
["BonusObjs"] = { 
[1] = 3, 
[2] = 1 
}, 
["LiveEnvironment"] = { 
["Belts"] = { 
[1] = Point( 3, 1 ), 
[2] = Point( 3, 2 ), 
[3] = Point( 3, 3 ), 
[4] = Point( 3, 4 ), 
[5] = Point( 3, 5 ), 
[6] = Point( 3, 6 ), 
[7] = Point( 3, 7 ) 
}, 
["BeltsDir"] = { 
[1] = 0, 
[2] = 0, 
[3] = 0, 
[4] = 0, 
[5] = 0, 
[6] = 0, 
[7] = 0 
} 
}, 
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
[1] = 1, 
[2] = 2 
}, 
["curr_upgradeRatio"] = { 
[1] = 1, 
[2] = 2 
}, 
["upgrade_streak"] = 0, 
["num_spawns"] = 3, 
["pawn_counts"] = { 
["Jelly_Armor"] = 1, 
["Hornet"] = 1, 
["Firefly"] = 1 
} 
}, 
["AssetId"] = "Str_Nimbus", 
["BonusPool"] = { 
[1] = 3, 
[2] = 4, 
[3] = 5, 
[4] = 6 
}, 
["AssetLoc"] = Point( 2, 5 ), 
["ID"] = "Mission_Belt", 
["VoiceEvents"] = { 
}, 
["SpawnStart_Easy"] = { 
[1] = 2, 
[2] = 2, 
[3] = 3, 
[4] = 3 
}, 
["SpawnsPerTurn"] = { 
[1] = 2, 
[2] = 3 
} 
}, 
[8] = { 
["ID"] = "Mission_BeetleBoss", 
["BonusObjs"] = { 
[1] = 1 
}, 
["AssetId"] = "Str_Tower" 
} 
}, 
["WeaponDeck"] = { 
[1] = "Prime_Punchmech", 
[2] = "Prime_Lightning", 
[3] = "Prime_ShieldBash", 
[4] = "Prime_Rockmech", 
[5] = "Prime_RightHook", 
[6] = "Prime_RocketPunch", 
[7] = "Prime_Leap", 
[8] = "Prime_SpinFist", 
[9] = "Prime_Sword", 
[10] = "Brute_Tankmech", 
[11] = "Brute_Jetmech", 
[12] = "Brute_Mirrorshot", 
[13] = "Brute_PhaseShot", 
[14] = "Brute_Grapple", 
[15] = "Brute_Shrapnel", 
[16] = "Brute_Sniper", 
[17] = "Brute_Unstable", 
[18] = "Brute_Heavyrocket", 
[19] = "Brute_Splitshot", 
[20] = "Brute_Bombrun", 
[21] = "Brute_Sonic", 
[22] = "Ranged_Rockthrow", 
[23] = "Ranged_Defensestrike", 
[24] = "Ranged_Rocket", 
[25] = "Ranged_Ignite", 
[26] = "Ranged_ScatterShot", 
[27] = "Ranged_BackShot", 
[28] = "Ranged_Ice", 
[29] = "Ranged_SmokeBlast", 
[30] = "Ranged_Fireball", 
[31] = "Ranged_RainingVolley", 
[32] = "Ranged_Wide", 
[33] = "Ranged_Dual", 
[34] = "Science_Gravwell", 
[35] = "Science_Swap", 
[36] = "Science_Repulse", 
[37] = "Science_AcidShot", 
[38] = "Science_Confuse", 
[39] = "Science_SmokeDefense", 
[40] = "Science_FireBeam", 
[41] = "Science_FreezeBeam", 
[42] = "Science_LocalShield", 
[43] = "Science_PushBeam", 
[44] = "Support_Boosters", 
[45] = "Support_Smoke", 
[46] = "Support_Refrigerate", 
[47] = "Support_Destruct", 
[48] = "DeploySkill_ShieldTank", 
[49] = "DeploySkill_Tank", 
[50] = "DeploySkill_PullTank", 
[51] = "Support_Force", 
[52] = "Support_SmokeDrop", 
[53] = "Support_Missiles", 
[54] = "Support_Wind", 
[55] = "Support_Blizzard", 
[56] = "Passive_FlameImmune", 
[57] = "Passive_Electric", 
[58] = "Passive_Leech", 
[59] = "Passive_Defenses", 
[60] = "Passive_Burrows", 
[61] = "Passive_AutoShields", 
[62] = "Passive_Psions", 
[63] = "Passive_Boosters", 
[64] = "Passive_Medical", 
[65] = "Passive_FriendlyFire", 
[66] = "Passive_ForceAmp", 
[67] = "Passive_CritDefense" 
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
[7] = "Pilot_Recycler", 
[8] = "Pilot_Assassin", 
[9] = "Pilot_Leader", 
[10] = "Pilot_Repairman" 
}, 
["SeenPilots"] = { 
[1] = "Pilot_Detritus", 
[2] = "Pilot_Archive", 
[3] = "Pilot_Miner", 
[4] = "Pilot_Hotshot", 
[5] = "Pilot_Genius" 
} 
}

 

SquadData = {
["money"] = 0, ["cores"] = 0, ["bIsFavor"] = false, ["repairs"] = 0, ["CorpReward"] = {CreateEffect({weapon = "Prime_Flamethrower",}), CreateEffect({pilot = "Pilot_Genius",}), CreateEffect({power = 2,}), },
["RewardClaimed"] = false, 


["pawn0"] = {["type"] = "LaserMech", ["name"] = "", ["id"] = 0, ["mech"] = true, ["offset"] = 2, 
["reactor"] = {["iNormalPower"] = 0, ["iUsedPower"] = 1, ["iBonusPower"] = 0, ["iUsedBonus"] = 0, ["iUndoPower"] = 0, ["iUsedUndo"] = 1, },
["movePower"] = {0, },
["healthPower"] = {0, },
["primary"] = "Prime_Lasermech", ["primary_power"] = {1, },
["primary_power_class"] = false, ["primary_mod1"] = {0, },
["primary_mod2"] = {0, 0, 0, },
["primary_uses"] = 1, ["primary_damaged"] = false, ["primary_starting"] = true, ["secondary"] = "Prime_Areablast", ["secondary_power"] = {3, },
["secondary_power_class"] = false, ["secondary_mod1"] = {0, 0, },
["secondary_mod2"] = {0, 0, },
["secondary_uses"] = 1, ["secondary_damaged"] = false, ["secondary_starting"] = true, ["pilot"] = {["id"] = "Pilot_Detritus", ["name"] = "Miguel Torcasio", ["name_id"] = "", ["renamed"] = false, ["skill1"] = 1, ["skill2"] = 3, ["exp"] = 15, ["level"] = 1, ["travel"] = 0, ["final"] = 0, ["starting"] = true, },
["iTeamId"] = 1, ["iFaction"] = 0, ["health"] = 3, ["max_health"] = 3, ["iOwner"] = 0, },


["pawn1"] = {["type"] = "ChargeMech", ["name"] = "", ["id"] = 1, ["mech"] = true, ["offset"] = 2, 
["reactor"] = {["iNormalPower"] = 0, ["iUsedPower"] = 2, ["iBonusPower"] = 0, ["iUsedBonus"] = 0, ["iUndoPower"] = 0, ["iUsedUndo"] = 1, },
["movePower"] = {3, },
["healthPower"] = {1, },
["primary"] = "Brute_Beetle", ["primary_power"] = {1, },
["primary_power_class"] = false, ["primary_mod1"] = {0, },
["primary_mod2"] = {0, 0, 0, },
["primary_uses"] = 1, ["primary_damaged"] = false, ["primary_starting"] = true, ["secondary"] = "Support_Repair", ["secondary_power"] = {},
["secondary_power_class"] = false, ["secondary_mod1"] = {0, },
["secondary_mod2"] = {0, },
["secondary_uses"] = 1, ["secondary_damaged"] = false, ["secondary_starting"] = true, ["pilot"] = {["id"] = "Pilot_Hotshot", ["name"] = "Henry Kwan", ["name_id"] = "Pilot_Hotshot_Name", ["renamed"] = false, ["skill1"] = 2, ["skill2"] = 1, ["exp"] = 24, ["level"] = 0, ["travel"] = 0, ["final"] = 0, ["starting"] = false, },
["iTeamId"] = 1, ["iFaction"] = 0, ["health"] = 5, ["max_health"] = 5, ["iOwner"] = 1, },


["pawn2"] = {["type"] = "ScienceMech", ["name"] = "", ["id"] = 2, ["mech"] = true, ["offset"] = 2, 
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
["iTeamId"] = 1, ["iFaction"] = 0, ["health"] = 4, ["max_health"] = 4, ["iOwner"] = 2, },


["storage_size"] = 4, ["storage_3"] = {["pilot"] = true, ["id"] = "Pilot_Archive", ["name"] = "Thuy Koleda", ["name_id"] = "", ["renamed"] = false, ["skill1"] = 2, ["skill2"] = 3, ["exp"] = 13, ["level"] = 1, ["travel"] = 0, ["final"] = 0, ["starting"] = true, },
["CorpStore"] = {CreateEffect({weapon = "Prime_Shift",money = -1,}), CreateEffect({weapon = "Ranged_Artillerymech",money = -1,}), CreateEffect({weapon = "Prime_Spear",money = -1,}), CreateEffect({weapon = "Prime_Smash",money = -1,}), CreateEffect({money = -3,stock = -1,cores = 1,}), CreateEffect({money = -1,power = 1,stock = -1,}), },
["store_undo_size"] = 0, }
 

