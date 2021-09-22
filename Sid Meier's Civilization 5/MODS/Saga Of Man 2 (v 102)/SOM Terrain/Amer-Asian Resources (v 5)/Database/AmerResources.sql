--------------------------------------------------------------------------------------------------
--Table Adds
--------------------------------------------------------------------------------------------------
ALTER TABLE Resources ADD COLUMN Rivers boolean default 0;

--------------------------------------------------------------------------------------------------
--Resources
--------------------------------------------------------------------------------------------------
INSERT INTO Resources (Type,	ResourceClassType,			Flatlands,	MaxLatitude,	Happiness,	TechReveal,	TechCityTrade,			IconAtlas,				PortraitIndex,	ArtDefineTag,					IconString,					Description,					Civilopedia,								Help,									AITradeModifier,	ResourceUsage,	AIObjective,	PlacementOrder,	ConstAppearance,	MinAreaSize,	Player,		Normalize)
SELECT 'RESOURCE_SALTPETER',	'RESOURCECLASS_BONUS',			1,			90,				NULL,	'TECH_GUNPOWDER',		'TECH_GUNPOWDER',		'SALTPETER_RESOURCE_ATLAS',	    0,				'ART_DEF_RESOURCE_SALT',	'[ICON_RES_SALTPETER]',	'TXT_KEY_RESOURCE_SALTPETER',	'TXT_KEY_CIV5_RESOURCE_SALTPETER_TEXT',	                NULL,									10,					2,				1,				1,				100,				3,		         67,          0 UNION ALL
SELECT 'RESOURCE_COPPER2',	'RESOURCECLASS_BONUS',			1,			90,				NULL,		NULL,	'TECH_MINING',		'EXPANSION_RESOURCE_ATLAS',	    1,				'ART_DEF_RESOURCE_COPPER',	'[ICON_RES_COPPER]',	'TXT_KEY_RESOURCE_COPPER',	'TXT_KEY_CIV5_RESOURCE_COPPER_TEXT','Required for Bronze Age units.',									10,					2,				1,				1,				100,				3,		         67,          0 UNION ALL
SELECT 'RESOURCE_GRANITE',	'RESOURCECLASS_BONUS',			1,			90,				.1,		NULL,	'TECH_TOOLS',		'EXTENDED_RESOURCE_ATLAS',	    0,				'ART_DEF_RESOURCE_STONE',	'[ICON_RES_STONE]',	'TXT_KEY_RESOURCE_GRANITE',	'TXT_KEY_CIV5_RESOURCE_GRANITE_TEXT',	                NULL,									10,					2,				1,				1,				100,				3,		         67,          0;

INSERT INTO Resources (Type,	ResourceClassType,		Rivers,	Hills,	Flatlands,	MaxLatitude, Happiness,	TechReveal,		TechCityTrade,			IconAtlas,				PortraitIndex,	ArtDefineTag,					IconString,					Description,					Civilopedia,								Help,									AITradeModifier,	ResourceUsage,	AIObjective,	PlacementOrder,	ConstAppearance,	MinAreaSize,	Player,		Normalize)
SELECT 'RESOURCE_FA_RICE',		'RESOURCECLASS_BONUS',	1,		0,		0,			50,				1,      NULL,			'TECH_POTTERY',		'AMER_RESOURCE_ATLAS',	2,				'ART_DEF_RESOURCE_FA_RICE',		'[ICON_RES_FA_RICE]',		'TXT_KEY_RESOURCE_FA_RICE',		'TXT_KEY_CIV5_RESOURCE_FA_RICE_TEXT',		'TXT_KEY_RESOURCE_FA_RICE_HELP',		0,					0,				0,				3,				50,					3,				0,			1 UNION ALL
SELECT 'RESOURCE_FA_MAIZE',		'RESOURCECLASS_BONUS',	0,		0,		1,			60,				1,      NULL,			'TECH_POTTERY',		'AMER_RESOURCE_ATLAS',	0,				'ART_DEF_RESOURCE_FA_MAIZE',	'[ICON_RES_FA_MAIZE]',		'TXT_KEY_RESOURCE_FA_MAIZE',	'TXT_KEY_CIV5_RESOURCE_FA_MAIZE_TEXT',		NULL,									0,					0,				0,				3,				50,					3,				0,			1;

INSERT INTO Resources (Type,	ResourceClassType,		Rivers,	Hills,	Flatlands,	MaxLatitude,	Happiness,		TechCityTrade,			IconAtlas,				PortraitIndex,	ArtDefineTag,					IconString,					Description,					Civilopedia,								Help,									AITradeModifier,	ResourceUsage,	AIObjective,	PlacementOrder,	ConstAppearance,	MinAreaSize,	Player,		Normalize)
SELECT 'RESOURCE_FA_TEA',		'RESOURCECLASS_LUXURY',	0,		1,		0,			40,				1,				'TECH_TRAPPING',		'AMER_RESOURCE_ATLAS',	3,				'ART_DEF_RESOURCE_FA_TEA',		'[ICON_RES_FA_TEA]',		'TXT_KEY_RESOURCE_FA_TEA',		'TXT_KEY_CIV5_RESOURCE_FA_TEA_TEXT',		NULL,									10,					2,				0,				3,				50,					3,				67,			0 UNION ALL
SELECT 'RESOURCE_FA_TOBACCO',	'RESOURCECLASS_LUXURY',	0,		0,		0,			40,				1,				'TECH_TRAPPING',		'AMER_RESOURCE_ATLAS',	1,				'ART_DEF_RESOURCE_FA_TOBACCO',	'[ICON_RES_FA_TOBACCO]',	'TXT_KEY_RESOURCE_FA_TOBACCO',	'TXT_KEY_CIV5_RESOURCE_FA_TOBACCO_TEXT',	NULL,									10,					2,				0,				3,				50,					3,				67,			0 UNION ALL
SELECT 'RESOURCE_LAVENDERZ',  	  'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  1,	   'TECH_TRAPPING', 		'REP_RESOURCE_ATLAS_INCENSE',	      7,				'ART_DEF_RESOURCE_LAVENDER',	'[ICON_INC_LAVENDER]',	    'TXT_KEY_RESOURCE_LAVENDERZ',	      'TXT_KEY_CIV5_RESOURCE_LAVENDERZ_TEXT',	               NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
SELECT 'RESOURCE_MAPLEZ',	      'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  1,	   'TECH_SCIENTIFIC_METHOD',		    'RUBBER_ATLAS',	          0,				'ART_DEF_RESOURCE_RUBBER',	    '[ICON_RES_RUBBER]',	        'TXT_KEY_RESOURCE_MAPLEZ',	          'TXT_KEY_CIV5_RESOURCE_MAPLEZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
SELECT 'RESOURCE_APPLEZ',	      'RESOURCECLASS_LUXURY',  0,		1,		0,			90,				  1,	   'TECH_TRAPPING',	        'REP_RESOURCE_ATLAS_FRUITS',	      2,				'ART_DEF_RESOURCE_APPLE',	    '[ICON_FRU_APPLE]',	        'TXT_KEY_RESOURCE_APPLEZ',	          'TXT_KEY_CIV5_RESOURCE_APPLEZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
SELECT 'RESOURCE_MANGOZ',	      'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  1,	   'TECH_TRAPPING',	        'REP_RESOURCE_ATLAS_FRUITS',	      4,				'ART_DEF_RESOURCE_MANGO',	    '[ICON_FRU_MANGO]',	        'TXT_KEY_RESOURCE_MANGOZ',	          'TXT_KEY_CIV5_RESOURCE_MANGOZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
SELECT 'RESOURCE_RASPBERRYZ',	  'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  1,	   'TECH_TRAPPING',	        'REP_RESOURCE_ATLAS_FRUITS',	      8,				'ART_DEF_RESOURCE_RASPBERRY',   '[ICON_FRU_RASPBERRY]',	    'TXT_KEY_RESOURCE_RASPBERRYZ',	      'TXT_KEY_CIV5_RESOURCE_RASPBERRYZ_TEXT',	               NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
SELECT 'RESOURCE_BARLEYZ',	      'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  1,	   'TECH_TRAPPING',	        'REP_RESOURCE_ATLAS_CROPS',	          2,				'ART_DEF_RESOURCE_BARLEY',	    '[ICON_CRO_BARLEY]',	    'TXT_KEY_RESOURCE_BARLEYZ',	          'TXT_KEY_CIV5_RESOURCE_BARLEYZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
SELECT 'RESOURCE_COFFEEZ',	      'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  1,	   'TECH_TRAPPING',	        'REP_RESOURCE_ATLAS_CROPS',	          10,				'ART_DEF_RESOURCE_COFFEE',	    '[ICON_CRO_COFFEE]',	    'TXT_KEY_RESOURCE_COFFEEZ',	          'TXT_KEY_CIV5_RESOURCE_COFFEEZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
SELECT 'RESOURCE_HEMPZ',	      'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  1,	   'TECH_TRAPPING',	        'REP_RESOURCE_ATLAS_CROPS',	          0,				'ART_DEF_RESOURCE_HEMP',	    '[ICON_CRO_HEMP]',	        'TXT_KEY_RESOURCE_HEMPZ',	          'TXT_KEY_CIV5_RESOURCE_HEMPZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
SELECT 'RESOURCE_PEANUTZ',	      'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  1,	   'TECH_TRAPPING',	        'REP_RESOURCE_ATLAS_CROPS',	          6,				'ART_DEF_RESOURCE_PEANUT',	    '[ICON_CRO_PEANUT]',	    'TXT_KEY_RESOURCE_PEANUTZ',	          'TXT_KEY_CIV5_RESOURCE_PEANUTZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
SELECT 'RESOURCE_POTATOEZ',	      'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  1,	   'TECH_TRAPPING',	        'REP_RESOURCE_ATLAS_CROPS',	          4,				'ART_DEF_RESOURCE_POTATOE',	    '[ICON_CRO_POTATOE]',	    'TXT_KEY_RESOURCE_POTATOEZ',	      'TXT_KEY_CIV5_RESOURCE_POTATOEZ_TEXT',	               NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
SELECT 'RESOURCE_SOYBEANZ',	      'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  1,	   'TECH_TRAPPING',	        'REP_RESOURCE_ATLAS_CROPS',	          5,				'ART_DEF_RESOURCE_SOYBEAN',	    '[ICON_CRO_SOYBEAN]',	    'TXT_KEY_RESOURCE_SOYBEANZ',	      'TXT_KEY_CIV5_RESOURCE_SOYBEANZ_TEXT',	               NULL,									       10,					2,				0,				3,				50,					3,			67,			 0;


--------------------------------------------------------------------------------------------------
--Resource Yield Changes
--------------------------------------------------------------------------------------------------
INSERT INTO Resource_YieldChanges (ResourceType,	YieldType,			Yield)
SELECT 'RESOURCE_LAVENDERZ',                        'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_LAVENDERZ',                        'YIELD_HEALTH',       1  UNION ALL
SELECT 'RESOURCE_MAPLEZ',                           'YIELD_PRODUCTION',  1 UNION ALL
SELECT 'RESOURCE_MAPLEZ',                           'YIELD_GOLD',  1 UNION ALL
SELECT 'RESOURCE_APPLEZ',                           'YIELD_FOOD',        1 UNION ALL
SELECT 'RESOURCE_APPLEZ',                           'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_MANGOZ',                           'YIELD_FOOD',        1 UNION ALL
SELECT 'RESOURCE_MANGOZ',                           'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_RASPBERRYZ',                       'YIELD_FOOD',        1 UNION ALL
SELECT 'RESOURCE_RASPBERRYZ',                       'YIELD_FOOD',        1 UNION ALL
SELECT 'RESOURCE_BARLEYZ',                          'YIELD_FOOD',        2 UNION ALL
SELECT 'RESOURCE_COFFEEZ',                            'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_COFFEEZ',                          'YIELD_PRODUCTION',  1 UNION ALL
SELECT 'RESOURCE_HEMPZ',                            'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_HEMPZ',                            'YIELD_PRODUCTION',  1 UNION ALL
SELECT 'RESOURCE_HEMPZ',                            'YIELD_HEALTH',  1 UNION ALL
SELECT 'RESOURCE_PEANUTZ',                          'YIELD_FOOD',        1 UNION ALL
SELECT 'RESOURCE_PEANUTZ',                          'YIELD_FOOD',        1 UNION ALL
SELECT 'RESOURCE_POTATOEZ',                         'YIELD_FOOD',        3 UNION ALL
SELECT 'RESOURCE_SOYBEANZ',                         'YIELD_FOOD',        2 UNION ALL
SELECT 'RESOURCE_SALTPETER',							'YIELD_PRODUCTION',		1 UNION ALL
SELECT 'RESOURCE_COPPER2',							'YIELD_PRODUCTION',		1 UNION ALL
SELECT 'RESOURCE_COPPER2',							'YIELD_GOLD',		1 UNION ALL
SELECT 'RESOURCE_GRANITE',							'YIELD_PRODUCTION',		2 UNION ALL
SELECT 'RESOURCE_FA_TEA',							'YIELD_HEALTH',		1 UNION ALL
SELECT 'RESOURCE_FA_TEA',							'YIELD_GOLD',		1 UNION ALL
SELECT 'RESOURCE_FA_MAIZE',							'YIELD_FOOD',		3 UNION ALL
SELECT 'RESOURCE_FA_TOBACCO',						'YIELD_PRODUCTION',	1 UNION ALL
SELECT 'RESOURCE_FA_TOBACCO',						'YIELD_GOLD',	1 UNION ALL
SELECT 'RESOURCE_FA_RICE',							'YIELD_FOOD',		3;

--------------------------------------------------------------------------------------------------
--Resource Quantity Types
--------------------------------------------------------------------------------------------------
--INSERT INTO Resource_QuantityTypes (ResourceType, Quantity)
--SELECT 'RESOURCE_SALTPETER',		3 UNION ALL
--SELECT 'RESOURCE_SALTPETER',		3 UNION ALL
--SELECT 'RESOURCE_COPPER2',		4 UNION ALL
--SELECT 'RESOURCE_COPPER2',		4;
--------------------------------------------------------------------------------------------------
--Improvement Tech Yield Changes
--------------------------------------------------------------------------------------------------
--INSERT INTO Improvement_TechYieldChanges (ImprovementType, TechType, YieldType, Yield)
--SELECT 'RESOURCE_SALTPETER', 'TECH_FERTILIZER', 'YIELD_FOOD', 1;

--------------------------------------------------------------------------------------------------
--Resource Flavors
--------------------------------------------------------------------------------------------------
INSERT INTO Resource_Flavors (ResourceType,	FlavorType,				Flavor)
SELECT 'RESOURCE_LAVENDERZ',              'FLAVOR_HAPPINESS',   10 UNION ALL
SELECT 'RESOURCE_MAPLEZ',                 'FLAVOR_PRODUCTION',  10 UNION ALL
SELECT 'RESOURCE_APPLEZ',                 'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_MANGOZ',                 'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_RASPBERRYZ',             'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_BARLEYZ',                'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_COFFEEZ',                'FLAVOR_PRODUCTION',  10 UNION ALL
SELECT 'RESOURCE_COFFEEZ',                'FLAVOR_HAPPINESS',  10 UNION ALL
SELECT 'RESOURCE_HEMPZ',                  'FLAVOR_PRODUCTION',  10 UNION ALL
SELECT 'RESOURCE_HEMPZ',                  'FLAVOR_HAPPINESS',  10 UNION ALL
SELECT 'RESOURCE_PEANUTZ',                'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_POTATOEZ',               'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_SOYBEANZ',               'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_SALTPETER',					'FLAVOR_PRODUCTION',	10 UNION ALL
SELECT 'RESOURCE_SALTPETER',					'FLAVOR_OFFENSE',	10 UNION ALL
SELECT 'RESOURCE_SALTPETER',					'FLAVOR_DEFENSE',	10 UNION ALL
SELECT 'RESOURCE_GRANITE',					'FLAVOR_PRODUCTION',	10 UNION ALL
SELECT 'RESOURCE_COPPER2',					'FLAVOR_PRODUCTION',	10 UNION ALL
SELECT 'RESOURCE_COPPER2',					'FLAVOR_GOLD',			10 UNION ALL
SELECT 'RESOURCE_FA_TEA',					'FLAVOR_HAPPINESS',		30 UNION ALL
SELECT 'RESOURCE_FA_TEA',					'FLAVOR_GOLD',			10 UNION ALL
SELECT 'RESOURCE_FA_MAIZE',					'FLAVOR_GROWTH',		20 UNION ALL
SELECT 'RESOURCE_FA_MAIZE',					'FLAVOR_GOLD',			20 UNION ALL
SELECT 'RESOURCE_FA_TOBACCO',				'FLAVOR_HAPPINESS',		60 UNION ALL
SELECT 'RESOURCE_FA_TOBACCO',				'FLAVOR_PRODUCTION',	10 UNION ALL
SELECT 'RESOURCE_FA_TOBACCO',				'FLAVOR_GROWTH',	   -10 UNION ALL
SELECT 'RESOURCE_FA_RICE',					'FLAVOR_GROWTH',		40 UNION ALL
SELECT 'RESOURCE_FA_RICE',					'FLAVOR_GOLD',			10;

--------------------------------------------------------------------------------------------------
--Resource Terrains
--------------------------------------------------------------------------------------------------
INSERT INTO Resource_TerrainBooleans (ResourceType,	TerrainType)
SELECT 'RESOURCE_LAVENDERZ',                      'TERRAIN_GRASS'  UNION ALL
SELECT 'RESOURCE_APPLEZ',                         'TERRAIN_GRASS' UNION ALL
SELECT 'RESOURCE_MANGOZ',                         'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_RASPBERRYZ',                     'TERRAIN_GRASS' UNION ALL
SELECT 'RESOURCE_BARLEYZ',                        'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_COFFEEZ',                        'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_HEMPZ',                          'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_PEANUTZ',                        'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_POTATOEZ',                       'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_SOYBEANZ',                       'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_SALTPETER',							'TERRAIN_GRASS' UNION ALL
SELECT 'RESOURCE_SALTPETER',							'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_SALTPETER',							'TERRAIN_DESERT' UNION ALL
SELECT 'RESOURCE_GRANITE',							'TERRAIN_GRASS' UNION ALL
SELECT 'RESOURCE_GRANITE',							'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_GRANITE',							'TERRAIN_DESERT' UNION ALL
SELECT 'RESOURCE_GRANITE',							'TERRAIN_TUNDRA' UNION ALL
SELECT 'RESOURCE_GRANITE',							'TERRAIN_SNOW' UNION ALL
SELECT 'RESOURCE_COPPER2',							'TERRAIN_GRASS' UNION ALL
SELECT 'RESOURCE_COPPER2',							'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_COPPER2',							'TERRAIN_DESERT' UNION ALL
SELECT 'RESOURCE_COPPER2',							'TERRAIN_TUNDRA' UNION ALL
SELECT 'RESOURCE_COPPER2',							'TERRAIN_SNOW' UNION ALL
SELECT 'RESOURCE_FA_TEA',							'TERRAIN_GRASS' UNION ALL
SELECT 'RESOURCE_FA_TEA',							'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_FA_MAIZE',							'TERRAIN_GRASS' UNION ALL
SELECT 'RESOURCE_FA_RICE',							'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_FA_RICE',							'TERRAIN_GRASS';

--------------------------------------------------------------------------------------------------
--Resource Features
--------------------------------------------------------------------------------------------------
INSERT INTO Resource_FeatureBooleans (ResourceType,	FeatureType)
SELECT 'RESOURCE_MAPLEZ',                            'FEATURE_JUNGLE'         UNION ALL

SELECT 'RESOURCE_FA_TOBACCO',						'FEATURE_FOREST' UNION ALL
SELECT 'RESOURCE_FA_TOBACCO',						'FEATURE_JUNGLE' UNION ALL
SELECT 'RESOURCE_FA_RICE',							'FEATURE_MARSH' UNION ALL
SELECT 'RESOURCE_FA_RICE',							'FEATURE_FLOOD_PLAINS';

--------------------------------------------------------------------------------------------------
--Resource Feature Terrains
--------------------------------------------------------------------------------------------------
INSERT INTO Resource_FeatureTerrainBooleans (ResourceType,	TerrainType)
SELECT 'RESOURCE_MAPLEZ',                            'TERRAIN_GRASS'           UNION ALL
SELECT 'RESOURCE_MAPLEZ',                            'TERRAIN_PLAINS'          UNION ALL

SELECT 'RESOURCE_FA_TOBACCO',								'TERRAIN_GRASS' UNION ALL
SELECT 'RESOURCE_FA_TOBACCO',								'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_FA_RICE',									'TERRAIN_DESERT';

--------------------------------------------------------------------------------------------------
--Resource Improvements
--------------------------------------------------------------------------------------------------
INSERT INTO Improvement_ResourceTypes (ResourceType,	ImprovementType)
SELECT 'RESOURCE_LAVENDERZ',                            'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_MAPLEZ',                               'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_APPLEZ',                               'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_MANGOZ',                               'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_RASPBERRYZ',                           'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_BARLEYZ',                              'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_COFFEEZ',                              'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_HEMPZ',                                'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_PEANUTZ',                              'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_POTATOEZ',                             'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_SOYBEANZ',                             'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_GRANITE',								'IMPROVEMENT_QUARRY' UNION ALL
SELECT 'RESOURCE_SALTPETER',								'IMPROVEMENT_MINE' UNION ALL
SELECT 'RESOURCE_COPPER2',								'IMPROVEMENT_MINE' UNION ALL
SELECT 'RESOURCE_FA_TEA',								'IMPROVEMENT_PLANTATION' UNION ALL
SELECT 'RESOURCE_FA_MAIZE',								'IMPROVEMENT_PLANTATION' UNION ALL
SELECT 'RESOURCE_FA_TOBACCO',							'IMPROVEMENT_PLANTATION' UNION ALL
SELECT 'RESOURCE_FA_RICE',								'IMPROVEMENT_PLANTATION';

--------------------------------------------------------------------------------------------------
--Resource Improvement Yields
--------------------------------------------------------------------------------------------------
INSERT INTO Improvement_ResourceType_Yields (ResourceType,	ImprovementType,			YieldType,			Yield)
SELECT 'RESOURCE_LAVENDERZ',                                'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             1 UNION ALL
SELECT 'RESOURCE_LAVENDERZ',                                'IMPROVEMENT_PLANTATION',     'YIELD_HEALTH',          1 UNION ALL
SELECT 'RESOURCE_MAPLEZ',                                   'IMPROVEMENT_PLANTATION',     'YIELD_PRODUCTION',       1 UNION ALL
SELECT 'RESOURCE_MAPLEZ',                                   'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             1 UNION ALL
SELECT 'RESOURCE_APPLEZ',                                   'IMPROVEMENT_PLANTATION',     'YIELD_FOOD',             2 UNION ALL
SELECT 'RESOURCE_MANGOZ',                                   'IMPROVEMENT_PLANTATION',     'YIELD_FOOD',             2 UNION ALL
SELECT 'RESOURCE_RASPBERRYZ',                               'IMPROVEMENT_PLANTATION',     'YIELD_FOOD',             2 UNION ALL
SELECT 'RESOURCE_BARLEYZ',                                  'IMPROVEMENT_PLANTATION',     'YIELD_FOOD',             3 UNION ALL
SELECT 'RESOURCE_COFFEEZ',                                  'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             1 UNION ALL
SELECT 'RESOURCE_COFFEEZ',                                  'IMPROVEMENT_PLANTATION',     'YIELD_PRODUCTION',       1 UNION ALL
SELECT 'RESOURCE_HEMPZ',                                    'IMPROVEMENT_PLANTATION',     'YIELD_PRODUCTION',       1 UNION ALL
SELECT 'RESOURCE_HEMPZ',                                    'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',       1 UNION ALL
SELECT 'RESOURCE_PEANUTZ',                                  'IMPROVEMENT_PLANTATION',     'YIELD_FOOD',             2 UNION ALL
SELECT 'RESOURCE_POTATOEZ',                                 'IMPROVEMENT_PLANTATION',     'YIELD_FOOD',             3 UNION ALL
SELECT 'RESOURCE_SOYBEANZ',                                 'IMPROVEMENT_PLANTATION',     'YIELD_FOOD',             2 UNION ALL
SELECT 'RESOURCE_GRANITE',									'IMPROVEMENT_QUARRY',	'YIELD_PRODUCTION',		2 UNION ALL
SELECT 'RESOURCE_COPPER2',									'IMPROVEMENT_MINE',	'YIELD_PRODUCTION',		2 UNION ALL
SELECT 'RESOURCE_FA_TEA',									'IMPROVEMENT_PLANTATION',	'YIELD_GOLD',		2 UNION ALL
SELECT 'RESOURCE_FA_MAIZE',									'IMPROVEMENT_PLANTATION',	'YIELD_FOOD',		3 UNION ALL
SELECT 'RESOURCE_FA_TOBACCO',								'IMPROVEMENT_PLANTATION',	'YIELD_GOLD',		2 UNION ALL
SELECT 'RESOURCE_FA_RICE',									'IMPROVEMENT_PLANTATION',	'YIELD_FOOD',		3;

--------------------------------------------------------------------------------------------------
--Icon Atlas 
--------------------------------------------------------------------------------------------------
INSERT INTO IconTextureAtlases (Atlas,	IconSize,	IconsPerRow,	IconsPerColumn,	Filename)
SELECT 'AMER_RESOURCE_ATLAS',			256,		4,				4,				'AmerResource256.dds' UNION ALL
SELECT 'AMER_RESOURCE_ATLAS',			80,			4,				4,				'AmerResource80.dds' UNION ALL
SELECT 'AMER_RESOURCE_ATLAS',			64,			4,				4,				'AmerResource64.dds' UNION ALL
SELECT 'AMER_RESOURCE_ATLAS',			45,			4,				4,				'AmerResource45.dds' UNION ALL
SELECT 'REP_RESOURCE_ATLAS_SEA',			256,		8,				8,		'Sea_Resources_IconTemplate256.dds' UNION ALL
SELECT 'REP_RESOURCE_ATLAS_SEA',			80,			8,				8,		'Sea_Resources_IconTemplate80.dds'  UNION ALL
SELECT 'REP_RESOURCE_ATLAS_SEA',			64,			8,				8,		'Sea_Resources_IconTemplate64.dds'  UNION ALL
SELECT 'REP_RESOURCE_ATLAS_SEA',			45,			8,				8,		'Sea_Resources_IconTemplate45.dds'  UNION ALL
SELECT 'REP_RESOURCE_ATLAS_MINERALS',       256,        8,              8,      'MineralIcons256.dds'               UNION ALL
SELECT 'REP_RESOURCE_ATLAS_MINERALS',       80,         8,              8,      'MineralIcons80.dds'                UNION ALL
SELECT 'REP_RESOURCE_ATLAS_MINERALS',       64,         8,              8,      'MineralIcons64.dds'                UNION ALL
SELECT 'REP_RESOURCE_ATLAS_MINERALS',       45,         8,              8,      'MineralIcons45.dds'                UNION ALL
SELECT 'REP_RESOURCE_ATLAS_INCENSE',        256,        8,              8,      'IncenseIcon256.dds'                UNION ALL
SELECT 'REP_RESOURCE_ATLAS_INCENSE',        80,         8,              8,      'IncenseIcon80.dds'                 UNION ALL
SELECT 'REP_RESOURCE_ATLAS_INCENSE',        64,         8,              8,      'IncenseIcon64.dds'                 UNION ALL
SELECT 'REP_RESOURCE_ATLAS_INCENSE',        45,         8,              8,      'IncenseIcon45.dds'                 UNION ALL
SELECT 'REP_RESOURCE_ATLAS_TREE',           256,        8,              8,      'TreeIcons256.dds'                  UNION ALL
SELECT 'REP_RESOURCE_ATLAS_TREE',           80,         8,              8,      'TreeIcons80.dds'                   UNION ALL
SELECT 'REP_RESOURCE_ATLAS_TREE',           64,         8,              8,      'TreeIcons64.dds'                   UNION ALL
SELECT 'REP_RESOURCE_ATLAS_TREE',           45,         8,              8,      'TreeIcons45.dds'                   UNION ALL
SELECT 'REP_RESOURCE_ATLAS_LANIMALS',       256,        8,              8,      'LAnimaliconatlas256.dds'           UNION ALL
SELECT 'REP_RESOURCE_ATLAS_LANIMALS',       80,         8,              8,      'LAnimaliconatlas80.dds'            UNION ALL
SELECT 'REP_RESOURCE_ATLAS_LANIMALS',       64,         8,              8,      'LAnimaliconatlas64.dds'            UNION ALL
SELECT 'REP_RESOURCE_ATLAS_LANIMALS',       45,         8,              8,      'LAnimaliconatlas45.dds'            UNION ALL
SELECT 'REP_RESOURCE_ATLAS_FRUITS',         256,        8,              8,      'FruitIconAtlas256.dds'             UNION ALL
SELECT 'REP_RESOURCE_ATLAS_FRUITS',         80,         8,              8,      'FruitIconAtlas80.dds'              UNION ALL
SELECT 'REP_RESOURCE_ATLAS_FRUITS',         64,         8,              8,      'FruitIconAtlas64.dds'              UNION ALL
SELECT 'REP_RESOURCE_ATLAS_FRUITS',         45,         8,              8,      'FruitIconAtlas45.dds'              UNION ALL
SELECT 'REP_RESOURCE_ATLAS_CROPS',          256,        8,              8,      'CropsIconAtlas256.dds'             UNION ALL
SELECT 'REP_RESOURCE_ATLAS_CROPS',          80,         8,              8,      'CropsIconAtlas80.dds'              UNION ALL
SELECT 'REP_RESOURCE_ATLAS_CROPS',          64,         8,              8,      'CropsIconAtlas64.dds'              UNION ALL
SELECT 'REP_RESOURCE_ATLAS_CROPS',          45,         8,              8,      'CropsIconAtlas45.dds';

--------------------------------------------------------------------------------------------------
--Font Textures
-------------------------------------------------------------------------------------------------- 
INSERT INTO IconFontTextures (IconFontTexture,	IconFontTextureFile) 
SELECT 'ICON_FONT_TEXTURE_LAVENDERZ',                'lavender-fonticon'     UNION ALL
SELECT 'ICON_FONT_TEXTURE_MAPLEZ',                   'maple-fonticon'        UNION ALL
SELECT 'ICON_FONT_TEXTURE_APPLEZ',                   'apple-fonticon'        UNION ALL
SELECT 'ICON_FONT_TEXTURE_MANGOZ',                   'mango-fonticon'        UNION ALL
SELECT 'ICON_FONT_TEXTURE_RASPBERRYZ',               'raspberry-fonticon'    UNION ALL
SELECT 'ICON_FONT_TEXTURE_BARLEYZ',                  'barley-fonticon'       UNION ALL
SELECT 'ICON_FONT_TEXTURE_COFFEEZ',                  'coffee-fonticon'       UNION ALL
SELECT 'ICON_FONT_TEXTURE_HEMPZ',                    'hemp-fonticon'         UNION ALL
SELECT 'ICON_FONT_TEXTURE_PEANUTZ',                  'peanut-fonticon'      UNION ALL
SELECT 'ICON_FONT_TEXTURE_POTATOEZ',                 'potatoe-fonticon'     UNION ALL
SELECT 'ICON_FONT_TEXTURE_SOYBEANZ',                 'soybean-fonticon'     UNION ALL

SELECT 'ICON_FONT_TEXTURE_FA_TEA',				'tea-fonticons' UNION ALL
SELECT 'ICON_FONT_TEXTURE_FA_MAIZE',			'maize-fonticons' UNION ALL
SELECT 'ICON_FONT_TEXTURE_FA_TOBACCO',			'tobacco-fonticons' UNION ALL
SELECT 'ICON_FONT_TEXTURE_FA_RICE',				'rice-fonticons';

--------------------------------------------------------------------------------------------------
--Font Mapping
-------------------------------------------------------------------------------------------------- 
INSERT INTO IconFontMapping (IconName,	IconFontTexture,					IconMapping) 
SELECT 'ICON_INC_LAVENDER',                 'ICON_FONT_TEXTURE_LAVENDERZ',      1 UNION ALL
SELECT 'ICON_TRE_MAPLE',                    'ICON_FONT_TEXTURE_MAPLEZ',         1 UNION ALL
SELECT 'ICON_FRU_APPLE',                    'ICON_FONT_TEXTURE_APPLEZ',         1 UNION ALL
SELECT 'ICON_FRU_MANGO',                    'ICON_FONT_TEXTURE_MANGOZ',         1 UNION ALL
SELECT 'ICON_FRU_RASPBERRY',                'ICON_FONT_TEXTURE_RASPBERRYZ',     1 UNION ALL
SELECT 'ICON_CRO_BARLEY',                   'ICON_FONT_TEXTURE_BARLEYZ',        1 UNION ALL
SELECT 'ICON_CRO_COFFEE',                   'ICON_FONT_TEXTURE_COFFEEZ',        1 UNION ALL
SELECT 'ICON_CRO_HEMP',                     'ICON_FONT_TEXTURE_HEMPZ',          1 UNION ALL
SELECT 'ICON_CRO_PEANUT',                   'ICON_FONT_TEXTURE_PEANUTZ',        1 UNION ALL
SELECT 'ICON_CRO_POTATOE',                  'ICON_FONT_TEXTURE_POTATOEZ',       1 UNION ALL
SELECT 'ICON_CRO_SOYBEAN',                  'ICON_FONT_TEXTURE_SOYBEANZ',       1 UNION ALL

SELECT 'ICON_RES_FA_TEA',				'ICON_FONT_TEXTURE_FA_TEA',			1 UNION ALL
SELECT 'ICON_RES_FA_MAIZE',				'ICON_FONT_TEXTURE_FA_MAIZE',		1 UNION ALL
SELECT 'ICON_RES_FA_TOBACCO',			'ICON_FONT_TEXTURE_FA_TOBACCO',		1 UNION ALL
SELECT 'ICON_RES_FA_RICE',				'ICON_FONT_TEXTURE_FA_RICE',		1;

--------------------------------------------------------------------------------------------------
--SV Icons
-------------------------------------------------------------------------------------------------- 
INSERT INTO ArtDefine_StrategicView (StrategicViewType, TileType,		Asset)
SELECT 'ART_DEF_RESOURCE_SALTPETER',						'Resource',		'Saltpeter_SV.dds' UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_TEA',						'Resource',		'SV_Tea.dds' UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_MAIZE',						'Resource',		'SV_Maize.dds' UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_TOBACCO',					'Resource',		'SV_Tobacco.dds' UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_RICE',						'Resource',		'SV_Rice.dds';

--------------------------------------------------------------------------------------------------
--Artdefines
-------------------------------------------------------------------------------------------------- 
INSERT INTO ArtDefine_LandmarkTypes (Type,	LandmarkType,	FriendlyName)
SELECT 'ART_DEF_RESOURCE_FA_TEA',			'Resource',		'Tea' UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_MAIZE',			'Resource',		'Maize' UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_TOBACCO',		'Resource',		'Tobacco' UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_RICE',			'Resource',		'Rice';

INSERT INTO ArtDefine_Landmarks (ResourceType,	ImprovementType,					Model,								Era,			State,					Scale,				LayoutHandler,	TerrainContour)
SELECT 'ART_DEF_RESOURCE_FA_TEA',				'ART_DEF_IMPROVEMENT_NONE',			'resource_tea.fxsxml',				'Any',			'Any',					0.9399999976158142,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_TEA',				'ART_DEF_IMPROVEMENT_PLANTATION',	'hb_plantation_mid_tea.fxsxml',		'Ancient',		'UnderConstruction',	0.9599999785423279,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_TEA',				'ART_DEF_IMPROVEMENT_PLANTATION',	'plantation_mid_tea .fxsxml',		'Ancient',		'Constructed',			0.9599999785423279,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_TEA',				'ART_DEF_IMPROVEMENT_PLANTATION',	'pl_plantation_mid_tea.fxsxml',		'Ancient',		'Pillaged',				0.9599999785423279,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_TEA',				'ART_DEF_IMPROVEMENT_PLANTATION',	'hb_plantation_mid_tea.fxsxml',		'Industrial',	'UnderConstruction',	0.9599999785423279,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_TEA',				'ART_DEF_IMPROVEMENT_PLANTATION',	'plantation_mid_tea .fxsxml',		'Industrial',	'Constructed',			0.9599999785423279,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_TEA',				'ART_DEF_IMPROVEMENT_PLANTATION',	'pl_plantation_mid_tea.fxsxml',		'Industrial',	'Pillaged',				0.9599999785423279,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_MAIZE',				'ART_DEF_IMPROVEMENT_NONE',			'resource_maize.fxsxml',			'Any',			'Any',					0.9399999976158142,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_MAIZE',				'ART_DEF_IMPROVEMENT_PLANTATION',	'HB_Plantation_IND_Banana.fxsxml',	'Ancient',		'UnderConstruction',	0.9599999785423279,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_MAIZE',				'ART_DEF_IMPROVEMENT_PLANTATION',	'plantation_ind_maize.fxsxml',		'Ancient',		'Constructed',			0.9599999785423279,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_MAIZE',				'ART_DEF_IMPROVEMENT_PLANTATION',	'PL_Plantation_IND_Banana.fxsxml',	'Ancient',		'Pillaged',				0.9599999785423279,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_MAIZE',				'ART_DEF_IMPROVEMENT_PLANTATION',	'HB_Plantation_IND_Banana.fxsxml',	'Industrial',	'UnderConstruction',	0.9599999785423279,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_MAIZE',				'ART_DEF_IMPROVEMENT_PLANTATION',	'plantation_ind_maize.fxsxml',		'Industrial',	'Constructed',			0.9599999785423279,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_MAIZE',				'ART_DEF_IMPROVEMENT_PLANTATION',	'PL_Plantation_IND_Banana.fxsxml',	'Industrial',	'Pillaged',				0.9599999785423279,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_TOBACCO',			'ART_DEF_IMPROVEMENT_NONE',			'Resource_Spice.fxsxml',			'Any',			'Any',					0.9399999976158142,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_TOBACCO',			'ART_DEF_IMPROVEMENT_PLANTATION',	'HB_Plantation_MID_Spice.fxsxml',	'Ancient',		'UnderConstruction',	0.9599999785423279,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_TOBACCO',			'ART_DEF_IMPROVEMENT_PLANTATION',	'Plantation_MID_Spice.fxsxml',		'Ancient',		'Constructed',			0.9599999785423279,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_TOBACCO',			'ART_DEF_IMPROVEMENT_PLANTATION',	'PL_Plantation_MID_Spice.fxsxml',	'Ancient',		'Pillaged',				0.9599999785423279,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_TOBACCO',			'ART_DEF_IMPROVEMENT_PLANTATION',	'HB_Plantation_IND_Spice.fxsxml',	'Industrial',	'UnderConstruction',	0.9599999785423279,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_TOBACCO',			'ART_DEF_IMPROVEMENT_PLANTATION',	'Plantation_IND_Spice.fxsxml',		'Industrial',	'Constructed',			0.9599999785423279,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_TOBACCO',			'ART_DEF_IMPROVEMENT_PLANTATION',	'PL_Plantation_IND_Spice.fxsxml',	'Industrial',	'Pillaged',				0.9599999785423279,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_RICE',				'ART_DEF_IMPROVEMENT_NONE',			'resource_rice.fxsxml',				'Any',			'Any',					0.9399999976158142,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_RICE',				'ART_DEF_IMPROVEMENT_PLANTATION',	'hb_plantation_ind_rice.fxsxml',	'Ancient',		'UnderConstruction',	0.9599999785423279,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_RICE',				'ART_DEF_IMPROVEMENT_PLANTATION',	'plantation_ind_rice.fxsxml',		'Ancient',		'Constructed',			0.9599999785423279,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_RICE',				'ART_DEF_IMPROVEMENT_PLANTATION',	'pl_plantation_ind_rice.fxsxml',	'Ancient',		'Pillaged',				0.9599999785423279,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_RICE',				'ART_DEF_IMPROVEMENT_PLANTATION',	'hb_plantation_ind_rice.fxsxml',	'Industrial',	'UnderConstruction',	0.9599999785423279,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_RICE',				'ART_DEF_IMPROVEMENT_PLANTATION',	'plantation_ind_rice.fxsxml',		'Industrial',	'Constructed',			0.9599999785423279,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_RICE',				'ART_DEF_IMPROVEMENT_PLANTATION',	'pl_plantation_ind_rice.fxsxml',	'Industrial',	'Pillaged',				0.9599999785423279,	'SNAPSHOT',		1;

INSERT INTO ArtDefine_LandmarkTypes (Type, LandmarkType, FriendlyName)
VALUES ('ART_DEF_RESOURCE_HEMP','Resource','Hemp');

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Any','Any','0.9800000190734863','ART_DEF_IMPROVEMENT_NONE','SNAPSHOT','ART_DEF_RESOURCE_HEMP','Art/Resources/Hemp/Resource_Hemp.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','UnderConstruction','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_HEMP','Art/Resources/Hemp/HB_Plantation_MID_Hemp.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','Constructed','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_HEMP','Art/Resources/Hemp/Plantation_MID_Hemp.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','Pillaged','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_HEMP','Art/Resources/Hemp/PL_Plantation_MID_Hemp.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','UnderConstruction','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_HEMP','Art/Resources/Hemp/HB_Plantation_IND_Hemp.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Constructed','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_HEMP','Art/Resources/Hemp/Plantation_IND_Hemp.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Pillaged','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_HEMP','Art/Resources/Hemp/PL_Plantation_IND_Hemp.fxsxml','1',null);

INSERT INTO ArtDefine_LandmarkTypes (Type, LandmarkType, FriendlyName)
VALUES ('ART_DEF_RESOURCE_PEANUT','Resource','Peanuts');

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Any','Any','1','ART_DEF_IMPROVEMENT_NONE','SNAPSHOT','ART_DEF_RESOURCE_PEANUT','Art/Resources/Peanut/Resource_Peanut.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','UnderConstruction','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_PEANUT','Art/Resources/Peanut/HB_Plantation_MID_Peanut.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','Constructed','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_PEANUT','Art/Resources/Peanut/Plantation_MID_Peanut.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','Pillaged','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_PEANUT','Art/Resources/Peanut/PL_Plantation_MID_Peanut.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','UnderConstruction','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_PEANUT','Art/Resources/Peanut/HB_Plantation_IND_Peanut.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Constructed','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_PEANUT','Art/Resources/Peanut/Plantation_IND_Peanut.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Pillaged','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_PEANUT','Art/Resources/Peanut/PL_Plantation_IND_Peanut.fxsxml','1',null);

INSERT INTO ArtDefine_LandmarkTypes (Type, LandmarkType, FriendlyName)
VALUES ('ART_DEF_RESOURCE_POTATOE','Resource','Potatoes');

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Any','Any','1','ART_DEF_IMPROVEMENT_NONE','SNAPSHOT','ART_DEF_RESOURCE_POTATOE','Art/Resources/Potatoe/Resource_Potatoe.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','UnderConstruction','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_POTATOE','Art/Resources/Potatoe/HB_Plantation_MID_Potatoe.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','Constructed','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_POTATOE','Art/Resources/Potatoe/Plantation_MID_Potatoe.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','Pillaged','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_POTATOE','Art/Resources/Potatoe/PL_Plantation_MID_Potatoe.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','UnderConstruction','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_POTATOE','Art/Resources/Potatoe/HB_Plantation_IND_Potatoe.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Constructed','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_POTATOE','Art/Resources/Potatoe/Plantation_IND_Potatoe.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Pillaged','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_POTATOE','Art/Resources/Potatoe/PL_Plantation_IND_Potatoe.fxsxml','1',null);

INSERT INTO ArtDefine_LandmarkTypes (Type, LandmarkType, FriendlyName)
VALUES ('ART_DEF_RESOURCE_RASPBERRY','Resource','Raspberries');

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Any','Any','0.9800000190734863','ART_DEF_IMPROVEMENT_NONE','SNAPSHOT','ART_DEF_RESOURCE_RASPBERRY','Art/Resources/Raspberries/Resource_Raspberries.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','UnderConstruction','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_RASPBERRY','Art/Resources/Raspberries/HB_Plantation_MID_Raspberries.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','Constructed','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_RASPBERRY','Art/Resources/Raspberries/Plantation_MID_Raspberries.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','Pillaged','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_RASPBERRY','Art/Resources/Raspberries/PL_Plantation_MID_Raspberries.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','UnderConstruction','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_RASPBERRY','Art/Resources/Raspberries/HB_Plantation_IND_Raspberries.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Constructed','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_RASPBERRY','Art/Resources/Raspberries/Plantation_IND_Raspberries.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Pillaged','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_RASPBERRY','Art/Resources/Raspberries/PL_Plantation_IND_Raspberries.fxsxml','1',null);


INSERT INTO ArtDefine_LandmarkTypes (Type, LandmarkType, FriendlyName)
VALUES ('ART_DEF_RESOURCE_SOYBEAN','Resource','Soybean');

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Any','Any','0.9399999976158142','ART_DEF_IMPROVEMENT_NONE','SNAPSHOT','ART_DEF_RESOURCE_SOYBEAN','Art/Resources/Soybean/Resource_Soybean.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','UnderConstruction','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_SOYBEAN','Art/Resources/Soybean/HB_Plantation_MID_Soybean.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','Constructed','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_SOYBEAN','Art/Resources/Soybean/Plantation_MID_Soybean.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','Pillaged','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_SOYBEAN','Art/Resources/Soybean/PL_Plantation_MID_Soybean.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','UnderConstruction','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_SOYBEAN','Art/Resources/Soybean/HB_Plantation_IND_Soybean.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Constructed','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_SOYBEAN','Art/Resources/Soybean/Plantation_IND_Soybean.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Pillaged','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_SOYBEAN','Art/Resources/Soybean/PL_Plantation_IND_Soybean.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era,				State,						Scale,	ImprovementType,							LayoutHandler,			ResourceType,							Model,															TerrainContour) VALUES	

                                ('Any',				'Any',						1,		'ART_DEF_IMPROVEMENT_NONE',					'SNAPSHOT',				'ART_DEF_RESOURCE_MANGO',				'Art/Mango/Mangotrees.fxsxml',									1),
								('Industrial',		'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_MANGO',				'Art/Mango/Plantation_IND_Mangotrees.fxsxml',					1),
								('Industrial',		'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_MANGO',				'Art/Mango/Plantation_IND_Mangotrees_HB.fxsxml',				1),
								('Industrial',		'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_MANGO',				'Art/Mango/Plantation_IND_Mangotrees_PIL.fxsxml',				1),
								('Ancient',			'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_MANGO',				'Art/Mango/Plantation_MID_Mangotrees.fxsxml',					1),
								('Ancient',			'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_MANGO',				'Art/Mango/Plantation_MID_Mangotrees_HB.fxsxml',				1),
								('Ancient',			'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_MANGO',				'Art/Mango/Plantation_MID_Mangotrees_PIL.fxsxml',				1),
								
								('Any',				'Any',						1,		'ART_DEF_IMPROVEMENT_NONE',					'SNAPSHOT',				'ART_DEF_RESOURCE_RUBBER',				'Art/Rubber/Rubbertrees.fxsxml',								1),
								('Industrial',		'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_RUBBER',				'Art/Rubber/Plantation_IND_Rubbertrees.fxsxml',					1),
								('Industrial',		'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_RUBBER',				'Art/Rubber/Plantation_IND_Rubbertrees_HB.fxsxml',				1),
								('Industrial',		'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_RUBBER',				'Art/Rubber/Plantation_IND_Rubbertrees_PIL.fxsxml',				1),
								('Ancient',			'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_RUBBER',				'Art/Rubber/Plantation_MID_Rubbertrees.fxsxml',					1),
								('Ancient',			'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_RUBBER',				'Art/Rubber/Plantation_MID_Rubbertrees_HB.fxsxml',				1),
								('Ancient',			'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_RUBBER',				'Art/Rubber/Plantation_MID_Rubbertrees_PIL.fxsxml',				1),
							
							    ('Any',				'Any',						1.15,	'ART_DEF_IMPROVEMENT_NONE',					'SNAPSHOT',				'ART_DEF_RESOURCE_APPLE',		'Art/Apple/Appletrees.fxsxml',									1),
								('Industrial',		'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_APPLE',		'Art/Apple/Plantation_IND_Appletrees.fxsxml',					1),
								('Industrial',		'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_APPLE',		'Art/Apple/Plantation_IND_Appletrees_HB.fxsxml',				1),
								('Industrial',		'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_APPLE',		'Art/Apple/Plantation_IND_Appletrees_PIL.fxsxml',				1),
								('Ancient',			'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_APPLE',		'Art/Apple/Plantation_MID_Appletrees.fxsxml',					1),
								('Ancient',			'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_APPLE',		'Art/Apple/Plantation_MID_Appletrees_HB.fxsxml',				1),
								('Ancient',			'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_APPLE',		'Art/Apple/Plantation_MID_Appletrees_PIL.fxsxml',				1);


								INSERT INTO ArtDefine_LandmarkTypes (Type,										LandmarkType,	FriendlyName) VALUES	
									('ART_DEF_RESOURCE_MANGO',					'Resource',		'Mango'),	
									('ART_DEF_RESOURCE_RUBBER',					'Resource',		'Rubber'),						
									('ART_DEF_RESOURCE_APPLE',					'Resource',		'Apple');
									
	INSERT INTO ArtDefine_LandmarkTypes (Type,										LandmarkType,			FriendlyName) VALUES
									('ART_DEF_RESOURCE_LAVENDER',				'Resource',				'Lavender'),
									('ART_DEF_RESOURCE_BARLEY',					'Resource',				'Barley');

									INSERT INTO ArtDefine_Landmarks (Era,				State,						Scale,	ImprovementType,							LayoutHandler,			ResourceType,							Model,													TerrainContour) VALUES	

								('Any',				'Any',						1,		'ART_DEF_IMPROVEMENT_NONE',					'SNAPSHOT',				'ART_DEF_RESOURCE_LAVENDER',			'Art/Lavender/Resource_Lavender.fxsxml',				1),
								('Industrial',		'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_LAVENDER',			'Art/Lavender/Plantation_IND_Lavender.fxsxml',			1),
								('Industrial',		'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_LAVENDER',			'Art/Lavender/HB_Plantation_IND_Lavender.fxsxml',		1),
								('Industrial',		'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_LAVENDER',			'Art/Lavender/PL_Plantation_IND_Lavender.fxsxml',		1),
								('Ancient',			'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_LAVENDER',			'Art/Lavender/Plantation_MID_Lavender.fxsxml',			1),
								('Ancient',			'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_LAVENDER',			'Art/Lavender/HB_Plantation_MID_Lavender.fxsxml',		1),
								('Ancient',			'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_LAVENDER',			'Art/Lavender/PL_Plantation_MID_Lavender.fxsxml',		1);

								INSERT INTO ArtDefine_LandmarkTypes (Type,										LandmarkType,	FriendlyName) VALUES	

									('ART_DEF_RESOURCE_COFFEE',					'Resource',		'Coffee');
									
									INSERT INTO ArtDefine_Landmarks (Era,				State,						Scale,	ImprovementType,							LayoutHandler,			ResourceType,							Model,															TerrainContour) VALUES	
									('Any',				'Any',						1,		'ART_DEF_IMPROVEMENT_NONE',					'SNAPSHOT',				'ART_DEF_RESOURCE_COFFEE',				'Art/Coffee/Resource_Coffee.fxsxml',							1),
								('Industrial',		'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_COFFEE',				'Art/Coffee/Plantation_IND_Coffee.fxsxml',						1),
								('Industrial',		'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_COFFEE',				'Art/Coffee/HB_Plantation_IND_Coffee.fxsxml',					1),
								('Industrial',		'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_COFFEE',				'Art/Coffee/PL_Plantation_IND_Coffee.fxsxml',					1),
								('Ancient',			'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_COFFEE',				'Art/Coffee/Plantation_MID_Coffee.fxsxml',						1),
								('Ancient',			'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_COFFEE',				'Art/Coffee/HB_Plantation_MID_Coffee.fxsxml',					1),
								('Ancient',			'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_COFFEE',				'Art/Coffee/PL_Plantation_MID_Coffee.fxsxml',					1),
								
								('Any',				'Any',						1,		'ART_DEF_IMPROVEMENT_NONE',					'SNAPSHOT',				'ART_DEF_RESOURCE_BARLEY',				'Art/Barley/Resource_Barley.fxsxml',				1),
								('Industrial',		'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_BARLEY',				'Art/Barley/Plantation_IND_Barley.fxsxml',			1),
								('Industrial',		'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_BARLEY',				'Art/Barley/HB_Plantation_IND_Barley.fxsxml',		1),
								('Industrial',		'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_BARLEY',				'Art/Barley/PL_Plantation_IND_Barley.fxsxml',		1),
								('Ancient',			'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_BARLEY',				'Art/Barley/Plantation_MID_Barley.fxsxml',			1),
								('Ancient',			'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_BARLEY',				'Art/Barley/HB_Plantation_MID_Barley.fxsxml',		1),
								('Ancient',			'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_BARLEY',				'Art/Barley/PL_Plantation_MID_Barley.fxsxml',		1);							