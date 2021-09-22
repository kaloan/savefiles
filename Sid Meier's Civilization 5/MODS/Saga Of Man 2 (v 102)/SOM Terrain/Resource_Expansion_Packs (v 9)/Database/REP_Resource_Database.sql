--------------------------------------------------------------------------------------------------
--Table Adds
--------------------------------------------------------------------------------------------------
ALTER TABLE Resources ADD COLUMN Rivers boolean default 0;

--------------------------------------------------------------------------------------------------
--Resources
--------------------------------------------------------------------------------------------------
INSERT INTO Resources (Type,	ResourceClassType,		Rivers,	Hills,	Flatlands,	MaxLatitude,	TechReveal,		TechCityTrade,			IconAtlas,				PortraitIndex,	            ArtDefineTag,					IconString,			 		Description,					Civilopedia,								Help,									AITradeModifier,	ResourceUsage,	AIObjective,	PlacementOrder,	ConstAppearance,	MinAreaSize,	Player,		Normalize)
--SELECT 'RESOURCE_FA_MAIZEX',		'RESOURCECLASS_BONUS',	0,		0,		1,			60,				NULL,			'TECH_CALENDAR',		'REP_RESOURCE_ATLAS_SEA',	20,				'ART_DEF_RESOURCE_FA_MAIZEX',	'[ICON_RES_FA_MAIZEX]',		'TXT_KEY_RESOURCE_FA_MAIZEX',	'TXT_KEY_CIV5_RESOURCE_FA_MAIZEX_TEXT',		        NULL,									      0,					0,				0,				3,				50,					3,				0,			1;

INSERT INTO Resources (Type,	    ResourceClassType,	Rivers,	Hills,	Flatlands,	MaxLatitude,	Happiness,		TechCityTrade,					IconAtlas,				PortraitIndex,	            ArtDefineTag,					IconString,					    Description,					            Civilopedia,							   Help,									AITradeModifier,	ResourceUsage,	AIObjective,	PlacementOrder,	ConstAppearance,	MinAreaSize,	  Player,		Normalize)
--SELECT 'RESOURCE_BASSZ',	      'RESOURCECLASS_LUXURY',  1,		0,		0,			90,				  4,	   'TECH_SAILING',			'REP_RESOURCE_ATLAS_SEA',		      0,				'ART_DEF_RESOURCE_FISH',	    '[ICON_SEA_BASS]',	        'TXT_KEY_RESOURCE_BASSZ',	          'TXT_KEY_CIV5_RESOURCE_BASSZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_BLUECRABZ',	  'RESOURCECLASS_LUXURY',  1,		0,		0,			90,				  4,	   'TECH_SAILING',			'REP_RESOURCE_ATLAS_SEA',		      1,				'ART_DEF_RESOURCE_CRAB',	    '[ICON_SEA_BLUECRAB]',	    'TXT_KEY_RESOURCE_BLUECRABZ',	      'TXT_KEY_CIV5_RESOURCE_BLUECRABZ_TEXT',	               NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_BLUEWHALEZ',     'RESOURCECLASS_LUXURY',  1,		0,		0,			90,				  4,	   'TECH_SAILING',			'REP_RESOURCE_ATLAS_SEA',		      2,				'ART_DEF_RESOURCE_WHALE',	    '[ICON_SEA_BLUEWHALE]',	    'TXT_KEY_RESOURCE_BLUEWHALEZ',        'TXT_KEY_CIV5_RESOURCE_BLUEWHALEZ_TEXT',	               NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_CLAMZ',	      'RESOURCECLASS_LUXURY',  1,		0,		0,			90,				  1,	   'TECH_SAILING',			'REP_RESOURCE_ATLAS_SEA',		      3,				'ART_DEF_RESOURCE_PEARLS',	    '[ICON_SEA_CLAM]',	        'TXT_KEY_RESOURCE_CLAMZ',	          'TXT_KEY_CIV5_RESOURCE_CLAMZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_CORALZ',	      'RESOURCECLASS_LUXURY',  1,		0,		0,			90,				  4,	   'TECH_SAILING',			'REP_RESOURCE_ATLAS_SEA',		      4,				'ART_DEF_FEATURE_REEF',	        '[ICON_SEA_CORAL]',	        'TXT_KEY_RESOURCE_CORALZ',	          'TXT_KEY_CIV5_RESOURCE_CORALZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_DOLPHINZ',	      'RESOURCECLASS_LUXURY',  1,		0,		0,			90,				  4,	   'TECH_SAILING',			'REP_RESOURCE_ATLAS_SEA',		      5,				'ART_DEF_RESOURCE_FISH',	    '[ICON_SEA_DOLPHIN]',	    'TXT_KEY_RESOURCE_DOLPHINZ',	      'TXT_KEY_CIV5_RESOURCE_DOLPHINZ_TEXT',	               NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_GREATWHITEZ',    'RESOURCECLASS_LUXURY',  1,		0,		0,			90,				  4,	   'TECH_SAILING',			'REP_RESOURCE_ATLAS_SEA',		      6,				'ART_DEF_RESOURCE_WHALE',	    '[ICON_SEA_GREATWHITE]',	'TXT_KEY_RESOURCE_GREATWHITEZ',       'TXT_KEY_CIV5_RESOURCE_GREATWHITEZ_TEXT',	               NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_GREYWHALEZ',     'RESOURCECLASS_LUXURY',  1,		0,		0,			90,				  4,	   'TECH_SAILING',			'REP_RESOURCE_ATLAS_SEA',		      7,				'ART_DEF_RESOURCE_WHALE',	    '[ICON_SEA_GREYWHALE]',	    'TXT_KEY_RESOURCE_GREYWHALEZ',        'TXT_KEY_CIV5_RESOURCE_GREYWHALEZ_TEXT',	               NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_HUMPBACKWHALEZ', 'RESOURCECLASS_LUXURY',  1,		0,		0,			90,				  4,	   'TECH_SAILING',			'REP_RESOURCE_ATLAS_SEA',		      8,				'ART_DEF_RESOURCE_WHALE',	    '[ICON_SEA_HUMPBACKWHALE]',	'TXT_KEY_RESOURCE_HUMPBACKWHALEZ',    'TXT_KEY_CIV5_RESOURCE_HUMPBACKWHALEZ_TEXT',	           NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_KINGCRABZ',	  'RESOURCECLASS_LUXURY',  1,		0,		0,			90,				  4,	   'TECH_SAILING',			'REP_RESOURCE_ATLAS_SEA',		      9,				'ART_DEF_RESOURCE_CRAB',	    '[ICON_SEA_KINGCRAB]',	    'TXT_KEY_RESOURCE_KINGCRABZ',	      'TXT_KEY_CIV5_RESOURCE_KINGCRABZ_TEXT',	               NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_LOBSTERZ',	      'RESOURCECLASS_LUXURY',  1,		0,		0,			90,				  4,	   'TECH_SAILING',			'REP_RESOURCE_ATLAS_SEA',		      10,				'ART_DEF_RESOURCE_CRAB',	    '[ICON_SEA_LOBSTER]',	    'TXT_KEY_RESOURCE_LOBSTERZ',	      'TXT_KEY_CIV5_RESOURCE_LOBSTERZ_TEXT',	               NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_MARLINZ',	      'RESOURCECLASS_LUXURY',  1,		0,		0,			90,				  4,	   'TECH_SAILING',			'REP_RESOURCE_ATLAS_SEA',		      11,				'ART_DEF_RESOURCE_FISH',	    '[ICON_SEA_MARLIN]',	    'TXT_KEY_RESOURCE_MARLINZ',	          'TXT_KEY_CIV5_RESOURCE_MARLINZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_OYSTERSZ',	      'RESOURCECLASS_LUXURY',  1,		0,		0,			90,				  4,	   'TECH_SAILING',			'REP_RESOURCE_ATLAS_SEA',		      12,				'ART_DEF_RESOURCE_PEARLS',	    '[ICON_SEA_OYSTERS]',	    'TXT_KEY_RESOURCE_OYSTERSZ',	      'TXT_KEY_CIV5_RESOURCE_OYSTERSZ_TEXT',	               NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_SALMONZ',	      'RESOURCECLASS_LUXURY',  1,		0,		0,			90,				  4,	   'TECH_SAILING',			'REP_RESOURCE_ATLAS_SEA',		      13,				'ART_DEF_RESOURCE_FISH',	    '[ICON_SEA_SALMON]',	    'TXT_KEY_RESOURCE_SALMONZ',	          'TXT_KEY_CIV5_RESOURCE_SALMONZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_SHRIMPZ',	      'RESOURCECLASS_LUXURY',  1,		0,		0,			90,				  1,	   'TECH_SAILING',			'REP_RESOURCE_ATLAS_SEA',		      14,				'ART_DEF_RESOURCE_CRAB',	    '[ICON_SEA_SHRIMP]',	    'TXT_KEY_RESOURCE_SHRIMPZ',	          'TXT_KEY_CIV5_RESOURCE_SHRIMPZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_SQUIDZ',	      'RESOURCECLASS_LUXURY',  1,		0,		0,			90,				  4,	   'TECH_SAILING',			'REP_RESOURCE_ATLAS_SEA',		      15,				'ART_DEF_RESOURCE_FISH',	    '[ICON_SEA_SQUID]',	        'TXT_KEY_RESOURCE_SQUIDZ',	          'TXT_KEY_CIV5_RESOURCE_SQUIDZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_STONECRABZ',	  'RESOURCECLASS_LUXURY',  1,		0,		0,			90,				  4,	   'TECH_SAILING',			'REP_RESOURCE_ATLAS_SEA',		      16,				'ART_DEF_RESOURCE_CRAB',	    '[ICON_SEA_STONECRAB]',	    'TXT_KEY_RESOURCE_STONECRABZ',	      'TXT_KEY_CIV5_RESOURCE_STONECRABZ_TEXT',	               NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_TROPICALFISHZ',  'RESOURCECLASS_LUXURY',  1,		0,		0,			90,				  4,	   'TECH_SAILING',			'REP_RESOURCE_ATLAS_SEA',		      17,				'ART_DEF_RESOURCE_FISH',	    '[ICON_SEA_TROPICALFISH]',	'TXT_KEY_RESOURCE_TROPICALFISHZ',	  'TXT_KEY_CIV5_RESOURCE_TROPICALFISHZ_TEXT',	           NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_TROUTZ',	      'RESOURCECLASS_LUXURY',  1,		0,		0,			90,				  4,	   'TECH_SAILING',			'REP_RESOURCE_ATLAS_SEA',		      18,				'ART_DEF_RESOURCE_FISH',	    '[ICON_SEA_TROUT]',	        'TXT_KEY_RESOURCE_TROUTZ',	          'TXT_KEY_CIV5_RESOURCE_TROUTZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_TUNAZ',	      'RESOURCECLASS_LUXURY',  1,		0,		0,			90,				  4,	   'TECH_SAILING',			'REP_RESOURCE_ATLAS_SEA',		      19,				'ART_DEF_RESOURCE_FISH',	    '[ICON_SEA_TUNA]',	        'TXT_KEY_RESOURCE_TUNAZ',	          'TXT_KEY_CIV5_RESOURCE_TUNAZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_DIAMONDZ',	      'RESOURCECLASS_LUXURY',  0,		1,		0,			90,				  4,	   'TECH_MINING',			'REP_RESOURCE_ATLAS_MINERALS',	      0,				'ART_DEF_RESOURCE_DIAMOND',	    '[ICON_MIN_DIAMOND]',	    'TXT_KEY_RESOURCE_DIAMONDZ',	      'TXT_KEY_CIV5_RESOURCE_DIAMONDZ_TEXT',	               NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_RUBYZ',	      'RESOURCECLASS_LUXURY',  0,		1,		0,			90,				  4,	   'TECH_MINING',			'REP_RESOURCE_ATLAS_MINERALS',	      2,				'ART_DEF_RESOURCE_RUBY',	    '[ICON_MIN_RUBY]',	        'TXT_KEY_RESOURCE_RUBYZ',	          'TXT_KEY_CIV5_RESOURCE_RUBYZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_EMERALDZ',	  'RESOURCECLASS_LUXURY',  0,		1,		0,			90,				  4,	   'TECH_MINING',			'REP_RESOURCE_ATLAS_MINERALS',	      1,				'ART_DEF_RESOURCE_EMERALD',	    '[ICON_MIN_EMERALD]',	    'TXT_KEY_RESOURCE_EMERALDZ',	      'TXT_KEY_CIV5_RESOURCE_EMERALDZ_TEXT',	               NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_SAPPHIREZ',	      'RESOURCECLASS_LUXURY',  0,		1,		0,			90,				  4,	   'TECH_MINING',			'REP_RESOURCE_ATLAS_MINERALS',	      3,				'ART_DEF_RESOURCE_SAPPHIRE',	'[ICON_MIN_SAPPHIRE]',	    'TXT_KEY_RESOURCE_SAPPHIREZ',	      'TXT_KEY_CIV5_RESOURCE_SAPPHIREZ_TEXT',	               NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_LEADZ',	      'RESOURCECLASS_LUXURY',  0,		1,		0,			90,				  4,	   'TECH_MINING',			'REP_RESOURCE_ATLAS_MINERALS',	      4,				'ART_DEF_RESOURCE_LEAD',	    '[ICON_MIN_LEAD]',	        'TXT_KEY_RESOURCE_LEADZ',	          'TXT_KEY_CIV5_RESOURCE_LEADZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_NICKELZ',	      'RESOURCECLASS_LUXURY',  0,		1,		0,			90,				  4,	   'TECH_MINING',			'REP_RESOURCE_ATLAS_MINERALS',	      5,				'ART_DEF_RESOURCE_NICKEL',	    '[ICON_MIN_NICKEL]',	    'TXT_KEY_RESOURCE_NICKELZ',	          'TXT_KEY_CIV5_RESOURCE_NICKELZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_PLATINUMZ',	  'RESOURCECLASS_LUXURY',  0,		1,		0,			90,				  4,	   'TECH_MINING',			'REP_RESOURCE_ATLAS_MINERALS',	      6,				'ART_DEF_RESOURCE_PLATINUM',	'[ICON_MIN_PLATINUM]',	    'TXT_KEY_RESOURCE_PLATINUMZ',	      'TXT_KEY_CIV5_RESOURCE_PLATINUMZ_TEXT',	               NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_TITANIUMZ',	  'RESOURCECLASS_LUXURY',  0,		1,		0,			90,				  4,	   'TECH_MINING',			'REP_RESOURCE_ATLAS_MINERALS',	      8,				'ART_DEF_RESOURCE_TITANIUM',	'[ICON_MIN_TITANIUM]',	    'TXT_KEY_RESOURCE_TITANIUMZ',	      'TXT_KEY_CIV5_RESOURCE_TITANIUMZ_TEXT',	               NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_MANGANESEZ',	  'RESOURCECLASS_LUXURY',  0,		1,		0,			90,				  4,	   'TECH_MINING',			'REP_RESOURCE_ATLAS_MINERALS',	      7,				'ART_DEF_RESOURCE_MANGANESE',	'[ICON_MIN_MANGANESE]',	    'TXT_KEY_RESOURCE_MANGANESEZ',	      'TXT_KEY_CIV5_RESOURCE_MANGANESEZ_TEXT',	               NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_CINNAMONZ',      'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_CALENDAR',			'REP_RESOURCE_ATLAS_INCENSE',	      2,				'ART_DEF_RESOURCE_CINNAMON',	'[ICON_SPC_CINNAMON]',	    'TXT_KEY_RESOURCE_CINNAMONZ',	      'TXT_KEY_CIV5_RESOURCE_CINNAMONZ_TEXT',	               NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_FRANKINCENSEZ',  'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_CALENDAR',			'REP_RESOURCE_ATLAS_INCENSE',	      5,				'ART_DEF_RESOURCE_FRANKINCENSE','[ICON_INC_FRANKINCENSE]',	'TXT_KEY_RESOURCE_FRANKINCENSEZ',	  'TXT_KEY_CIV5_RESOURCE_FRANKINCENSEZ_TEXT',	           NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_GINGERZ',	      'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_CALENDAR',			'REP_RESOURCE_ATLAS_INCENSE',	      3,				'ART_DEF_RESOURCE_GINGER',	    '[ICON_SPC_GINGER]',	    'TXT_KEY_RESOURCE_GINGERZ',	          'TXT_KEY_CIV5_RESOURCE_GINGERZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_MYRRHZ',	      'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_CALENDAR',  		'REP_RESOURCE_ATLAS_INCENSE',	      6,				'ART_DEF_RESOURCE_MYRRH',	    '[ICON_INC_MYRRH]',	        'TXT_KEY_RESOURCE_MYRRHZ',	          'TXT_KEY_CIV5_RESOURCE_MYRRHZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_SAFFRONZ',	      'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_CALENDAR',			'REP_RESOURCE_ATLAS_INCENSE',	      4,				'ART_DEF_RESOURCE_SAFFRON',	    '[ICON_INC_SAFFRON]',	    'TXT_KEY_RESOURCE_SAFFRONZ',	      'TXT_KEY_CIV5_RESOURCE_SAFFRONZ_TEXT',	               NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_BIRCHZ',	      'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_CALENDAR',		    'REP_RESOURCE_ATLAS_TREE',	          4,				'ART_DEF_RESOURCE_CACAO',	    '[ICON_TRE_BIRCH]',	        'TXT_KEY_RESOURCE_BIRCHZ',	          'TXT_KEY_CIV5_RESOURCE_BIRCHZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_CEDARZ',	      'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_CALENDAR',		    'REP_RESOURCE_ATLAS_TREE',	          1,				'ART_DEF_RESOURCE_CEDAR',	    '[ICON_TRE_CEDAR]',	        'TXT_KEY_RESOURCE_CEDARZ',	          'TXT_KEY_CIV5_RESOURCE_CEDARZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_OAKZ',	          'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_CALENDAR',		    'REP_RESOURCE_ATLAS_TREE',	          0,				'ART_DEF_RESOURCE_LUMBER',	    '[ICON_TRE_OAK]',	        'TXT_KEY_RESOURCE_OAKZ',	          'TXT_KEY_CIV5_RESOURCE_OAKZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_PINEZ',	      'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_CALENDAR',		    'REP_RESOURCE_ATLAS_TREE',	          2,				'ART_DEF_RESOURCE_PINE',	    '[ICON_TRE_PINE]',	        'TXT_KEY_RESOURCE_PINEZ',	          'TXT_KEY_CIV5_RESOURCE_PINEZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_REDWOODZ',	      'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_CALENDAR',	        'REP_RESOURCE_ATLAS_TREE',	          3,				'ART_DEF_RESOURCE_MAHOGANY',	'[ICON_TRE_REDWOOD]',	    'TXT_KEY_RESOURCE_REDWOODZ',	      'TXT_KEY_CIV5_RESOURCE_REDWOODZ_TEXT',	               NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_ALPACAZ',	      'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_ANIMAL_HUSBANDRY',	'REP_RESOURCE_ATLAS_LANIMALS',	      2,				'ART_DEF_RESOURCE_SHEEP',	    '[ICON_LA_ALPACA]',			'TXT_KEY_RESOURCE_ALPACAZ',	          'TXT_KEY_CIV5_RESOURCE_ALPACAZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_ANGUSZ',	      'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_ANIMAL_HUSBANDRY',	'REP_RESOURCE_ATLAS_LANIMALS',	      7,				'ART_DEF_RESOURCE_COW',			'[ICON_LA_ANGUS]',			'TXT_KEY_RESOURCE_ANGUSZ',	          'TXT_KEY_CIV5_RESOURCE_ANGUSZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_ELKZ',	          'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_TRAPPING',	        'REP_RESOURCE_ATLAS_LANIMALS',	      3,				'ART_DEF_RESOURCE_DEER',	    '[ICON_LA_ELK]',			'TXT_KEY_RESOURCE_ELKZ',			  'TXT_KEY_CIV5_RESOURCE_ELKZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_HOLSTEINZ',	  'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_ANIMAL_HUSBANDRY',	'REP_RESOURCE_ATLAS_LANIMALS',	      0,				'ART_DEF_RESOURCE_COW',			'[ICON_LA_HOLSTEIN]',	    'TXT_KEY_RESOURCE_HOLSTEINZ',	      'TXT_KEY_CIV5_RESOURCE_HOLSTEINZ_TEXT',	               NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_LONGHORNZ',	  'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_ANIMAL_HUSBANDRY',	'REP_RESOURCE_ATLAS_LANIMALS',	      8,				'ART_DEF_RESOURCE_COW',			'[ICON_LA_LONGHORN]',	    'TXT_KEY_RESOURCE_LONGHORNZ',	      'TXT_KEY_CIV5_RESOURCE_LONGHORNZ_TEXT',	               NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_MOOSEZ',	      'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_TRAPPING',	        'REP_RESOURCE_ATLAS_LANIMALS',	      5,				'ART_DEF_RESOURCE_DEER',	    '[ICON_LA_MOOSE]',			'TXT_KEY_RESOURCE_MOOSEZ',	          'TXT_KEY_CIV5_RESOURCE_MOOSEZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_PIGZ',	          'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  1,	   'TECH_ANIMAL_HUSBANDRY',	        'REP_RESOURCE_ATLAS_LANIMALS',	      1,				'ART_DEF_RESOURCE_TRUFFLES',	'[ICON_LA_PIG]',			'TXT_KEY_RESOURCE_PIGZ',			  'TXT_KEY_CIV5_RESOURCE_PIGZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_REINDEERZ',	  'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_TRAPPING',	        'REP_RESOURCE_ATLAS_LANIMALS',	      4,				'ART_DEF_RESOURCE_DEER',	    '[ICON_LA_REINDEER]',	    'TXT_KEY_RESOURCE_REINDEERZ',	      'TXT_KEY_CIV5_RESOURCE_REINDEERZ_TEXT',	               NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_WTAILDEERZ',	  'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_TRAPPING',	        'REP_RESOURCE_ATLAS_LANIMALS',	      6,				'ART_DEF_RESOURCE_DEER',	    '[ICON_LA_WTAILDEER]',	    'TXT_KEY_RESOURCE_WTAILDEERZ',	      'TXT_KEY_CIV5_RESOURCE_WTAILDEERZ_TEXT',	               NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL 
--SELECT 'RESOURCE_COCONUTZ',	      'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_CALENDAR',	        'REP_RESOURCE_ATLAS_FRUITS',	      1,				'ART_DEF_RESOURCE_COCONUT',	    '[ICON_FRU_COCONUT]',	    'TXT_KEY_RESOURCE_COCONUTZ',	      'TXT_KEY_CIV5_RESOURCE_COCONUTZ_TEXT',	               NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_CRANBERRYZ',	  'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_CALENDAR',	        'REP_RESOURCE_ATLAS_FRUITS',	      9,				'ART_DEF_RESOURCE_CRANBERRY',	'[ICON_FRU_CRANBERRY]',	    'TXT_KEY_RESOURCE_CRANBERRYZ',	      'TXT_KEY_CIV5_RESOURCE_CRANBERRYZ_TEXT',	               NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_GRAPEZ',	      'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_CALENDAR',	        'REP_RESOURCE_ATLAS_FRUITS',	      7,				'ART_DEF_RESOURCE_GRAPE',	    '[ICON_FRU_GRAPE]',	        'TXT_KEY_RESOURCE_GRAPEZ',	          'TXT_KEY_CIV5_RESOURCE_GRAPEZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_ORANGEZ',	      'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_CALENDAR',	        'REP_RESOURCE_ATLAS_FRUITS',	      5,				'ART_DEF_RESOURCE_ORANGE',	    '[ICON_FRU_ORANGE]',	    'TXT_KEY_RESOURCE_ORANGEZ',	          'TXT_KEY_CIV5_RESOURCE_ORANGEZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_PEACHZ',	      'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_CALENDAR',	        'REP_RESOURCE_ATLAS_FRUITS',	      3,				'ART_DEF_RESOURCE_PEACH',	    '[ICON_FRU_PEACH]',	        'TXT_KEY_RESOURCE_PEACHZ',	          'TXT_KEY_CIV5_RESOURCE_PEACHZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_PINEAPPLEZ',	  'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_CALENDAR',	        'REP_RESOURCE_ATLAS_FRUITS',	      0,				'ART_DEF_RESOURCE_PINEAPPLE',	'[ICON_FRU_PINEAPPLE]',	    'TXT_KEY_RESOURCE_PINEAPPLEZ',	      'TXT_KEY_CIV5_RESOURCE_PINEAPPLEZ_TEXT',	               NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_POMEGRANATEZ',	  'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_CALENDAR',	        'REP_RESOURCE_ATLAS_FRUITS',	      10,				'ART_DEF_RESOURCE_POMEGRANATE',	'[ICON_FRU_POMEGRANATE]',   'TXT_KEY_RESOURCE_POMEGRANATEZ',	  'TXT_KEY_CIV5_RESOURCE_POMEGRANATEZ_TEXT',	           NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL  

--SELECT 'RESOURCE_STRAWBERRYZ',	  'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_CALENDAR',	        'REP_RESOURCE_ATLAS_FRUITS',	      6,				'ART_DEF_RESOURCE_REDBERRIES',	'[ICON_FRU_STRAWBERRY]',	'TXT_KEY_RESOURCE_STRAWBERRYZ',	      'TXT_KEY_CIV5_RESOURCE_STRAWBERRYZ_TEXT',	               NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_COCOAZ',	      'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_CALENDAR',	        'REP_RESOURCE_ATLAS_CROPS',	          9,				'ART_DEF_RESOURCE_COCOA',	    '[ICON_CRO_COCOA]',	        'TXT_KEY_RESOURCE_COCOAZ',	          'TXT_KEY_CIV5_RESOURCE_COCOAZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_CORNZ',	      'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_CALENDAR',	        'REP_RESOURCE_ATLAS_CROPS',	          11,				'ART_DEF_RESOURCE_CORN',	    '[ICON_CRO_CORN]',	        'TXT_KEY_RESOURCE_CORNZ',	          'TXT_KEY_CIV5_RESOURCE_CORNZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_HOPZ',	          'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_CALENDAR',	        'REP_RESOURCE_ATLAS_CROPS',	          1,				'ART_DEF_RESOURCE_HOPS',	        '[ICON_CRO_HOP]',	        'TXT_KEY_RESOURCE_HOPZ',	          'TXT_KEY_CIV5_RESOURCE_HOPZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_OATZ',	          'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_CALENDAR',	        'REP_RESOURCE_ATLAS_CROPS',	          3,				'ART_DEF_RESOURCE_OATS',	    '[ICON_CRO_OAT]',	        'TXT_KEY_RESOURCE_OATZ',	          'TXT_KEY_CIV5_RESOURCE_OATZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_RICEZ',	      'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_CALENDAR',	        'REP_RESOURCE_ATLAS_CROPS',	          12,				'ART_DEF_RESOURCE_ALOEVERA',	'[ICON_CRO_RICE]',	        'TXT_KEY_RESOURCE_RICEZ',	          'TXT_KEY_CIV5_RESOURCE_RICEZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_TEAZ',	          'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_CALENDAR',	        'REP_RESOURCE_ATLAS_CROPS',	          7,				'ART_DEF_RESOURCE_TEA',	        '[ICON_CRO_TEA]',	        'TXT_KEY_RESOURCE_TEAZ',	          'TXT_KEY_CIV5_RESOURCE_TEAZ_TEXT',	                   NULL,									       10,					2,				0,				3,				50,					3,			67,			 0 UNION ALL
--SELECT 'RESOURCE_TOBACCOZ',	      'RESOURCECLASS_LUXURY',  0,		0,		1,			90,				  4,	   'TECH_CALENDAR',	        'REP_RESOURCE_ATLAS_CROPS',	          8,				'ART_DEF_RESOURCE_TOBACCO',	    '[ICON_CRO_TOBACCO]',	    'TXT_KEY_RESOURCE_TOBACCOZ',	      'TXT_KEY_CIV5_RESOURCE_TOBACCOZ_TEXT',	               NULL,									       10,					2,				0,				3,				50,					3,			67,			 0;

--------------------------------------------------------------------------------------------------
--Resource Yield Changes
--------------------------------------------------------------------------------------------------
INSERT INTO Resource_YieldChanges (ResourceType,	YieldType,			Yield)
SELECT 'RESOURCE_FA_MAIZEX',							'YIELD_FOOD',		2 UNION ALL
SELECT 'RESOURCE_BASSZ',                            'YIELD_FOOD',        2 UNION ALL
SELECT 'RESOURCE_BLUECRABZ',                        'YIELD_FOOD',        2 UNION ALL
SELECT 'RESOURCE_BLUEWHALEZ',                       'YIELD_FOOD',        1 UNION ALL
SELECT 'RESOURCE_BLUEWHALEZ',                       'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_CLAMZ',                            'YIELD_FOOD',        2 UNION ALL
SELECT 'RESOURCE_CLAMZ',                            'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_CORALZ',                           'YIELD_FOOD',        2 UNION ALL
SELECT 'RESOURCE_DOLPHINZ',                         'YIELD_FOOD',        1 UNION ALL
SELECT 'RESOURCE_DOLPHINZ',                         'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_GREATWHITEZ',                      'YIELD_FOOD',        1 UNION ALL
SELECT 'RESOURCE_GREATWHITEZ',                      'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_GREYWHALEZ',                       'YIELD_FOOD',        1 UNION ALL
SELECT 'RESOURCE_GREYWHALEZ',                       'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_HUMPBACKWHALEZ',                   'YIELD_FOOD',        1 UNION ALL
SELECT 'RESOURCE_HUMPBACKWHALEZ',                   'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_KINGCRABZ',                        'YIELD_FOOD',        1 UNION ALL
SELECT 'RESOURCE_KINGCRABZ',                        'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_LOBSTERZ',                         'YIELD_FOOD',        1 UNION ALL
SELECT 'RESOURCE_LOBSTERZ',                         'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_MARLINZ',                          'YIELD_FOOD',        2 UNION ALL
SELECT 'RESOURCE_OYSTERSZ',                         'YIELD_FOOD',        1 UNION ALL
SELECT 'RESOURCE_OYSTERSZ',                         'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_SALMONZ',                          'YIELD_FOOD',        2 UNION ALL
SELECT 'RESOURCE_SHRIMPZ',                          'YIELD_FOOD',        2 UNION ALL
SELECT 'RESOURCE_SHRIMPZ',                          'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_SQUIDZ',                           'YIELD_FOOD',        2 UNION ALL
SELECT 'RESOURCE_STONECRABZ',                       'YIELD_FOOD',        2 UNION ALL
SELECT 'RESOURCE_TROPICALFISHZ',                    'YIELD_FOOD',        1 UNION ALL
SELECT 'RESOURCE_TROPICALFISHZ',                    'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_TROUTZ',                           'YIELD_FOOD',        2 UNION ALL
SELECT 'RESOURCE_TUNAZ',                            'YIELD_FOOD',        2 UNION ALL
SELECT 'RESOURCE_DIAMONDZ',                         'YIELD_GOLD',        3 UNION ALL
SELECT 'RESOURCE_RUBYZ',                            'YIELD_GOLD',        3 UNION ALL
SELECT 'RESOURCE_EMERALDZ',                         'YIELD_GOLD',        3 UNION ALL
SELECT 'RESOURCE_SAPPHIREZ',                        'YIELD_GOLD',        3 UNION ALL
SELECT 'RESOURCE_LEADZ',                            'YIELD_GOLD',        3 UNION ALL
SELECT 'RESOURCE_NICKELZ',                          'YIELD_GOLD',        3 UNION ALL
SELECT 'RESOURCE_PLATINUMZ',                        'YIELD_GOLD',        3 UNION ALL
SELECT 'RESOURCE_TITANIUMZ',                        'YIELD_GOLD',        3 UNION ALL
SELECT 'RESOURCE_MANGANESEZ',                       'YIELD_GOLD',        3 UNION ALL
SELECT 'RESOURCE_CINNAMONZ',                        'YIELD_FOOD',        2 UNION ALL
SELECT 'RESOURCE_FRANKINCENSEZ',                    'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_FRANKINCENSEZ',                    'YIELD_CULTURE',     1 UNION ALL
SELECT 'RESOURCE_GINGERZ',                          'YIELD_FOOD',        2 UNION ALL
SELECT 'RESOURCE_LAVENDERZ',                        'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_MYRRHZ',                           'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_MYRRHZ',                           'YIELD_CULTURE',     1 UNION ALL
SELECT 'RESOURCE_SAFFRONZ',                         'YIELD_GOLD',        2 UNION ALL
SELECT 'RESOURCE_BIRCHZ',                           'YIELD_PRODUCTION',  2 UNION ALL
SELECT 'RESOURCE_CEDARZ',                           'YIELD_PRODUCTION',  2 UNION ALL
SELECT 'RESOURCE_MAPLEZ',                           'YIELD_PRODUCTION',  2 UNION ALL
SELECT 'RESOURCE_MAPLEZ',                           'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_OAKZ',                             'YIELD_PRODUCTION',  2 UNION ALL
SELECT 'RESOURCE_PINEZ',                            'YIELD_PRODUCTION',  2 UNION ALL
SELECT 'RESOURCE_REDWOODZ',                         'YIELD_PRODUCTION',  1 UNION ALL
SELECT 'RESOURCE_REDWOODZ',                         'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_ALPACAZ',                          'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_ALPACAZ',                          'YIELD_FOOD',        1 UNION ALL
SELECT 'RESOURCE_ANGUSZ',                           'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_ANGUSZ',                           'YIELD_FOOD',        1 UNION ALL
SELECT 'RESOURCE_ELKZ',                             'YIELD_FOOD',        2 UNION ALL
SELECT 'RESOURCE_HOLSTEINZ',                        'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_HOLSTEINZ',                        'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_LONGHORNZ',                        'YIELD_FOOD',        2 UNION ALL
SELECT 'RESOURCE_MOOSEZ',                           'YIELD_FOOD',        2 UNION ALL
SELECT 'RESOURCE_PIGZ',                             'YIELD_FOOD',        2 UNION ALL
SELECT 'RESOURCE_REINDEERZ',                        'YIELD_FOOD',        1 UNION ALL
SELECT 'RESOURCE_REINDEERZ',                        'YIELD_PRODUCTION',  1 UNION ALL
SELECT 'RESOURCE_WTAILDEERZ',                       'YIELD_FOOD',        2 UNION ALL
SELECT 'RESOURCE_APPLEZ',                           'YIELD_FOOD',        2 UNION ALL
SELECT 'RESOURCE_COCONUTZ',                         'YIELD_FOOD',        2 UNION ALL
SELECT 'RESOURCE_CRANBERRYZ',                       'YIELD_FOOD',        1 UNION ALL
SELECT 'RESOURCE_CRANBERRYZ',                       'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_GRAPEZ',                           'YIELD_FOOD',        2 UNION ALL
SELECT 'RESOURCE_MANGOZ',                           'YIELD_FOOD',        1 UNION ALL
SELECT 'RESOURCE_MANGOZ',                           'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_ORANGEZ',                          'YIELD_FOOD',        2 UNION ALL
SELECT 'RESOURCE_PEACHZ',                           'YIELD_FOOD',        2 UNION ALL
SELECT 'RESOURCE_PINEAPPLEZ',                       'YIELD_FOOD',        2 UNION ALL
SELECT 'RESOURCE_POMEGRANATEZ',                     'YIELD_FOOD',        1 UNION ALL
SELECT 'RESOURCE_POMEGRANATEZ',                     'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_RASPBERRYZ',                       'YIELD_FOOD',        1 UNION ALL
SELECT 'RESOURCE_RASPBERRYZ',                       'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_STRAWBERRYZ',                      'YIELD_FOOD',        2 UNION ALL

SELECT 'RESOURCE_BARLEYZ',                          'YIELD_FOOD',        3 UNION ALL
SELECT 'RESOURCE_COCOAZ',                           'YIELD_FOOD',        2 UNION ALL
SELECT 'RESOURCE_COFFEEZ',                            'YIELD_GOLD',        2 UNION ALL
SELECT 'RESOURCE_COFFEEZ',                          'YIELD_PRODUCTION',  1 UNION ALL
SELECT 'RESOURCE_CORNZ',                            'YIELD_FOOD',        2 UNION ALL
SELECT 'RESOURCE_HEMPZ',                            'YIELD_GOLD',        2 UNION ALL
SELECT 'RESOURCE_HEMPZ',                            'YIELD_PRODUCTION',  1 UNION ALL
SELECT 'RESOURCE_HOPZ',                             'YIELD_FOOD',        1 UNION ALL
SELECT 'RESOURCE_HOPZ',                             'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_OATZ',                             'YIELD_FOOD',        2 UNION ALL
SELECT 'RESOURCE_PEANUTZ',                          'YIELD_FOOD',        1 UNION ALL
SELECT 'RESOURCE_PEANUTZ',                          'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_POTATOEZ',                         'YIELD_FOOD',        3 UNION ALL
SELECT 'RESOURCE_POTATOEZ',                         'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_RICEZ',                            'YIELD_FOOD',        2 UNION ALL
SELECT 'RESOURCE_SOYBEANZ',                         'YIELD_FOOD',        2 UNION ALL
SELECT 'RESOURCE_SOYBEANZ',                         'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_TEAZ',                             'YIELD_FOOD',        1 UNION ALL
SELECT 'RESOURCE_TEAZ',                             'YIELD_CULTURE',     1 UNION ALL
SELECT 'RESOURCE_TOBACCOZ',                         'YIELD_GOLD',        1 UNION ALL
SELECT 'RESOURCE_TOBACCOZ',                         'YIELD_PRODUCTION',  1;

--------------------------------------------------------------------------------------------------
--Resource Flavors
--------------------------------------------------------------------------------------------------
INSERT INTO Resource_Flavors (ResourceType,	FlavorType,				Flavor)
SELECT 'RESOURCE_FA_MAIZEX',					'FLAVOR_GROWTH',		20 UNION ALL
SELECT 'RESOURCE_FA_MAIZEX',					'FLAVOR_GOLD',			20 UNION ALL
SELECT 'RESOURCE_BASSZ',                  'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_BLUECRABZ',              'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_BLUEWHALEZ',             'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_CLAMZ',                  'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_CORALZ',                 'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_DOLPHINZ',               'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_GREATWHITEZ',            'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_GREYWHALEZ',             'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_HUMPBACKWHALEZ',         'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_KINGCRABZ',              'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_LOBSTERZ',               'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_MARLINZ',                'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_OYSTERSZ',               'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_SALMONZ',                'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_SHRIMPZ',                'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_SQUIDZ',                 'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_STONECRABZ',             'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_TROPICALFISHZ',          'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_TROUTZ',                 'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_TUNAZ',                  'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_DIAMONDZ',               'FLAVOR_HAPPINESS',   10 UNION ALL
SELECT 'RESOURCE_RUBYZ',                  'FLAVOR_HAPPINESS',   10 UNION ALL
SELECT 'RESOURCE_EMERALDZ',               'FLAVOR_HAPPINESS',   10 UNION ALL
SELECT 'RESOURCE_SAPPHIREZ',              'FLAVOR_HAPPINESS',   10 UNION ALL
SELECT 'RESOURCE_LEADZ',                  'FLAVOR_HAPPINESS',   10 UNION ALL
SELECT 'RESOURCE_NICKELZ',                'FLAVOR_HAPPINESS',   10 UNION ALL
SELECT 'RESOURCE_PLATINUMZ',              'FLAVOR_HAPPINESS',   10 UNION ALL
SELECT 'RESOURCE_TITANIUMZ',              'FLAVOR_HAPPINESS',   10 UNION ALL
SELECT 'RESOURCE_MANGANESEZ',             'FLAVOR_HAPPINESS',   10 UNION ALL
SELECT 'RESOURCE_CINNAMONZ',              'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_FRANKINCENSEZ',          'FLAVOR_HAPPINESS',   10 UNION ALL
SELECT 'RESOURCE_GINGERZ',                'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_LAVENDERZ',              'FLAVOR_HAPPINESS',   10 UNION ALL
SELECT 'RESOURCE_MYRRHZ',                 'FLAVOR_HAPPINESS',   10 UNION ALL
SELECT 'RESOURCE_SAFFRONZ',               'FLAVOR_HAPPINESS',   10 UNION ALL
SELECT 'RESOURCE_BIRCHZ',                 'FLAVOR_PRODUCTION',  10 UNION ALL
SELECT 'RESOURCE_CEDARZ',                 'FLAVOR_PRODUCTION',  10 UNION ALL
SELECT 'RESOURCE_MAPLEZ',                 'FLAVOR_PRODUCTION',  10 UNION ALL
SELECT 'RESOURCE_OAKZ',                   'FLAVOR_PRODUCTION',  10 UNION ALL
SELECT 'RESOURCE_PINEZ',                  'FLAVOR_PRODUCTION',  10 UNION ALL
SELECT 'RESOURCE_REDWOODZ',               'FLAVOR_PRODUCTION',  10 UNION ALL
SELECT 'RESOURCE_ALPACAZ',                'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_ANGUSZ',                 'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_ELKZ',                   'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_HOLSTEINZ',              'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_LONGHORNZ',              'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_MOOSEZ',                 'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_PIGZ',                   'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_REINDEERZ',              'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_WTAILDEERZ',             'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_APPLEZ',                 'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_COCONUTZ',               'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_CRANBERRYZ',             'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_GRAPEZ',                 'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_MANGOZ',                 'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_ORANGEZ',                'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_PEACHZ',                 'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_PINEAPPLEZ',             'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_POMEGRANATEZ',           'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_RASPBERRYZ',             'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_STRAWBERRYZ',            'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_BARLEYZ',                'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_COCOAZ',                 'FLAVOR_HAPPINESS',   10 UNION ALL
SELECT 'RESOURCE_COFFEEZ',                'FLAVOR_PRODUCTION',  10 UNION ALL
SELECT 'RESOURCE_COFFEEZ',                'FLAVOR_HAPPINESS',  10 UNION ALL
SELECT 'RESOURCE_CORNZ',                  'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_HEMPZ',                  'FLAVOR_PRODUCTION',  10 UNION ALL
SELECT 'RESOURCE_HEMPZ',                  'FLAVOR_HAPPINESS',  10 UNION ALL
SELECT 'RESOURCE_HOPZ',                   'FLAVOR_HAPPINESS',   10 UNION ALL
SELECT 'RESOURCE_OATZ',                   'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_PEANUTZ',                'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_POTATOEZ',               'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_RICEZ',                  'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_SOYBEANZ',               'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_TEAZ',                   'FLAVOR_GROWTH',      10 UNION ALL
SELECT 'RESOURCE_TOBACCOZ',               'FLAVOR_HAPPINESS',   10;


--------------------------------------------------------------------------------------------------
--Resource Terrains
--------------------------------------------------------------------------------------------------
INSERT INTO Resource_TerrainBooleans (ResourceType,	TerrainType)
SELECT 'RESOURCE_FA_MAIZEX',							'TERRAIN_GRASS' UNION ALL
SELECT 'RESOURCE_BASSZ',						  'TERRAIN_COAST'  UNION ALL
SELECT 'RESOURCE_BLUECRABZ',					  'TERRAIN_COAST'  UNION ALL
SELECT 'RESOURCE_BLUEWHALEZ',				      'TERRAIN_COAST'  UNION ALL
SELECT 'RESOURCE_CLAMZ',						  'TERRAIN_COAST'  UNION ALL
SELECT 'RESOURCE_CORALZ',						  'TERRAIN_COAST'  UNION ALL
SELECT 'RESOURCE_DOLPHINZ',						  'TERRAIN_COAST'  UNION ALL
SELECT 'RESOURCE_GREATWHITEZ',					  'TERRAIN_COAST'  UNION ALL
SELECT 'RESOURCE_GREYWHALEZ',					  'TERRAIN_COAST'  UNION ALL
SELECT 'RESOURCE_HUMPBACKWHALEZ',				  'TERRAIN_COAST'  UNION ALL
SELECT 'RESOURCE_KINGCRABZ',					  'TERRAIN_COAST'  UNION ALL
SELECT 'RESOURCE_LOBSTERZ',						  'TERRAIN_COAST'  UNION ALL
SELECT 'RESOURCE_MARLINZ',						  'TERRAIN_COAST'  UNION ALL
SELECT 'RESOURCE_OYSTERSZ',						  'TERRAIN_COAST'  UNION ALL
SELECT 'RESOURCE_SALMONZ',						  'TERRAIN_COAST'  UNION ALL
SELECT 'RESOURCE_SHRIMPZ',						  'TERRAIN_COAST'  UNION ALL
SELECT 'RESOURCE_SQUIDZ',						  'TERRAIN_COAST'  UNION ALL
SELECT 'RESOURCE_STONECRABZ',					  'TERRAIN_COAST'  UNION ALL
SELECT 'RESOURCE_TROPICALFISHZ',				  'TERRAIN_COAST'  UNION ALL
SELECT 'RESOURCE_TROUTZ',						  'TERRAIN_COAST'  UNION ALL
SELECT 'RESOURCE_TUNAZ',                          'TERRAIN_COAST'  UNION ALL
SELECT 'RESOURCE_DIAMONDZ',                       'TERRAIN_GRASS'  UNION ALL
SELECT 'RESOURCE_RUBYZ',                          'TERRAIN_GRASS'  UNION ALL
SELECT 'RESOURCE_EMERALDZ',                       'TERRAIN_GRASS'  UNION ALL
SELECT 'RESOURCE_SAPPHIREZ',                      'TERRAIN_GRASS'  UNION ALL
SELECT 'RESOURCE_LEADZ',                          'TERRAIN_GRASS'  UNION ALL
SELECT 'RESOURCE_NICKELZ',                        'TERRAIN_GRASS'  UNION ALL
SELECT 'RESOURCE_PLATINUMZ',                      'TERRAIN_GRASS'  UNION ALL
SELECT 'RESOURCE_TITANIUMZ',                      'TERRAIN_GRASS'  UNION ALL
SELECT 'RESOURCE_MANGANESEZ',                     'TERRAIN_GRASS'  UNION ALL
SELECT 'RESOURCE_DIAMONDZ',                       'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_RUBYZ',                          'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_EMERALDZ',                       'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_SAPPHIREZ',                      'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_LEADZ',                          'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_NICKELZ',                        'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_PLATINUMZ',                      'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_TITANIUMZ',                      'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_MANGANESEZ',                     'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_DIAMONDZ',                       'TERRAIN_DESERT' UNION ALL
SELECT 'RESOURCE_RUBYZ',                          'TERRAIN_DESERT' UNION ALL
SELECT 'RESOURCE_EMERALDZ',                       'TERRAIN_DESERT' UNION ALL
SELECT 'RESOURCE_SAPPHIREZ',                      'TERRAIN_DESERT' UNION ALL
SELECT 'RESOURCE_LEADZ',                          'TERRAIN_DESERT' UNION ALL
SELECT 'RESOURCE_NICKELZ',                        'TERRAIN_DESERT' UNION ALL
SELECT 'RESOURCE_PLATINUMZ',                      'TERRAIN_DESERT' UNION ALL
SELECT 'RESOURCE_TITANIUMZ',                      'TERRAIN_DESERT' UNION ALL
SELECT 'RESOURCE_MANGANESEZ',                     'TERRAIN_DESERT' UNION ALL
SELECT 'RESOURCE_DIAMONDZ',                       'TERRAIN_TUNDRA' UNION ALL
SELECT 'RESOURCE_RUBYZ',                          'TERRAIN_TUNDRA' UNION ALL
SELECT 'RESOURCE_EMERALDZ',                       'TERRAIN_TUNDRA' UNION ALL
SELECT 'RESOURCE_SAPPHIREZ',                      'TERRAIN_TUNDRA' UNION ALL
SELECT 'RESOURCE_LEADZ',                          'TERRAIN_TUNDRA' UNION ALL
SELECT 'RESOURCE_NICKELZ',                        'TERRAIN_TUNDRA' UNION ALL
SELECT 'RESOURCE_PLATINUMZ',                      'TERRAIN_TUNDRA' UNION ALL
SELECT 'RESOURCE_TITANIUMZ',                      'TERRAIN_TUNDRA' UNION ALL
SELECT 'RESOURCE_MANGANESEZ',                     'TERRAIN_TUNDRA' UNION ALL
SELECT 'RESOURCE_CINNAMONZ',                      'TERRAIN_GRASS'  UNION ALL
SELECT 'RESOURCE_FRANKINCENSEZ',                  'TERRAIN_GRASS'  UNION ALL
SELECT 'RESOURCE_GINGERZ',                        'TERRAIN_GRASS'  UNION ALL
SELECT 'RESOURCE_LAVENDERZ',                      'TERRAIN_GRASS'  UNION ALL
SELECT 'RESOURCE_MYRRHZ',                         'TERRAIN_GRASS'  UNION ALL
SELECT 'RESOURCE_SAFFRONZ',                       'TERRAIN_GRASS'  UNION ALL
SELECT 'RESOURCE_ALPACAZ',                        'TERRAIN_GRASS'  UNION ALL
SELECT 'RESOURCE_ANGUSZ',                         'TERRAIN_GRASS'  UNION ALL
SELECT 'RESOURCE_ELKZ',                           'TERRAIN_GRASS'  UNION ALL
SELECT 'RESOURCE_HOLSTEINZ',                      'TERRAIN_GRASS'  UNION ALL
SELECT 'RESOURCE_LONGHORNZ',                      'TERRAIN_GRASS'  UNION ALL
SELECT 'RESOURCE_MOOSEZ',                         'TERRAIN_TUNDRA' UNION ALL
SELECT 'RESOURCE_PIGZ',                           'TERRAIN_GRASS'  UNION ALL
SELECT 'RESOURCE_REINDEERZ',                      'TERRAIN_TUNDRA' UNION ALL
SELECT 'RESOURCE_WTAILDEERZ',                     'TERRAIN_GRASS'  UNION ALL
SELECT 'RESOURCE_APPLEZ',                         'TERRAIN_GRASS' UNION ALL
SELECT 'RESOURCE_COCONUTZ',                       'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_GRAPEZ',                         'TERRAIN_GRASS'  UNION ALL
SELECT 'RESOURCE_MANGOZ',                         'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_ORANGEZ',                        'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_PEACHZ',                         'TERRAIN_GRASS'  UNION ALL
SELECT 'RESOURCE_PINEAPPLEZ',                     'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_POMEGRANATEZ',                   'TERRAIN_GRASS'  UNION ALL
SELECT 'RESOURCE_RASPBERRYZ',                     'TERRAIN_GRASS' UNION ALL
SELECT 'RESOURCE_STRAWBERRYZ',                    'TERRAIN_GRASS'  UNION ALL
SELECT 'RESOURCE_BARLEYZ',                        'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_COCOAZ',                         'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_COFFEEZ',                        'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_CORNZ',                          'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_HEMPZ',                          'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_HOPZ',                           'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_OATZ',                           'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_PEANUTZ',                        'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_POTATOEZ',                       'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_SOYBEANZ',                       'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_TEAZ',                           'TERRAIN_PLAINS' UNION ALL
SELECT 'RESOURCE_TOBACCOZ',                       'TERRAIN_PLAINS';

--------------------------------------------------------------------------------------------------
--Resource Features
--------------------------------------------------------------------------------------------------
INSERT INTO Resource_FeatureBooleans (ResourceType,	FeatureType)
SELECT 'RESOURCE_FA_MAIZEX',						'FEATURE_MARSH'          UNION ALL
SELECT 'RESOURCE_FA_MAIZEX',						'FEATURE_FLOOD_PLAINS'   UNION ALL
SELECT 'RESOURCE_DIAMONDZ',                          'FEATURE_JUNGLE'         UNION ALL
SELECT 'RESOURCE_RUBYZ',                             'FEATURE_JUNGLE'         UNION ALL
SELECT 'RESOURCE_EMERALDZ',                          'FEATURE_JUNGLE'         UNION ALL
SELECT 'RESOURCE_SAPPHIREZ',                         'FEATURE_JUNGLE'         UNION ALL
SELECT 'RESOURCE_LEADZ',                             'FEATURE_JUNGLE'         UNION ALL
SELECT 'RESOURCE_NICKELZ',                           'FEATURE_JUNGLE'         UNION ALL
SELECT 'RESOURCE_PLATINUMZ',                         'FEATURE_JUNGLE'         UNION ALL
SELECT 'RESOURCE_TITANIUMZ',                         'FEATURE_JUNGLE'         UNION ALL
SELECT 'RESOURCE_MANGANESEZ',                        'FEATURE_JUNGLE'         UNION ALL
SELECT 'RESOURCE_BIRCHZ',                            'FEATURE_FOREST'         UNION ALL
SELECT 'RESOURCE_CEDARZ',                            'FEATURE_FOREST'         UNION ALL
SELECT 'RESOURCE_MAPLEZ',                            'FEATURE_JUNGLE'         UNION ALL
SELECT 'RESOURCE_OAKZ',                              'FEATURE_FOREST'         UNION ALL
SELECT 'RESOURCE_PINEZ',                             'FEATURE_FOREST'         UNION ALL
SELECT 'RESOURCE_REDWOODZ',                          'FEATURE_FOREST'         UNION ALL
SELECT 'RESOURCE_CRANBERRYZ',                        'FEATURE_FLOOD_PLAINS'   UNION ALL
SELECT 'RESOURCE_CRANBERRYZ',                        'FEATURE_MARSH'          UNION ALL
SELECT 'RESOURCE_ELKZ',                              'FEATURE_FOREST'         UNION ALL
SELECT 'RESOURCE_MOOSEZ',                            'FEATURE_FOREST'         UNION ALL
SELECT 'RESOURCE_PIGZ',                              'FEATURE_FOREST'         UNION ALL
SELECT 'RESOURCE_REINDEERZ',                         'FEATURE_FOREST'         UNION ALL
SELECT 'RESOURCE_WTAILDEERZ',                        'FEATURE_FOREST'         UNION ALL
SELECT 'RESOURCE_RICEZ',                             'FEATURE_FLOOD_PLAINS'   UNION ALL
SELECT 'RESOURCE_RICEZ',                             'FEATURE_MARSH';

--------------------------------------------------------------------------------------------------
--Resource Feature Terrains
--------------------------------------------------------------------------------------------------
INSERT INTO Resource_FeatureTerrainBooleans (ResourceType,	TerrainType)
SELECT 'RESOURCE_FA_MAIZEX',						'TERRAIN_DESERT'          UNION ALL
SELECT 'RESOURCE_DIAMONDZ',                          'TERRAIN_GRASS'           UNION ALL
SELECT 'RESOURCE_RUBYZ',                             'TERRAIN_GRASS'           UNION ALL
SELECT 'RESOURCE_EMERALDZ',                          'TERRAIN_GRASS'           UNION ALL
SELECT 'RESOURCE_SAPPHIREZ',                         'TERRAIN_GRASS'           UNION ALL
SELECT 'RESOURCE_LEADZ',                             'TERRAIN_GRASS'           UNION ALL
SELECT 'RESOURCE_NICKELZ',                           'TERRAIN_GRASS'           UNION ALL
SELECT 'RESOURCE_PLATINUMZ',                         'TERRAIN_GRASS'           UNION ALL
SELECT 'RESOURCE_TITANIUMZ',                         'TERRAIN_GRASS'           UNION ALL
SELECT 'RESOURCE_MANGANESEZ',                        'TERRAIN_GRASS'           UNION ALL
SELECT 'RESOURCE_DIAMONDZ',                          'TERRAIN_PLAINS'          UNION ALL
SELECT 'RESOURCE_RUBYZ',                             'TERRAIN_PLAINS'          UNION ALL
SELECT 'RESOURCE_EMERALDZ',                          'TERRAIN_PLAINS'          UNION ALL
SELECT 'RESOURCE_SAPPHIREZ',                         'TERRAIN_PLAINS'          UNION ALL
SELECT 'RESOURCE_LEADZ',                             'TERRAIN_PLAINS'          UNION ALL
SELECT 'RESOURCE_NICKELZ',                           'TERRAIN_PLAINS'          UNION ALL
SELECT 'RESOURCE_PLATINUMZ',                         'TERRAIN_PLAINS'          UNION ALL
SELECT 'RESOURCE_TITANIUMZ',                         'TERRAIN_PLAINS'          UNION ALL
SELECT 'RESOURCE_MANGANESEZ',                        'TERRAIN_PLAINS'          UNION ALL
SELECT 'RESOURCE_BIRCHZ',                            'TERRAIN_GRASS'           UNION ALL
SELECT 'RESOURCE_MAPLEZ',                            'TERRAIN_GRASS'           UNION ALL
SELECT 'RESOURCE_OAKZ',                              'TERRAIN_GRASS'           UNION ALL
SELECT 'RESOURCE_REDWOODZ',                          'TERRAIN_GRASS'           UNION ALL
SELECT 'RESOURCE_BIRCHZ',                            'TERRAIN_PLAINS'          UNION ALL
SELECT 'RESOURCE_MAPLEZ',                            'TERRAIN_PLAINS'          UNION ALL
SELECT 'RESOURCE_OAKZ',                              'TERRAIN_PLAINS'          UNION ALL
SELECT 'RESOURCE_REDWOODZ',                          'TERRAIN_PLAINS'          UNION ALL
SELECT 'RESOURCE_CEDARZ',                            'TERRAIN_TUNDRA'          UNION ALL
SELECT 'RESOURCE_PINEZ',                             'TERRAIN_TUNDRA'          UNION ALL
SELECT 'RESOURCE_CRANBERRYZ',                        'TERRAIN_GRASS'           UNION ALL
SELECT 'RESOURCE_CRANBERRYZ',                        'TERRAIN_PLAINS'          UNION ALL
SELECT 'RESOURCE_ELKZ',                              'TERRAIN_TUNDRA'          UNION ALL
SELECT 'RESOURCE_ELKZ',                              'TERRAIN_GRASS'           UNION ALL
SELECT 'RESOURCE_ELKZ',                              'TERRAIN_PLAINS'          UNION ALL
SELECT 'RESOURCE_MOOSEZ',                            'TERRAIN_PLAINS'          UNION ALL
SELECT 'RESOURCE_MOOSEZ',                            'TERRAIN_GRASS'           UNION ALL
SELECT 'RESOURCE_MOOSEZ',                            'TERRAIN_TUNDRA'          UNION ALL
SELECT 'RESOURCE_PIGZ',                              'TERRAIN_PLAINS'          UNION ALL
SELECT 'RESOURCE_PIGZ',                              'TERRAIN_GRASS'           UNION ALL
SELECT 'RESOURCE_REINDEERZ',                         'TERRAIN_TUNDRA'          UNION ALL
SELECT 'RESOURCE_WTAILDEERZ',                        'TERRAIN_PLAINS'          UNION ALL
SELECT 'RESOURCE_WTAILDEERZ',                        'TERRAIN_GRASS'           UNION ALL
SELECT 'RESOURCE_WTAILDEERZ',                        'TERRAIN_TUNDRA'          UNION ALL
SELECT 'RESOURCE_RICEZ',                             'TERRAIN_GRASS'           UNION ALL
SELECT 'RESOURCE_RICEZ',                             'TERRAIN_PLAINS';

--------------------------------------------------------------------------------------------------
--Resource Improvements
--------------------------------------------------------------------------------------------------
INSERT INTO Improvement_ResourceTypes (ResourceType,	ImprovementType)
SELECT 'RESOURCE_FA_MAIZEX',								'IMPROVEMENT_PLANTATION' UNION ALL
SELECT 'RESOURCE_BASSZ',							    'IMPROVEMENT_FISHING_BOATS' UNION ALL
SELECT 'RESOURCE_BLUECRABZ',							'IMPROVEMENT_FISHING_BOATS' UNION ALL
SELECT 'RESOURCE_BLUEWHALEZ',							'IMPROVEMENT_FISHING_BOATS' UNION ALL
SELECT 'RESOURCE_CLAMZ',							    'IMPROVEMENT_FISHING_BOATS' UNION ALL
SELECT 'RESOURCE_CORALZ',							    'IMPROVEMENT_FISHING_BOATS' UNION ALL
SELECT 'RESOURCE_DOLPHINZ',							    'IMPROVEMENT_FISHING_BOATS' UNION ALL
SELECT 'RESOURCE_GREATWHITEZ',							'IMPROVEMENT_FISHING_BOATS' UNION ALL
SELECT 'RESOURCE_GREYWHALEZ',							'IMPROVEMENT_FISHING_BOATS' UNION ALL
SELECT 'RESOURCE_HUMPBACKWHALEZ',						'IMPROVEMENT_FISHING_BOATS' UNION ALL
SELECT 'RESOURCE_KINGCRABZ',							'IMPROVEMENT_FISHING_BOATS' UNION ALL
SELECT 'RESOURCE_LOBSTERZ',							    'IMPROVEMENT_FISHING_BOATS' UNION ALL
SELECT 'RESOURCE_MARLINZ',							    'IMPROVEMENT_FISHING_BOATS' UNION ALL
SELECT 'RESOURCE_OYSTERSZ',							    'IMPROVEMENT_FISHING_BOATS' UNION ALL
SELECT 'RESOURCE_SALMONZ',							    'IMPROVEMENT_FISHING_BOATS' UNION ALL
SELECT 'RESOURCE_SHRIMPZ',							    'IMPROVEMENT_FISHING_BOATS' UNION ALL
SELECT 'RESOURCE_SQUIDZ',							    'IMPROVEMENT_FISHING_BOATS' UNION ALL
SELECT 'RESOURCE_STONECRABZ',							'IMPROVEMENT_FISHING_BOATS' UNION ALL
SELECT 'RESOURCE_TROPICALFISHZ',						'IMPROVEMENT_FISHING_BOATS' UNION ALL
SELECT 'RESOURCE_TROUTZ',							    'IMPROVEMENT_FISHING_BOATS' UNION ALL
SELECT 'RESOURCE_TUNAZ',                                'IMPROVEMENT_FISHING_BOATS' UNION ALL
SELECT 'RESOURCE_DIAMONDZ',                             'IMPROVEMENT_MINE'          UNION ALL
SELECT 'RESOURCE_RUBYZ',                                'IMPROVEMENT_MINE'          UNION ALL
SELECT 'RESOURCE_EMERALDZ',                             'IMPROVEMENT_MINE'          UNION ALL
SELECT 'RESOURCE_SAPPHIREZ',                            'IMPROVEMENT_MINE'          UNION ALL
SELECT 'RESOURCE_LEADZ',                                'IMPROVEMENT_MINE'          UNION ALL
SELECT 'RESOURCE_NICKELZ',                              'IMPROVEMENT_MINE'          UNION ALL
SELECT 'RESOURCE_PLATINUMZ',                            'IMPROVEMENT_MINE'          UNION ALL
SELECT 'RESOURCE_TITANIUMZ',                            'IMPROVEMENT_MINE'          UNION ALL
SELECT 'RESOURCE_MANGANESEZ',                           'IMPROVEMENT_MINE'          UNION ALL
SELECT 'RESOURCE_CINNAMONZ',                            'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_FRANKINCENSEZ',                        'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_GINGERZ',                              'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_LAVENDERZ',                            'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_MYRRHZ',                               'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_SAFFRONZ',                             'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_BIRCHZ',                               'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_CEDARZ',                               'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_MAPLEZ',                               'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_OAKZ',                                 'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_PINEZ',                                'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_REDWOODZ',                             'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_ALPACAZ',                              'IMPROVEMENT_PASTURE'       UNION ALL
SELECT 'RESOURCE_ANGUSZ',                               'IMPROVEMENT_PASTURE'       UNION ALL
SELECT 'RESOURCE_ELKZ',                                 'IMPROVEMENT_CAMP'          UNION ALL
SELECT 'RESOURCE_HOLSTEINZ',                            'IMPROVEMENT_PASTURE'       UNION ALL
SELECT 'RESOURCE_LONGHORNZ',                            'IMPROVEMENT_PASTURE'       UNION ALL
SELECT 'RESOURCE_MOOSEZ',                               'IMPROVEMENT_CAMP'          UNION ALL
SELECT 'RESOURCE_PIGZ',                                 'IMPROVEMENT_CAMP'          UNION ALL
SELECT 'RESOURCE_REINDEERZ',                            'IMPROVEMENT_CAMP'          UNION ALL
SELECT 'RESOURCE_WTAILDEERZ',                           'IMPROVEMENT_CAMP'          UNION ALL
SELECT 'RESOURCE_APPLEZ',                               'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_COCONUTZ',                             'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_CRANBERRYZ',                           'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_GRAPEZ',                               'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_MANGOZ',                               'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_ORANGEZ',                              'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_PEACHZ',                               'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_PINEAPPLEZ',                           'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_POMEGRANATEZ',                         'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_RASPBERRYZ',                           'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_STRAWBERRYZ',                          'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_BARLEYZ',                              'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_COCOAZ',                               'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_COFFEEZ',                              'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_CORNZ',                                'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_HEMPZ',                                'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_HOPZ',                                 'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_OATZ',                                 'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_PEANUTZ',                              'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_POTATOEZ',                             'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_RICEZ',                                'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_SOYBEANZ',                             'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_TEAZ',                                 'IMPROVEMENT_PLANTATION'    UNION ALL
SELECT 'RESOURCE_TOBACCOZ',                             'IMPROVEMENT_PLANTATION';



--------------------------------------------------------------------------------------------------
--Resource Improvement Yields
--------------------------------------------------------------------------------------------------
INSERT INTO Improvement_ResourceType_Yields (ResourceType,	ImprovementType,			YieldType,			Yield)
SELECT 'RESOURCE_FA_MAIZEX',									'IMPROVEMENT_PLANTATION',	'YIELD_FOOD',		1 UNION ALL
SELECT 'RESOURCE_FA_MAIZEX',									'IMPROVEMENT_PLANTATION',	'YIELD_GOLD',		1 UNION ALL
SELECT 'RESOURCE_BASSZ',								    'IMPROVEMENT_FISHING_BOATS',  'YIELD_GOLD',				1 UNION ALL
SELECT 'RESOURCE_BASSZ',								    'IMPROVEMENT_FISHING_BOATS',  'YIELD_FOOD',				1 UNION ALL
SELECT 'RESOURCE_BLUECRABZ',								'IMPROVEMENT_FISHING_BOATS',  'YIELD_GOLD',				2 UNION ALL
SELECT 'RESOURCE_BLUEWHALEZ',								'IMPROVEMENT_FISHING_BOATS',  'YIELD_FOOD',				1 UNION ALL
SELECT 'RESOURCE_BLUEWHALEZ',								'IMPROVEMENT_FISHING_BOATS',  'YIELD_PRODUCTION',		1 UNION ALL
SELECT 'RESOURCE_CLAMZ',								    'IMPROVEMENT_FISHING_BOATS',  'YIELD_FOOD',				2 UNION ALL
SELECT 'RESOURCE_CORALZ',								    'IMPROVEMENT_FISHING_BOATS',  'YIELD_SCIENCE',			2 UNION ALL
SELECT 'RESOURCE_DOLPHINZ',								    'IMPROVEMENT_FISHING_BOATS',  'YIELD_GOLD',				1 UNION ALL
SELECT 'RESOURCE_DOLPHINZ',								    'IMPROVEMENT_FISHING_BOATS',  'YIELD_SCIENCE',			1 UNION ALL
SELECT 'RESOURCE_GREATWHITEZ',								'IMPROVEMENT_FISHING_BOATS',  'YIELD_GOLD',				1 UNION ALL
SELECT 'RESOURCE_GREATWHITEZ',								'IMPROVEMENT_FISHING_BOATS',  'YIELD_SCIENCE',			1 UNION ALL
SELECT 'RESOURCE_GREYWHALEZ',								'IMPROVEMENT_FISHING_BOATS',  'YIELD_GOLD',				1 UNION ALL
SELECT 'RESOURCE_GREYWHALEZ',								'IMPROVEMENT_FISHING_BOATS',  'YIELD_PRODUCTION',		1 UNION ALL
SELECT 'RESOURCE_HUMPBACKWHALEZ',							'IMPROVEMENT_FISHING_BOATS',  'YIELD_GOLD',				1 UNION ALL
SELECT 'RESOURCE_HUMPBACKWHALEZ',							'IMPROVEMENT_FISHING_BOATS',  'YIELD_FOOD',				1 UNION ALL
SELECT 'RESOURCE_KINGCRABZ',								'IMPROVEMENT_FISHING_BOATS',  'YIELD_PRODUCTION',		1 UNION ALL
SELECT 'RESOURCE_KINGCRABZ',								'IMPROVEMENT_FISHING_BOATS',  'YIELD_GOLD',				1 UNION ALL
SELECT 'RESOURCE_LOBSTERZ',								    'IMPROVEMENT_FISHING_BOATS',  'YIELD_GOLD',				1 UNION ALL
SELECT 'RESOURCE_LOBSTERZ',								    'IMPROVEMENT_FISHING_BOATS',  'YIELD_FOOD',				1 UNION ALL
SELECT 'RESOURCE_MARLINZ',								    'IMPROVEMENT_FISHING_BOATS',  'YIELD_GOLD',				1 UNION ALL
SELECT 'RESOURCE_MARLINZ',								    'IMPROVEMENT_FISHING_BOATS',  'YIELD_FOOD',				1 UNION ALL
SELECT 'RESOURCE_OYSTERSZ',								    'IMPROVEMENT_FISHING_BOATS',  'YIELD_GOLD',				2 UNION ALL
SELECT 'RESOURCE_SALMONZ',								    'IMPROVEMENT_FISHING_BOATS',  'YIELD_GOLD',				1 UNION ALL
SELECT 'RESOURCE_SALMONZ',								    'IMPROVEMENT_FISHING_BOATS',  'YIELD_FOOD',				1 UNION ALL
SELECT 'RESOURCE_SHRIMPZ',								    'IMPROVEMENT_FISHING_BOATS',  'YIELD_GOLD',				1 UNION ALL
SELECT 'RESOURCE_SHRIMPZ',								    'IMPROVEMENT_FISHING_BOATS',  'YIELD_FOOD',				1 UNION ALL
SELECT 'RESOURCE_SQUIDZ',								    'IMPROVEMENT_FISHING_BOATS',  'YIELD_GOLD',				1 UNION ALL
SELECT 'RESOURCE_SQUIDZ',								    'IMPROVEMENT_FISHING_BOATS',  'YIELD_FOOD',				1 UNION ALL
SELECT 'RESOURCE_STONECRABZ',								'IMPROVEMENT_FISHING_BOATS',  'YIELD_GOLD',				1 UNION ALL
SELECT 'RESOURCE_STONECRABZ',								'IMPROVEMENT_FISHING_BOATS',  'YIELD_FOOD',				1 UNION ALL
SELECT 'RESOURCE_TROPICALFISHZ',							'IMPROVEMENT_FISHING_BOATS',  'YIELD_GOLD',				1 UNION ALL
SELECT 'RESOURCE_TROPICALFISHZ',							'IMPROVEMENT_FISHING_BOATS',  'YIELD_SCIENCE',			1 UNION ALL
SELECT 'RESOURCE_TROUTZ',								    'IMPROVEMENT_FISHING_BOATS',  'YIELD_FOOD',			    2 UNION ALL
SELECT 'RESOURCE_TUNAZ',                                    'IMPROVEMENT_FISHING_BOATS',  'YIELD_FOOD',			    2 UNION ALL
SELECT 'RESOURCE_DIAMONDZ',                                 'IMPROVEMENT_MINE',           'YIELD_GOLD',             2 UNION ALL
SELECT 'RESOURCE_RUBYZ',                                    'IMPROVEMENT_MINE',           'YIELD_GOLD',             2 UNION ALL
SELECT 'RESOURCE_EMERALDZ',                                 'IMPROVEMENT_MINE',           'YIELD_GOLD',             2 UNION ALL
SELECT 'RESOURCE_SAPPHIREZ',                                'IMPROVEMENT_MINE',           'YIELD_GOLD',             2 UNION ALL
SELECT 'RESOURCE_LEADZ',                                    'IMPROVEMENT_MINE',           'YIELD_GOLD',             2 UNION ALL
SELECT 'RESOURCE_NICKELZ',                                  'IMPROVEMENT_MINE',           'YIELD_GOLD',             2 UNION ALL
SELECT 'RESOURCE_PLATINUMZ',                                'IMPROVEMENT_MINE',           'YIELD_GOLD',             2 UNION ALL
SELECT 'RESOURCE_TITANIUMZ',                                'IMPROVEMENT_MINE',           'YIELD_GOLD',             2 UNION ALL
SELECT 'RESOURCE_MANGANESEZ',                               'IMPROVEMENT_MINE',           'YIELD_GOLD',             2 UNION ALL
SELECT 'RESOURCE_CINNAMONZ',                                'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             2 UNION ALL
SELECT 'RESOURCE_FRANKINCENSEZ',                            'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             1 UNION ALL
SELECT 'RESOURCE_FRANKINCENSEZ',                            'IMPROVEMENT_PLANTATION',     'YIELD_CULTURE',          1 UNION ALL
SELECT 'RESOURCE_GINGERZ',                                  'IMPROVEMENT_PLANTATION',     'YIELD_FOOD',             1 UNION ALL
SELECT 'RESOURCE_GINGERZ',                                  'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             1 UNION ALL
SELECT 'RESOURCE_LAVENDERZ',                                'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             1 UNION ALL
SELECT 'RESOURCE_LAVENDERZ',                                'IMPROVEMENT_PLANTATION',     'YIELD_CULTURE',          1 UNION ALL
SELECT 'RESOURCE_MYRRHZ',                                   'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             2 UNION ALL
SELECT 'RESOURCE_SAFFRONZ',                                 'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             2 UNION ALL
SELECT 'RESOURCE_BIRCHZ',                                   'IMPROVEMENT_PLANTATION',     'YIELD_PRODUCTION',       1 UNION ALL
SELECT 'RESOURCE_BIRCHZ',                                   'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             1 UNION ALL
SELECT 'RESOURCE_CEDARZ',                                   'IMPROVEMENT_PLANTATION',     'YIELD_PRODUCTION',       1 UNION ALL
SELECT 'RESOURCE_CEDARZ',                                   'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             1 UNION ALL
SELECT 'RESOURCE_MAPLEZ',                                   'IMPROVEMENT_PLANTATION',     'YIELD_PRODUCTION',       1 UNION ALL
SELECT 'RESOURCE_MAPLEZ',                                   'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             1 UNION ALL
SELECT 'RESOURCE_OAKZ',                                     'IMPROVEMENT_PLANTATION',     'YIELD_PRODUCTION',       1 UNION ALL
SELECT 'RESOURCE_OAKZ',                                     'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             1 UNION ALL
SELECT 'RESOURCE_PINEZ',                                    'IMPROVEMENT_PLANTATION',     'YIELD_PRODUCTION',       1 UNION ALL
SELECT 'RESOURCE_PINEZ',                                    'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             1 UNION ALL
SELECT 'RESOURCE_REDWOODZ',                                 'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             2 UNION ALL
SELECT 'RESOURCE_ALPACAZ',                                  'IMPROVEMENT_PASTURE',        'YIELD_GOLD',             2 UNION ALL
SELECT 'RESOURCE_ANGUSZ',                                   'IMPROVEMENT_PASTURE',        'YIELD_GOLD',             2 UNION ALL
SELECT 'RESOURCE_ELKZ',                                     'IMPROVEMENT_CAMP',           'YIELD_FOOD',             1 UNION ALL
SELECT 'RESOURCE_ELKZ',                                     'IMPROVEMENT_CAMP',           'YIELD_GOLD',             1 UNION ALL
SELECT 'RESOURCE_HOLSTEINZ',                                'IMPROVEMENT_PASTURE',        'YIELD_FOOD',             1 UNION ALL
SELECT 'RESOURCE_HOLSTEINZ',                                'IMPROVEMENT_PASTURE',        'YIELD_GOLD',             1 UNION ALL
SELECT 'RESOURCE_LONGHORNZ',                                'IMPROVEMENT_PASTURE',        'YIELD_GOLD',             2 UNION ALL
SELECT 'RESOURCE_MOOSEZ',                                   'IMPROVEMENT_CAMP',           'YIELD_GOLD',             2 UNION ALL
SELECT 'RESOURCE_PIGZ',                                     'IMPROVEMENT_CAMP',           'YIELD_FOOD',             2 UNION ALL
SELECT 'RESOURCE_PIGZ',                                     'IMPROVEMENT_CAMP',           'YIELD_GOLD',             1 UNION ALL
SELECT 'RESOURCE_REINDEERZ',                                'IMPROVEMENT_CAMP',           'YIELD_GOLD',             1 UNION ALL
SELECT 'RESOURCE_REINDEERZ',                                'IMPROVEMENT_CAMP',           'YIELD_PRODUCTION',       1 UNION ALL
SELECT 'RESOURCE_WTAILDEERZ',                               'IMPROVEMENT_CAMP',           'YIELD_GOLD',             2 UNION ALL
SELECT 'RESOURCE_APPLEZ',                                   'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             1 UNION ALL
SELECT 'RESOURCE_COCONUTZ',                                 'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             1 UNION ALL
SELECT 'RESOURCE_CRANBERRYZ',                               'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             1 UNION ALL
SELECT 'RESOURCE_GRAPEZ',                                   'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             1 UNION ALL
SELECT 'RESOURCE_MANGOZ',                                   'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             1 UNION ALL
SELECT 'RESOURCE_ORANGEZ',                                  'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             1 UNION ALL
SELECT 'RESOURCE_PEACHZ',                                   'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             1 UNION ALL
SELECT 'RESOURCE_PINEAPPLEZ',                               'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             1 UNION ALL
SELECT 'RESOURCE_POMEGRANATEZ',                             'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             1 UNION ALL
SELECT 'RESOURCE_RASPBERRYZ',                               'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             1 UNION ALL
SELECT 'RESOURCE_STRAWBERRYZ',                              'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             1 UNION ALL
SELECT 'RESOURCE_APPLEZ',                                   'IMPROVEMENT_PLANTATION',     'YIELD_FOOD',             1 UNION ALL
SELECT 'RESOURCE_COCONUTZ',                                 'IMPROVEMENT_PLANTATION',     'YIELD_FOOD',             1 UNION ALL
SELECT 'RESOURCE_CRANBERRYZ',                               'IMPROVEMENT_PLANTATION',     'YIELD_FOOD',             1 UNION ALL
SELECT 'RESOURCE_GRAPEZ',                                   'IMPROVEMENT_PLANTATION',     'YIELD_FOOD',             1 UNION ALL
SELECT 'RESOURCE_MANGOZ',                                   'IMPROVEMENT_PLANTATION',     'YIELD_FOOD',             1 UNION ALL
SELECT 'RESOURCE_ORANGEZ',                                  'IMPROVEMENT_PLANTATION',     'YIELD_FOOD',             1 UNION ALL
SELECT 'RESOURCE_PEACHZ',                                   'IMPROVEMENT_PLANTATION',     'YIELD_FOOD',             1 UNION ALL
SELECT 'RESOURCE_PINEAPPLEZ',                               'IMPROVEMENT_PLANTATION',     'YIELD_FOOD',             1 UNION ALL
SELECT 'RESOURCE_POMEGRANATEZ',                             'IMPROVEMENT_PLANTATION',     'YIELD_FOOD',             1 UNION ALL
SELECT 'RESOURCE_RASPBERRYZ',                               'IMPROVEMENT_PLANTATION',     'YIELD_FOOD',             1 UNION ALL
SELECT 'RESOURCE_STRAWBERRYZ',                              'IMPROVEMENT_PLANTATION',     'YIELD_FOOD',             1 UNION ALL
SELECT 'RESOURCE_BARLEYZ',                                  'IMPROVEMENT_PLANTATION',     'YIELD_FOOD',             3 UNION ALL
SELECT 'RESOURCE_BARLEYZ',                                  'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             1 UNION ALL
SELECT 'RESOURCE_COCOAZ',                                   'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             2 UNION ALL
SELECT 'RESOURCE_COFFEEZ',                                  'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             1 UNION ALL
SELECT 'RESOURCE_COFFEEZ',                                  'IMPROVEMENT_PLANTATION',     'YIELD_PRODUCTION',       1 UNION ALL
SELECT 'RESOURCE_CORNZ',                                    'IMPROVEMENT_PLANTATION',     'YIELD_FOOD',             2 UNION ALL
SELECT 'RESOURCE_HEMPZ',                                    'IMPROVEMENT_PLANTATION',     'YIELD_FOOD',             1 UNION ALL
SELECT 'RESOURCE_HEMPZ',                                    'IMPROVEMENT_PLANTATION',     'YIELD_PRODUCTION',       1 UNION ALL
SELECT 'RESOURCE_HOPZ',                                     'IMPROVEMENT_PLANTATION',     'YIELD_FOOD',             1 UNION ALL
SELECT 'RESOURCE_HOPZ',                                     'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             1 UNION ALL
SELECT 'RESOURCE_OATZ',                                     'IMPROVEMENT_PLANTATION',     'YIELD_FOOD',             2 UNION ALL
SELECT 'RESOURCE_PEANUTZ',                                  'IMPROVEMENT_PLANTATION',     'YIELD_FOOD',             1 UNION ALL
SELECT 'RESOURCE_PEANUTZ',                                  'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             1 UNION ALL
SELECT 'RESOURCE_POTATOEZ',                                 'IMPROVEMENT_PLANTATION',     'YIELD_FOOD',             3 UNION ALL
SELECT 'RESOURCE_RICEZ',                                    'IMPROVEMENT_PLANTATION',     'YIELD_FOOD',             2 UNION ALL
SELECT 'RESOURCE_SOYBEANZ',                                 'IMPROVEMENT_PLANTATION',     'YIELD_FOOD',             1 UNION ALL
SELECT 'RESOURCE_SOYBEANZ',                                 'IMPROVEMENT_PLANTATION',     'YIELD_GOLD',             1 UNION ALL
SELECT 'RESOURCE_TEAZ',                                     'IMPROVEMENT_PLANTATION',     'YIELD_FOOD',             1 UNION ALL
SELECT 'RESOURCE_TEAZ',                                     'IMPROVEMENT_PLANTATION',     'YIELD_CULTURE',          1 UNION ALL
SELECT 'RESOURCE_TOBACCOZ',                                 'IMPROVEMENT_PLANTATION',     'YIELD_PRODUCTION',       1 UNION ALL
SELECT 'RESOURCE_TOBACCOZ',                                 'IMPROVEMENT_PLANTATION',     'YIELD_CULTURE',          1;


--------------------------------------------------------------------------------------------------
--Icon Atlas 
--------------------------------------------------------------------------------------------------
INSERT INTO IconTextureAtlases (Atlas,	IconSize,	IconsPerRow,	IconsPerColumn,	Filename)
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
SELECT 'ICON_FONT_TEXTURE_FA_MAIZEX',				'maize-fonticons'        UNION ALL
SELECT 'ICON_FONT_TEXTURE_BASSZ',				     'bass-fonticon'         UNION ALL
SELECT 'ICON_FONT_TEXTURE_BLUECRABZ',                'bluecrab-fonticon'     UNION ALL
SELECT 'ICON_FONT_TEXTURE_BLUEWHALEZ',               'bluewhale-fonticon'    UNION ALL
SELECT 'ICON_FONT_TEXTURE_CLAMZ',					 'clam-fonticon'         UNION ALL
SELECT 'ICON_FONT_TEXTURE_CORALZ',					 'coral-fonticon'        UNION ALL
SELECT 'ICON_FONT_TEXTURE_DOLPHINZ',                 'dolphin-fonticon'      UNION ALL
SELECT 'ICON_FONT_TEXTURE_GREATWHITEZ',              'greatwhite-fonticon'   UNION ALL
SELECT 'ICON_FONT_TEXTURE_GREYWHALEZ',               'greywhale-fonticon'    UNION ALL
SELECT 'ICON_FONT_TEXTURE_HUMPBACKWHALEZ',           'hbackwhale-fonticon'   UNION ALL
SELECT 'ICON_FONT_TEXTURE_KINGCRABZ',                'kingcrab-fonticon'     UNION ALL
SELECT 'ICON_FONT_TEXTURE_LOBSTERZ',                 'lobster-fonticon'      UNION ALL
SELECT 'ICON_FONT_TEXTURE_MARLINZ',                  'marlin-fonticon'       UNION ALL
SELECT 'ICON_FONT_TEXTURE_OYSTERSZ',                 'oyster-fonticon'       UNION ALL
SELECT 'ICON_FONT_TEXTURE_SALMONZ',                  'salmon-fonticon'       UNION ALL
SELECT 'ICON_FONT_TEXTURE_SHRIMPZ',                  'shrimp-fonticon'       UNION ALL
SELECT 'ICON_FONT_TEXTURE_SQUIDZ',                   'squid-fonticon'        UNION ALL
SELECT 'ICON_FONT_TEXTURE_STONECRABZ',               'stonecrab-fonticon'    UNION ALL
SELECT 'ICON_FONT_TEXTURE_TROPICALFISHZ',            'tropicalfish-fonticon' UNION ALL
SELECT 'ICON_FONT_TEXTURE_TROUTZ',                   'trout-fonticon'        UNION ALL
SELECT 'ICON_FONT_TEXTURE_TUNAZ',                    'tuna-fonticon'         UNION ALL
SELECT 'ICON_FONT_TEXTURE_DIAMONDZ',                 'diamond-fonticon'      UNION ALL
SELECT 'ICON_FONT_TEXTURE_RUBYZ',                    'ruby-fonticon'         UNION ALL
SELECT 'ICON_FONT_TEXTURE_EMERALDZ',                 'emerald-fonticon'      UNION ALL
SELECT 'ICON_FONT_TEXTURE_SAPPHIREZ',                'sapphire-fonticon'     UNION ALL
SELECT 'ICON_FONT_TEXTURE_LEADZ',                    'lead-fonticon'         UNION ALL
SELECT 'ICON_FONT_TEXTURE_NICKELZ',                  'nickel-fonticon'       UNION ALL
SELECT 'ICON_FONT_TEXTURE_PLATINUMZ',                'platinum-fonticon'     UNION ALL
SELECT 'ICON_FONT_TEXTURE_TITANIUMZ',                'titanium-fonticon'     UNION ALL
SELECT 'ICON_FONT_TEXTURE_MANGANESEZ',               'manganese-fonticon'    UNION ALL
SELECT 'ICON_FONT_TEXTURE_CINNAMONZ',                'cinnamon-fonticon'     UNION ALL
SELECT 'ICON_FONT_TEXTURE_FRANKINCENSEZ',            'frankincense-fonticon' UNION ALL
SELECT 'ICON_FONT_TEXTURE_GINGERZ',                  'ginger-fonticon'       UNION ALL
SELECT 'ICON_FONT_TEXTURE_LAVENDERZ',                'lavender-fonticon'     UNION ALL
SELECT 'ICON_FONT_TEXTURE_MYRRHZ',                   'myrrh-fonticon'        UNION ALL
SELECT 'ICON_FONT_TEXTURE_SAFFRONZ',                 'saffron-fonticon'      UNION ALL
SELECT 'ICON_FONT_TEXTURE_BIRCHZ',                   'birch-fonticon'        UNION ALL
SELECT 'ICON_FONT_TEXTURE_CEDARZ',                   'cedar-fonticon'        UNION ALL
SELECT 'ICON_FONT_TEXTURE_MAPLEZ',                   'maple-fonticon'        UNION ALL
SELECT 'ICON_FONT_TEXTURE_OAKZ',                     'oak-fonticon'          UNION ALL
SELECT 'ICON_FONT_TEXTURE_PINEZ',                    'pine-fonticon'         UNION ALL
SELECT 'ICON_FONT_TEXTURE_REDWOODZ',                 'redwood-fonticon'      UNION ALL
SELECT 'ICON_FONT_TEXTURE_ALPACAZ',                  'alpaca-fonticon'       UNION ALL
SELECT 'ICON_FONT_TEXTURE_ANGUSZ',                   'angus-fonticon'        UNION ALL
SELECT 'ICON_FONT_TEXTURE_ELKZ',                     'elk-fonticon'          UNION ALL
SELECT 'ICON_FONT_TEXTURE_HOLSTEINZ',                'holstein-fonticon'     UNION ALL
SELECT 'ICON_FONT_TEXTURE_LONGHORNZ',                'longhorn-fonticon'     UNION ALL
SELECT 'ICON_FONT_TEXTURE_MOOSEZ',                   'moose-fonticon'        UNION ALL
SELECT 'ICON_FONT_TEXTURE_PIGZ',                     'pig-fonticon'          UNION ALL
SELECT 'ICON_FONT_TEXTURE_REINDEERZ',                'reindeer-fonticon'     UNION ALL
SELECT 'ICON_FONT_TEXTURE_WTAILDEERZ',               'wtaildeer-fonticon'    UNION ALL
SELECT 'ICON_FONT_TEXTURE_APPLEZ',                   'apple-fonticon'        UNION ALL
SELECT 'ICON_FONT_TEXTURE_COCONUTZ',                 'coconut-fonticon'      UNION ALL
SELECT 'ICON_FONT_TEXTURE_CRANBERRYZ',               'cranberry-fonticon'    UNION ALL
SELECT 'ICON_FONT_TEXTURE_GRAPEZ',                   'grape-fonticon'        UNION ALL
SELECT 'ICON_FONT_TEXTURE_MANGOZ',                   'mango-fonticon'        UNION ALL
SELECT 'ICON_FONT_TEXTURE_ORANGEZ',                  'orange-fonticon'       UNION ALL
SELECT 'ICON_FONT_TEXTURE_PEACHZ',                   'peach-fonticon'        UNION ALL
SELECT 'ICON_FONT_TEXTURE_PINEAPPLEZ',               'pineapple-fonticon'    UNION ALL
SELECT 'ICON_FONT_TEXTURE_POMEGRANATEZ',             'pomegranate-fonticon'  UNION ALL
SELECT 'ICON_FONT_TEXTURE_RASPBERRYZ',               'raspberry-fonticon'    UNION ALL
SELECT 'ICON_FONT_TEXTURE_STRAWBERRYZ',              'strawberry-fonticon'   UNION ALL
SELECT 'ICON_FONT_TEXTURE_BARLEYZ',                  'barley-fonticon'       UNION ALL
SELECT 'ICON_FONT_TEXTURE_COCOAZ',                   'cocoa-fonticon'        UNION ALL
SELECT 'ICON_FONT_TEXTURE_COFFEEZ',                  'coffee-fonticon'       UNION ALL
SELECT 'ICON_FONT_TEXTURE_CORNZ',                    'corn-fonticon'         UNION ALL
SELECT 'ICON_FONT_TEXTURE_HEMPZ',                    'hemp-fonticon'         UNION ALL
SELECT 'ICON_FONT_TEXTURE_HOPZ',                     'hop-fonticon'         UNION ALL
SELECT 'ICON_FONT_TEXTURE_OATZ',                     'oat-fonticon'         UNION ALL
SELECT 'ICON_FONT_TEXTURE_PEANUTZ',                  'peanut-fonticon'      UNION ALL
SELECT 'ICON_FONT_TEXTURE_POTATOEZ',                 'potatoe-fonticon'     UNION ALL
SELECT 'ICON_FONT_TEXTURE_RICEZ',                    'rice-fonticon'        UNION ALL
SELECT 'ICON_FONT_TEXTURE_SOYBEANZ',                 'soybean-fonticon'     UNION ALL
SELECT 'ICON_FONT_TEXTURE_TEAZ',                     'tea-fonticon'         UNION ALL
SELECT 'ICON_FONT_TEXTURE_TOBACCOZ',                 'tobacco-fonticon';

--------------------------------------------------------------------------------------------------
--Font Mapping
-------------------------------------------------------------------------------------------------- 
INSERT INTO IconFontMapping (IconName,	IconFontTexture,					IconMapping) 
SELECT 'ICON_RES_FA_MAIZEX',				'ICON_FONT_TEXTURE_FA_MAIZEX',	    1 UNION ALL
SELECT 'ICON_SEA_BASS',				        'ICON_FONT_TEXTURE_BASSZ',		    1 UNION ALL
SELECT 'ICON_SEA_BLUECRAB',				    'ICON_FONT_TEXTURE_BLUECRABZ',	    1 UNION ALL
SELECT 'ICON_SEA_BLUEWHALE',				'ICON_FONT_TEXTURE_BLUEWHALEZ',		1 UNION ALL
SELECT 'ICON_SEA_CLAM',				        'ICON_FONT_TEXTURE_CLAMZ',		    1 UNION ALL
SELECT 'ICON_SEA_CORAL',				    'ICON_FONT_TEXTURE_CORALZ',		    1 UNION ALL
SELECT 'ICON_SEA_DOLPHIN',				    'ICON_FONT_TEXTURE_DOLPHINZ',		1 UNION ALL
SELECT 'ICON_SEA_GREATWHITE',				'ICON_FONT_TEXTURE_GREATWHITEZ',	1 UNION ALL
SELECT 'ICON_SEA_GREYWHALE',				'ICON_FONT_TEXTURE_GREYWHALEZ',		1 UNION ALL
SELECT 'ICON_SEA_HUMPBACKWHALE',			'ICON_FONT_TEXTURE_HUMPBACKWHALEZ',	1 UNION ALL
SELECT 'ICON_SEA_KINGCRAB',				    'ICON_FONT_TEXTURE_KINGCRABZ',		1 UNION ALL
SELECT 'ICON_SEA_LOBSTER',				    'ICON_FONT_TEXTURE_LOBSTERZ',		1 UNION ALL
SELECT 'ICON_SEA_MARLIN',				    'ICON_FONT_TEXTURE_MARLINZ',		1 UNION ALL
SELECT 'ICON_SEA_OYSTERS',				    'ICON_FONT_TEXTURE_OYSTERSZ',		1 UNION ALL
SELECT 'ICON_SEA_SALMON',				    'ICON_FONT_TEXTURE_SALMONZ',		1 UNION ALL
SELECT 'ICON_SEA_SHRIMP',				    'ICON_FONT_TEXTURE_SHRIMPZ',		1 UNION ALL
SELECT 'ICON_SEA_SQUID',				    'ICON_FONT_TEXTURE_SQUIDZ',		    1 UNION ALL
SELECT 'ICON_SEA_STONECRAB',				'ICON_FONT_TEXTURE_STONECRABZ',		1 UNION ALL
SELECT 'ICON_SEA_TROPICALFISH',				'ICON_FONT_TEXTURE_TROPICALFISHZ',	1 UNION ALL
SELECT 'ICON_SEA_TROUT',				    'ICON_FONT_TEXTURE_TROUTZ',		    1 UNION ALL
SELECT 'ICON_SEA_TUNA',				        'ICON_FONT_TEXTURE_TUNAZ',		    1 UNION ALL
SELECT 'ICON_MIN_DIAMOND',                  'ICON_FONT_TEXTURE_DIAMONDZ',       1 UNION ALL
SELECT 'ICON_MIN_RUBY',                     'ICON_FONT_TEXTURE_RUBYZ',          1 UNION ALL
SELECT 'ICON_MIN_EMERALD',                  'ICON_FONT_TEXTURE_EMERALDZ',       1 UNION ALL
SELECT 'ICON_MIN_SAPPHIRE',                 'ICON_FONT_TEXTURE_SAPPHIREZ',      1 UNION ALL
SELECT 'ICON_MIN_LEAD',                     'ICON_FONT_TEXTURE_LEADZ',          1 UNION ALL
SELECT 'ICON_MIN_NICKEL',                   'ICON_FONT_TEXTURE_NICKELZ',        1 UNION ALL
SELECT 'ICON_MIN_PLATINUM',                 'ICON_FONT_TEXTURE_PLATINUMZ',      1 UNION ALL
SELECT 'ICON_MIN_TITANIUM',                 'ICON_FONT_TEXTURE_TITANIUMZ',      1 UNION ALL
SELECT 'ICON_MIN_MANGANESE',                'ICON_FONT_TEXTURE_MANGANESEZ',     1 UNION ALL
SELECT 'ICON_SPC_CINNAMON',                 'ICON_FONT_TEXTURE_CINNAMONZ',      1 UNION ALL
SELECT 'ICON_INC_FRANKINCENSE',             'ICON_FONT_TEXTURE_FRANKINCENSEZ',  1 UNION ALL
SELECT 'ICON_SPC_GINGER',                   'ICON_FONT_TEXTURE_GINGERZ',        1 UNION ALL
SELECT 'ICON_INC_LAVENDER',                 'ICON_FONT_TEXTURE_LAVENDERZ',      1 UNION ALL
SELECT 'ICON_INC_MYRRH',                    'ICON_FONT_TEXTURE_MYRRHZ',         1 UNION ALL
SELECT 'ICON_INC_SAFFRON',                  'ICON_FONT_TEXTURE_SAFFRONZ',       1 UNION ALL
SELECT 'ICON_TRE_BIRCH',                    'ICON_FONT_TEXTURE_BIRCHZ',         1 UNION ALL
SELECT 'ICON_TRE_CEDAR',                    'ICON_FONT_TEXTURE_CEDARZ',         1 UNION ALL
SELECT 'ICON_TRE_MAPLE',                    'ICON_FONT_TEXTURE_MAPLEZ',         1 UNION ALL
SELECT 'ICON_TRE_OAK',                      'ICON_FONT_TEXTURE_OAKZ',           1 UNION ALL
SELECT 'ICON_TRE_PINE',                     'ICON_FONT_TEXTURE_PINEZ',          1 UNION ALL
SELECT 'ICON_TRE_REDWOOD',                  'ICON_FONT_TEXTURE_REDWOODZ',       1 UNION ALL
SELECT 'ICON_LA_ALPACA',                    'ICON_FONT_TEXTURE_ALPACAZ',        1 UNION ALL
SELECT 'ICON_LA_ANGUS',                     'ICON_FONT_TEXTURE_ANGUSZ',         1 UNION ALL
SELECT 'ICON_LA_ELK',                       'ICON_FONT_TEXTURE_ELKZ',           1 UNION ALL
SELECT 'ICON_LA_HOLSTEIN',                  'ICON_FONT_TEXTURE_HOLSTEINZ',      1 UNION ALL
SELECT 'ICON_LA_LONGHORN',                  'ICON_FONT_TEXTURE_LONGHORNZ',      1 UNION ALL
SELECT 'ICON_LA_MOOSE',                     'ICON_FONT_TEXTURE_MOOSEZ',         1 UNION ALL
SELECT 'ICON_LA_PIG',                       'ICON_FONT_TEXTURE_PIGZ',           1 UNION ALL
SELECT 'ICON_LA_REINDEER',                  'ICON_FONT_TEXTURE_REINDEERZ',      1 UNION ALL
SELECT 'ICON_LA_WTAILDEER',                 'ICON_FONT_TEXTURE_WTAILDEERZ',     1 UNION ALL
SELECT 'ICON_FRU_APPLE',                    'ICON_FONT_TEXTURE_APPLEZ',         1 UNION ALL
SELECT 'ICON_FRU_COCONUT',                  'ICON_FONT_TEXTURE_COCONUTZ',       1 UNION ALL
SELECT 'ICON_FRU_CRANBERRY',                'ICON_FONT_TEXTURE_CRANBERRYZ',     1 UNION ALL
SELECT 'ICON_FRU_GRAPE',                    'ICON_FONT_TEXTURE_GRAPEZ',         1 UNION ALL
SELECT 'ICON_FRU_MANGO',                    'ICON_FONT_TEXTURE_MANGOZ',         1 UNION ALL
SELECT 'ICON_FRU_ORANGE',                   'ICON_FONT_TEXTURE_ORANGEZ',        1 UNION ALL
SELECT 'ICON_FRU_PEACH',                    'ICON_FONT_TEXTURE_PEACHZ',         1 UNION ALL
SELECT 'ICON_FRU_PINEAPPLE',                'ICON_FONT_TEXTURE_PINEAPPLEZ',     1 UNION ALL
SELECT 'ICON_FRU_POMEGRANATE',              'ICON_FONT_TEXTURE_POMEGRANATEZ',   1 UNION ALL
SELECT 'ICON_FRU_RASPBERRY',                'ICON_FONT_TEXTURE_RASPBERRYZ',     1 UNION ALL
SELECT 'ICON_FRU_STRAWBERRY',               'ICON_FONT_TEXTURE_STRAWBERRYZ',    1 UNION ALL
SELECT 'ICON_CRO_BARLEY',                   'ICON_FONT_TEXTURE_BARLEYZ',        1 UNION ALL
SELECT 'ICON_CRO_COCOA',                    'ICON_FONT_TEXTURE_COCOAZ',         1 UNION ALL
SELECT 'ICON_CRO_COFFEE',                   'ICON_FONT_TEXTURE_COFFEEZ',        1 UNION ALL
SELECT 'ICON_CRO_CORN',                     'ICON_FONT_TEXTURE_CORNZ',          1 UNION ALL
SELECT 'ICON_CRO_HEMP',                     'ICON_FONT_TEXTURE_HEMPZ',          1 UNION ALL
SELECT 'ICON_CRO_HOP',                      'ICON_FONT_TEXTURE_HOPZ',           1 UNION ALL
SELECT 'ICON_CRO_OAT',                      'ICON_FONT_TEXTURE_OATZ',           1 UNION ALL
SELECT 'ICON_CRO_PEANUT',                   'ICON_FONT_TEXTURE_PEANUTZ',        1 UNION ALL
SELECT 'ICON_CRO_POTATOE',                  'ICON_FONT_TEXTURE_POTATOEZ',       1 UNION ALL
SELECT 'ICON_CRO_RICE',                     'ICON_FONT_TEXTURE_RICEZ',          1 UNION ALL
SELECT 'ICON_CRO_SOYBEAN',                  'ICON_FONT_TEXTURE_SOYBEANZ',       1 UNION ALL
SELECT 'ICON_CRO_TEA',                      'ICON_FONT_TEXTURE_TEAZ',           1 UNION ALL
SELECT 'ICON_CRO_TOBACCO',                  'ICON_FONT_TEXTURE_TOBACCOZ',       1;

--------------------------------------------------------------------------------------------------
--SV Icons
-------------------------------------------------------------------------------------------------- 
INSERT INTO ArtDefine_StrategicView (StrategicViewType, TileType,		Asset)
SELECT 'ART_DEF_RESOURCE_FA_MAIZEX',						'Resource',		'SV_Maize.dds';

--------------------------------------------------------------------------------------------------
--Artdefines
-------------------------------------------------------------------------------------------------- 
INSERT INTO ArtDefine_LandmarkTypes (Type,	LandmarkType,	FriendlyName)
SELECT 'ART_DEF_RESOURCE_FA_MAIZEX',			'Resource',		'MaizeX';

INSERT INTO ArtDefine_Landmarks (ResourceType,	ImprovementType,					Model,								Era,			State,					Scale,				LayoutHandler,	TerrainContour)
SELECT 'ART_DEF_RESOURCE_FA_MAIZEX',				'ART_DEF_IMPROVEMENT_NONE',			'resource_maize.fxsxml',			'Any',			'Any',					0.9399999976158142,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_MAIZEX',				'ART_DEF_IMPROVEMENT_PLANTATION',	'HB_Plantation_IND_Banana.fxsxml',	'Ancient',		'UnderConstruction',	0.9599999785423279,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_MAIZEX',				'ART_DEF_IMPROVEMENT_PLANTATION',	'plantation_ind_maize.fxsxml',		'Ancient',		'Constructed',			0.9599999785423279,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_MAIZEX',				'ART_DEF_IMPROVEMENT_PLANTATION',	'PL_Plantation_IND_Banana.fxsxml',	'Ancient',		'Pillaged',				0.9599999785423279,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_MAIZEX',				'ART_DEF_IMPROVEMENT_PLANTATION',	'HB_Plantation_IND_Banana.fxsxml',	'Industrial',	'UnderConstruction',	0.9599999785423279,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_MAIZEX',				'ART_DEF_IMPROVEMENT_PLANTATION',	'plantation_ind_maize.fxsxml',		'Industrial',	'Constructed',			0.9599999785423279,	'SNAPSHOT',		1 UNION ALL
SELECT 'ART_DEF_RESOURCE_FA_MAIZEX',				'ART_DEF_IMPROVEMENT_PLANTATION',	'PL_Plantation_IND_Banana.fxsxml',	'Industrial',	'Pillaged',				0.9599999785423279,	'SNAPSHOT',		1;

INSERT INTO ArtDefine_LandmarkTypes (Type, LandmarkType, FriendlyName)
VALUES ('ART_DEF_RESOURCE_CEDAR','Resource','Cedar');

INSERT INTO ArtDefine_StrategicView (StrategicViewType, TileType, Asset)
VALUES ('ART_DEF_RESOURCE_CEDAR','Resource','Art/Resources/Cedar/SV_Cedar.dds');

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Any','Any','1','ART_DEF_IMPROVEMENT_NONE','SNAPSHOT','ART_DEF_RESOURCE_CEDAR','Art/Resources/Cedar/Resource_Cedar.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','UnderConstruction','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_CEDAR','Art/Resources/Cedar/HB_Plantation_MID_Cedar.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','Constructed','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_CEDAR','Art/Resources/Cedar/Plantation_MID_Cedar.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','Pillaged','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_CEDAR','Art/Resources/Cedar/PL_Plantation_MID_Cedar.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','UnderConstruction','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_CEDAR','Art/Resources/Cedar/HB_Plantation_IND_Cedar.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Constructed','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_CEDAR','Art/Resources/Cedar/Plantation_IND_Cedar.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Pillaged','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_CEDAR','Art/Resources/Cedar/PL_Plantation_IND_Cedar.fxsxml','1',null);

INSERT INTO ArtDefine_LandmarkTypes (Type, LandmarkType, FriendlyName)
VALUES	('ART_DEF_RESOURCE_CINNAMON', 'Resource', 'Cinnamon Tree');

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour)
VALUES	('Any', 'Any', 0.9399999976158142, 'ART_DEF_IMPROVEMENT_NONE', 'SNAPSHOT', 'ART_DEF_RESOURCE_CINNAMON', 'Art/Resources/Cinnamon/Resource_Cinnamon.fxsxml', 1);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour)
VALUES	('Ancient', 'UnderConstruction', 0.9599999785423279, 'ART_DEF_IMPROVEMENT_PLANTATION', 'SNAPSHOT', 'ART_DEF_RESOURCE_CINNAMON', 'Art/Resources/Cinnamon/HB_Plantation_MID_Cinnamon.fxsxml', 1);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour)
VALUES	('Ancient', 'Constructed', 0.9599999785423279, 'ART_DEF_IMPROVEMENT_PLANTATION', 'SNAPSHOT', 'ART_DEF_RESOURCE_CINNAMON', 'Art/Resources/Cinnamon/Plantation_MID_Cinnamon.fxsxml', 1);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour)
VALUES	('Ancient', 'Pillaged', 0.9599999785423279, 'ART_DEF_IMPROVEMENT_PLANTATION', 'SNAPSHOT', 'ART_DEF_RESOURCE_CINNAMON', 'Art/Resources/Cinnamon/PL_Plantation_MID_Cinnamon.fxsxml', 1);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour)
VALUES	('Industrial', 'UnderConstruction', 0.9599999785423279, 'ART_DEF_IMPROVEMENT_PLANTATION', 'SNAPSHOT', 'ART_DEF_RESOURCE_CINNAMON', 'Art/Resources/Cinnamon/HB_Plantation_IND_Cinnamon.fxsxml', 1);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour)
VALUES	('Industrial', 'Constructed', 0.9599999785423279, 'ART_DEF_IMPROVEMENT_PLANTATION', 'SNAPSHOT', 'ART_DEF_RESOURCE_CINNAMON', 'Art/Resources/Cinnamon/Plantation_IND_Cinnamon.fxsxml', 1);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour)
VALUES	('Industrial', 'Pillaged', 0.9599999785423279, 'ART_DEF_IMPROVEMENT_PLANTATION', 'SNAPSHOT', 'ART_DEF_RESOURCE_CINNAMON', 'Art/Resources/Cinnamon/PL_Plantation_IND_Cinnamon.fxsxml', 1);

INSERT INTO ArtDefine_LandmarkTypes (Type, LandmarkType, FriendlyName)
VALUES ('ART_DEF_RESOURCE_CRANBERRY','Resource','Cranberriess');

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Any','Any','1','ART_DEF_IMPROVEMENT_NONE','SNAPSHOT','ART_DEF_RESOURCE_CRANBERRY','Art/Resources/Cranberries/Resource_Cranberries.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','UnderConstruction','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_CRANBERRY','Art/Resources/Cranberries/HB_Plantation_MID_Cranberries.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','Constructed','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_CRANBERRY','Art/Resources/Cranberries/Plantation_MID_Cranberries.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','Pillaged','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_CRANBERRY','Art/Resources/Cranberries/PL_Plantation_MID_Cranberries.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','UnderConstruction','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_CRANBERRY','Art/Resources/Cranberries/HB_Plantation_IND_Cranberries.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Constructed','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_CRANBERRY','Art/Resources/Cranberries/Plantation_IND_Cranberries.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Pillaged','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_CRANBERRY','Art/Resources/Cranberries/PL_Plantation_IND_Cranberries.fxsxml','1',null);

INSERT INTO ArtDefine_LandmarkTypes (Type, LandmarkType, FriendlyName)
VALUES ('ART_DEF_RESOURCE_DIAMOND','Resource','Diamond');

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)  
VALUES ('Any','Any','1','ART_DEF_IMPROVEMENT_NONE','SNAPSHOT','ART_DEF_RESOURCE_DIAMOND','Art/Resources/Diamond/Diamond.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)  
VALUES ('Ancient','UnderConstruction','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_DIAMOND','Art/Resources/Diamond/HB_MED_Mine_Diamond.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)  
VALUES ('Ancient','Constructed','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_DIAMOND','Art/Resources/Diamond/MED_Mine_Diamond.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)  
VALUES ('Ancient','Pillaged','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_DIAMOND','Art/Resources/Diamond/PL_MED_Mine_Diamond.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)  
VALUES ('Industrial','UnderConstruction','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_DIAMOND','Art/Resources/Diamond/HB_IND_Mine_Diamond.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)  
VALUES ('Industrial','Constructed','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_DIAMOND','Art/Resources/Diamond/IND_Mine_Diamond.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)  
VALUES ('Industrial','Pillaged','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_DIAMOND','Art/Resources/Diamond/PL_IND_Mine_Diamond.fxsxml','1',null);

INSERT INTO ArtDefine_LandmarkTypes (Type, LandmarkType, FriendlyName)
VALUES ('ART_DEF_RESOURCE_FRANKINCENSE','Resource','Frankincense');

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Any','Any','0.9800000190734863','ART_DEF_IMPROVEMENT_NONE','SNAPSHOT','ART_DEF_RESOURCE_FRANKINCENSE','Art/Resources/Frankincense/Resource_Frankincense.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','UnderConstruction','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_FRANKINCENSE','Art/Resources/Frankincense/HB_Plantation_MID_Frankincense.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','Constructed','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_FRANKINCENSE','Art/Resources/Frankincense/Plantation_MID_Frankincense.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','Pillaged','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_FRANKINCENSE','Art/Resources/Frankincense/PL_Plantation_MID_Frankincense.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','UnderConstruction','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_FRANKINCENSE','Art/Resources/Frankincense/HB_Plantation_IND_Frankincense.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Constructed','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_FRANKINCENSE','Art/Resources/Frankincense/Plantation_IND_Frankincense.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Pillaged','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_FRANKINCENSE','Art/Resources/Frankincense/PL_Plantation_IND_Frankincense.fxsxml','1',null);

INSERT INTO ArtDefine_LandmarkTypes (Type, LandmarkType, FriendlyName)
VALUES	('ART_DEF_RESOURCE_GINGER', 'Resource', 'Ginger Trees');

INSERT INTO ArtDefine_StrategicView (StrategicViewType, TileType, Asset)
VALUES ('ART_DEF_RESOURCE_GINGER','Resource','Art/Resources/Ginger/SV_Ginger.dds');

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour)
VALUES	('Any', 'Any', 0.9399999976158142, 'ART_DEF_IMPROVEMENT_NONE', 'SNAPSHOT', 'ART_DEF_RESOURCE_GINGER', 'Art/Resources/Ginger/Resource_Ginger.fxsxml', 1);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour)
VALUES	('Ancient', 'UnderConstruction', 0.9599999785423279, 'ART_DEF_IMPROVEMENT_PLANTATION', 'SNAPSHOT', 'ART_DEF_RESOURCE_GINGER', 'Art/Resources/Ginger/HB_Plantation_MID_Ginger.fxsxml', 1);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour)
VALUES	('Ancient', 'Constructed', 0.9599999785423279, 'ART_DEF_IMPROVEMENT_PLANTATION', 'SNAPSHOT', 'ART_DEF_RESOURCE_GINGER', 'Art/Resources/Ginger/Plantation_MID_Ginger.fxsxml', 1);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour)
VALUES	('Ancient', 'Pillaged', 0.9599999785423279, 'ART_DEF_IMPROVEMENT_PLANTATION', 'SNAPSHOT', 'ART_DEF_RESOURCE_GINGER', 'Art/Resources/Ginger/PL_Plantation_MID_Ginger.fxsxml', 1);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour)
VALUES	('Industrial', 'UnderConstruction', 0.9599999785423279, 'ART_DEF_IMPROVEMENT_PLANTATION', 'SNAPSHOT', 'ART_DEF_RESOURCE_GINGER', 'Art/Resources/Ginger/HB_Plantation_IND_Ginger.fxsxml', 1);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour)
VALUES	('Industrial', 'Constructed', 0.9599999785423279, 'ART_DEF_IMPROVEMENT_PLANTATION', 'SNAPSHOT', 'ART_DEF_RESOURCE_GINGER', 'Art/Resources/Ginger/Plantation_IND_Ginger.fxsxml', 1);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour)
VALUES	('Industrial', 'Pillaged', 0.9599999785423279, 'ART_DEF_IMPROVEMENT_PLANTATION', 'SNAPSHOT', 'ART_DEF_RESOURCE_GINGER', 'Art/Resources/Ginger/PL_Plantation_IND_Ginger.fxsxml', 1);

INSERT INTO ArtDefine_LandmarkTypes (Type, LandmarkType, FriendlyName)
VALUES ('ART_DEF_RESOURCE_GRAPE','Resource','Grapes');

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Any','Any','1','ART_DEF_IMPROVEMENT_NONE','SNAPSHOT','ART_DEF_RESOURCE_GRAPE','Art/Resources/Grapes/Resource_Grapes.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','UnderConstruction','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_GRAPE','Art/Resources/Grapes/HB_Plantation_MID_Grapes.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','Constructed','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_GRAPE','Art/Resources/Grapes/Plantation_MID_Grapes.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','Pillaged','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_GRAPE','Art/Resources/Grapes/PL_Plantation_MID_Grapes.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','UnderConstruction','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_GRAPE','Art/Resources/Grapes/HB_Plantation_IND_Grapes.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Constructed','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_GRAPE','Art/Resources/Grapes/Plantation_IND_Grapes.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Pillaged','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_GRAPE','Art/Resources/Grapes/PL_Plantation_IND_Grapes.fxsxml','1',null);

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
VALUES ('ART_DEF_RESOURCE_HOPS','Resource','Hops');

INSERT INTO ArtDefine_StrategicView (StrategicViewType, TileType, Asset)
VALUES ('ART_DEF_RESOURCE_HOPS','Resource','Art/Resources/Hops/SV_Hops.dds');

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Any','Any','0.9800000190734863','ART_DEF_IMPROVEMENT_NONE','SNAPSHOT','ART_DEF_RESOURCE_HOPS','Art/Resources/Hops/Resource_Hops.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','UnderConstruction','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_HOPS','Art/Resources/Hops/HB_Plantation_MID_Hops.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','Constructed','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_HOPS','Art/Resources/Hops/Plantation_MID_Hops.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','Pillaged','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_HOPS','Art/Resources/Hops/PL_Plantation_MID_Hops.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','UnderConstruction','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_HOPS','Art/Resources/Hops/HB_Plantation_IND_Hops.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Constructed','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_HOPS','Art/Resources/Hops/Plantation_IND_Hops.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Pillaged','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_HOPS','Art/Resources/Hops/PL_Plantation_IND_Hops.fxsxml','1',null);

INSERT INTO ArtDefine_LandmarkTypes (Type, LandmarkType, FriendlyName)
VALUES ('ART_DEF_RESOURCE_MANGANESE','Resource','Manganese');

INSERT INTO ArtDefine_StrategicView (StrategicViewType, TileType, Asset)
VALUES ('ART_DEF_RESOURCE_MANGANESE','Resource','Art/Resources/Manganese/SV_Manganese.dds');

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)  
VALUES ('Ancient','UnderConstruction','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_MANGANESE','Art/Resources/Manganese/HB_MED_Mine_Manganese.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)  
VALUES ('Ancient','Constructed','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_MANGANESE','Art/Resources/Manganese/MED_Mine_Manganese.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)  
VALUES ('Ancient','Pillaged','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_MANGANESE','Art/Resources/Manganese/PL_MED_Mine_Manganese.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)  
VALUES ('Industrial','UnderConstruction','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_MANGANESE','Art/Resources/Manganese/HB_IND_Mine_Manganese.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)  
VALUES ('Industrial','Constructed','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_MANGANESE','Art/Resources/Manganese/IND_Mine_Manganese.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)  
VALUES ('Industrial','Pillaged','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_MANGANESE','Art/Resources/Manganese/PL_IND_Mine_Manganese.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)  
VALUES ('Any','Any','1','ART_DEF_IMPROVEMENT_NONE','SNAPSHOT','ART_DEF_RESOURCE_MANGANESE','Art/Resources/Manganese/Manganese.fxsxml','1',null);

INSERT INTO ArtDefine_LandmarkTypes (Type, LandmarkType, FriendlyName)
VALUES ('ART_DEF_RESOURCE_MYRRH','Resource','Myrrh');

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Any','Any','0.9800000190734863','ART_DEF_IMPROVEMENT_NONE','SNAPSHOT','ART_DEF_RESOURCE_MYRRH','Art/Resources/Myrrh/Resource_Myrrh.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','UnderConstruction','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_MYRRH','Art/Resources/Myrrh/HB_Plantation_MID_Myrrh.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','Constructed','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_MYRRH','Art/Resources/Myrrh/Plantation_MID_Myrrh.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','Pillaged','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_MYRRH','Art/Resources/Myrrh/PL_Plantation_MID_Myrrh.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','UnderConstruction','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_MYRRH','Art/Resources/Myrrh/HB_Plantation_IND_Myrrh.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Constructed','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_MYRRH','Art/Resources/Myrrh/Plantation_IND_Myrrh.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Pillaged','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_MYRRH','Art/Resources/Myrrh/PL_Plantation_IND_Myrrh.fxsxml','1',null);

INSERT INTO ArtDefine_LandmarkTypes (Type, LandmarkType, FriendlyName)
VALUES ('ART_DEF_RESOURCE_OATS','Resource','Oats');

INSERT INTO ArtDefine_StrategicView (StrategicViewType, TileType, Asset)
VALUES ('ART_DEF_RESOURCE_OATS','Resource','Art/Resources/Oats/SV_Oats.dds');

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Any','Any','0.9800000190734863','ART_DEF_IMPROVEMENT_NONE','SNAPSHOT','ART_DEF_RESOURCE_OATS','Art/Resources/Oats/Resource_Oats.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','UnderConstruction','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_OATS','Art/Resources/Oats/HB_Plantation_MID_Oats.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','Constructed','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_OATS','Art/Resources/Oats/Plantation_MID_Oats.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','Pillaged','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_OATS','Art/Resources/Oats/PL_Plantation_MID_Oats.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','UnderConstruction','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_OATS','Art/Resources/Oats/HB_Plantation_IND_Oats.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Constructed','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_OATS','Art/Resources/Oats/Plantation_IND_Oats.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Pillaged','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_OATS','Art/Resources/Oats/PL_Plantation_IND_Oats.fxsxml','1',null);

INSERT INTO ArtDefine_LandmarkTypes (Type, LandmarkType, FriendlyName)
VALUES ('ART_DEF_RESOURCE_ORANGE','Resource','Orange Trees');

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Any','Any','0.9399999976158142','ART_DEF_IMPROVEMENT_NONE','SNAPSHOT','ART_DEF_RESOURCE_ORANGE','Art/Resources/Orange/Orange.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','UnderConstruction','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_ORANGE','Art/Resources/Orange/Plantation_MID_Orange_HB.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','Constructed','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_ORANGE','Art/Resources/Orange/Plantation_MID_Orange.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)  
VALUES ('Ancient','Pillaged','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_ORANGE','Art/Resources/Orange/Plantation_MID_Orange_PIL.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','UnderConstruction','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_ORANGE','Art/Resources/Orange/Plantation_IND_Orange_HB.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Constructed','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_ORANGE','Art/Resources/Orange/Plantation_IND_Orange.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Pillaged','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_ORANGE','Art/Resources/Orange/Plantation_IND_Orange_PIL.fxsxml','1',null);

INSERT INTO ArtDefine_LandmarkTypes (Type, LandmarkType, FriendlyName)
VALUES ('ART_DEF_RESOURCE_PEACH','Resource','Peach Trees');

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Any','Any','0.9399999976158142','ART_DEF_IMPROVEMENT_NONE','SNAPSHOT','ART_DEF_RESOURCE_PEACH','Art/Resources/Peach/Peach.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','UnderConstruction','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_PEACH','Art/Resources/Peach/Plantation_MID_Peach_HB.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','Constructed','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_PEACH','Art/Resources/Peach/Plantation_MID_Peach.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)  
VALUES ('Ancient','Pillaged','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_PEACH','Art/Resources/Peach/Plantation_MID_Peach_PIL.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','UnderConstruction','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_PEACH','Art/Resources/Peach/Plantation_IND_Peach_HB.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Constructed','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_PEACH','Art/Resources/Peach/Plantation_IND_Peach.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Pillaged','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_PEACH','Art/Resources/Peach/Plantation_IND_Peach_PIL.fxsxml','1',null);

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
VALUES ('ART_DEF_RESOURCE_PINEAPPLE','Resource','Pineapple');

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Any','Any','1','ART_DEF_IMPROVEMENT_NONE','SNAPSHOT','ART_DEF_RESOURCE_PINEAPPLE','Art/Resources/Pineapple/Resource_Pineapple.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','UnderConstruction','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_PINEAPPLE','Art/Resources/Pineapple/HB_Plantation_MID_Pineapple.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','Constructed','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_PINEAPPLE','Art/Resources/Pineapple/Plantation_MID_Pineapple.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','Pillaged','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_PINEAPPLE','Art/Resources/Pineapple/PL_Plantation_MID_Pineapple.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','UnderConstruction','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_PINEAPPLE','Art/Resources/Pineapple/HB_Plantation_IND_Pineapple.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Constructed','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_PINEAPPLE','Art/Resources/Pineapple/Plantation_IND_Pineapple.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Pillaged','1','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_PINEAPPLE','Art/Resources/Pineapple/PL_Plantation_IND_Pineapple.fxsxml','1',null);

INSERT INTO ArtDefine_LandmarkTypes (Type, LandmarkType, FriendlyName)
VALUES ('ART_DEF_RESOURCE_POMEGRANATE','Resource','Pomegranate Trees');

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Any','Any','0.9399999976158142','ART_DEF_IMPROVEMENT_NONE','SNAPSHOT','ART_DEF_RESOURCE_POMEGRANATE','Art/Resources/Pomegranate/Pomegranate.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','UnderConstruction','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_POMEGRANATE','Art/Resources/Pomegranate/Plantation_MID_Pomegranate_HB.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','Constructed','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_POMEGRANATE','Art/Resources/Pomegranate/Plantation_MID_Pomegranate.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)  
VALUES ('Ancient','Pillaged','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_POMEGRANATE','Art/Resources/Pomegranate/Plantation_MID_Pomegranate_PIL.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','UnderConstruction','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_POMEGRANATE','Art/Resources/Pomegranate/Plantation_IND_Pomegranate_HB.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Constructed','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_POMEGRANATE','Art/Resources/Pomegranate/Plantation_IND_Pomegranate.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Pillaged','0.9599999785423279','ART_DEF_IMPROVEMENT_PLANTATION','SNAPSHOT','ART_DEF_RESOURCE_POMEGRANATE','Art/Resources/Pomegranate/Plantation_IND_Pomegranate_PIL.fxsxml','1',null);

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
VALUES	('ART_DEF_RESOURCE_SAFFRON', 'Resource', 'Saffron Trees');

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour)
VALUES	('Any', 'Any', 0.9399999976158142, 'ART_DEF_IMPROVEMENT_NONE', 'SNAPSHOT', 'ART_DEF_RESOURCE_SAFFRON', 'Art/Resources/Saffron/Resource_Saffron.fxsxml', 1);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour)
VALUES	('Ancient', 'UnderConstruction', 0.9599999785423279, 'ART_DEF_IMPROVEMENT_PLANTATION', 'SNAPSHOT', 'ART_DEF_RESOURCE_SAFFRON', 'Art/Resources/Saffron/HB_Plantation_MID_Saffron.fxsxml', 1);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour)
VALUES	('Ancient', 'Constructed', 0.9599999785423279, 'ART_DEF_IMPROVEMENT_PLANTATION', 'SNAPSHOT', 'ART_DEF_RESOURCE_SAFFRON', 'Art/Resources/Saffron/Plantation_MID_Saffron.fxsxml', 1);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour)
VALUES	('Ancient', 'Pillaged', 0.9599999785423279, 'ART_DEF_IMPROVEMENT_PLANTATION', 'SNAPSHOT', 'ART_DEF_RESOURCE_SAFFRON', 'Art/Resources/Saffron/PL_Plantation_MID_Saffron.fxsxml', 1);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour)
VALUES	('Industrial', 'UnderConstruction', 0.9599999785423279, 'ART_DEF_IMPROVEMENT_PLANTATION', 'SNAPSHOT', 'ART_DEF_RESOURCE_SAFFRON', 'Art/Resources/Saffron/HB_Plantation_IND_Saffron.fxsxml', 1);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour)
VALUES	('Industrial', 'Constructed', 0.9599999785423279, 'ART_DEF_IMPROVEMENT_PLANTATION', 'SNAPSHOT', 'ART_DEF_RESOURCE_SAFFRON', 'Art/Resources/Saffron/Plantation_IND_Saffron.fxsxml', 1);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour)
VALUES	('Industrial', 'Pillaged', 0.9599999785423279, 'ART_DEF_IMPROVEMENT_PLANTATION', 'SNAPSHOT', 'ART_DEF_RESOURCE_SAFFRON', 'Art/Resources/Saffron/PL_Plantation_IND_Saffron.fxsxml', 1);

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

INSERT INTO ArtDefine_LandmarkTypes (Type, LandmarkType, FriendlyName)
VALUES ('ART_DEF_RESOURCE_TITANIUM', 'Resource', 'Titanium');

INSERT INTO ArtDefine_StrategicView (StrategicViewType, TileType, Asset)
VALUES ('ART_DEF_RESOURCE_TITANIUM','Resource','Art/Resources/Titanium/SV_Titanium.dds');

INSERT INTO ArtDefine_LandmarkTypes (Type, LandmarkType, FriendlyName)
VALUES ('ART_DEF_RESOURCE_TITANIUM_HEAVY', 'Resource', 'Titanium Heavy');

INSERT INTO ArtDefine_LandmarkTypes (Type, LandmarkType, FriendlyName)
VALUES ('ART_DEF_RESOURCE_TITANIUM_HEAVY_MARSH', 'Resource', 'Titanium Heavy Marsh');

INSERT INTO ArtDefine_LandmarkTypes (Type, LandmarkType, FriendlyName)
VALUES ('ART_DEF_RESOURCE_TITANIUM_MARSH', 'Resource', 'Titanium Marsh');

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)
VALUES ('Ancient','UnderConstruction','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_TITANIUM','Art/Resources/Titanium/HB_MED_Mine_Titanium.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)
VALUES ('Ancient','Constructed','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_TITANIUM','Art/Resources/Titanium/MED_Mine_Titanium.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)
VALUES ('Ancient','Pillaged','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_TITANIUM','Art/Resources/Titanium/PL_MED_Mine_Titanium.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)
VALUES ('Industrial','UnderConstruction','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_TITANIUM','Art/Resources/Titanium/HB_IND_Mine_Titanium.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Constructed','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_TITANIUM','Art/Resources/Titanium/IND_Mine_Titanium.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Pillaged','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_TITANIUM','Art/Resources/Titanium/PL_IND_Mine_Titanium.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Any','Any','1','ART_DEF_IMPROVEMENT_NONE','SNAPSHOT','ART_DEF_RESOURCE_TITANIUM','Art/Resources/Titanium/Titanium.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)
VALUES ('Ancient','UnderConstruction','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_TITANIUM_HEAVY','Art/Resources/Titanium/HB_MED_Mine_Titanium_Heavy.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)
VALUES ('Ancient','Constructed','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_TITANIUM_HEAVY','Art/Resources/Titanium/MED_Mine_Titanium_Heavy.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)
VALUES ('Ancient','Pillaged','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_TITANIUM_HEAVY','Art/Resources/Titanium/PL_MED_Mine_Titanium_Heavy.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','UnderConstruction','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_TITANIUM_HEAVY','Art/Resources/Titanium/HB_IND_Mine_Titanium_Heavy.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Industrial','Constructed','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_TITANIUM_HEAVY','Art/Resources/Titanium/IND_Mine_Titanium_Heavy.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)
VALUES ('Industrial','Pillaged','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_TITANIUM_HEAVY','Art/Resources/Titanium/PL_IND_Mine_Titanium_Heavy.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)
VALUES ('Any','Any','1','ART_DEF_IMPROVEMENT_NONE','SNAPSHOT','ART_DEF_RESOURCE_TITANIUM_HEAVY','Art/Resources/Titanium/Titanium_Heavy.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)
VALUES ('Ancient','UnderConstruction','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_TITANIUM_HEAVY_MARSH','Art/Resources/Titanium/HB_MED_Mine_Titanium_Heavy.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)
VALUES ('Ancient','Constructed','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_TITANIUM_HEAVY_MARSH','Art/Resources/Titanium/MED_Mine_Titanium_Heavy.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)
VALUES ('Ancient','Pillaged','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_TITANIUM_HEAVY_MARSH','Art/Resources/Titanium/PL_MED_Mine_Titanium_Heavy.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)
VALUES ('Industrial','UnderConstruction','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_TITANIUM_HEAVY_MARSH','Art/Resources/Titanium/HB_IND_Mine_Titanium_Heavy.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)
VALUES ('Industrial','Constructed','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_TITANIUM_HEAVY_MARSH','Art/Resources/Titanium/IND_Mine_Titanium_Heavy.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)
VALUES ('Industrial','Pillaged','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_TITANIUM_HEAVY_MARSH','Art/Resources/Titanium/PL_IND_Mine_Titanium_Heavy.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)
VALUES ('Any','Any','1','ART_DEF_IMPROVEMENT_NONE','SNAPSHOT','ART_DEF_RESOURCE_TITANIUM_HEAVY_MARSH','Art/Resources/Titanium/Titanium_Heavy_marsh.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)
VALUES ('Ancient','UnderConstruction','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_TITANIUM_MARSH','Art/Resources/Titanium/HB_MED_Mine_Titanium.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)
VALUES ('Ancient','Constructed','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_TITANIUM_MARSH','Art/Resources/Titanium/MED_Mine_Titanium.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Ancient','Pillaged','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_TITANIUM_MARSH','Art/Resources/Titanium/PL_MED_Mine_Titanium.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)
VALUES ('Industrial','UnderConstruction','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_TITANIUM_MARSH','Art/Resources/Titanium/HB_IND_Mine_Titanium.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)
VALUES ('Industrial','Constructed','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_TITANIUM_MARSH','Art/Resources/Titanium/IND_Mine_Titanium.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech)
VALUES ('Industrial','Pillaged','1','ART_DEF_IMPROVEMENT_MINE','SNAPSHOT','ART_DEF_RESOURCE_TITANIUM_MARSH','Art/Resources/Titanium/PL_IND_Mine_Titanium.fxsxml','1',null);

INSERT INTO ArtDefine_Landmarks (Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour, Tech) 
VALUES ('Any','Any','1','ART_DEF_IMPROVEMENT_NONE','SNAPSHOT','ART_DEF_RESOURCE_TITANIUM_MARSH','Art/Resources/Titanium/Titanium_marsh.fxsxml','1',null);


INSERT INTO ArtDefine_Landmarks (Era,				State,						Scale,	ImprovementType,							LayoutHandler,			ResourceType,							Model,															TerrainContour) VALUES	
								('Any',				'Any',						1,		'ART_DEF_IMPROVEMENT_NONE',					'SNAPSHOT',				'ART_DEF_RESOURCE_EMERALD',				'Art/Emerald/Emerald.fxsxml',									1),
								('Industrial',		'Constructed',				1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_EMERALD',				'Art/Emerald/MED_Mine_Emerald.fxsxml',							1),
								('Industrial',		'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_EMERALD',				'Art/Emerald/HB_MED_Mine_Emerald.fxsxml',						1),
								('Industrial',		'Pillaged',					1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_EMERALD',				'Art/Emerald/PL_MED_Mine_Emerald.fxsxml',						1),
								('Ancient',			'Constructed',				1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_EMERALD',				'Art/Emerald/IND_Mine_Emerald.fxsxml',							1),
								('Ancient',			'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_EMERALD',				'Art/Emerald/HB_IND_Mine_Emerald.fxsxml',						1),
								('Ancient',			'Pillaged',					1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_EMERALD',				'Art/Emerald/PL_IND_Mine_Emerald.fxsxml',						1),
								
								('Any',				'Any',						1,		'ART_DEF_IMPROVEMENT_NONE',					'SNAPSHOT',				'ART_DEF_RESOURCE_RUBY',				'Art/Ruby/Ruby.fxsxml',											1),
								('Industrial',		'Constructed',				1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_RUBY',				'Art/Ruby/MED_Mine_Ruby.fxsxml',								1),
								('Industrial',		'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_RUBY',				'Art/Ruby/HB_MED_Mine_Ruby.fxsxml',								1),
								('Industrial',		'Pillaged',					1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_RUBY',				'Art/Ruby/PL_MED_Mine_Ruby.fxsxml',								1),
								('Ancient',			'Constructed',				1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_RUBY',				'Art/Ruby/IND_Mine_Ruby.fxsxml',								1),
								('Ancient',			'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_RUBY',				'Art/Ruby/HB_IND_Mine_Ruby.fxsxml',								1),
								('Ancient',			'Pillaged',					1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_RUBY',				'Art/Ruby/PL_IND_Mine_Ruby.fxsxml',								1),
								
								('Any',				'Any',						1,		'ART_DEF_IMPROVEMENT_NONE',					'SNAPSHOT',				'ART_DEF_RESOURCE_SAPPHIRE',			'Art/Sapphire/Sapphire.fxsxml',									1),
								('Industrial',		'Constructed',				1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_SAPPHIRE',			'Art/Sapphire/MED_Mine_Sapphire.fxsxml',						1),
								('Industrial',		'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_SAPPHIRE',			'Art/Sapphire/HB_MED_Mine_Sapphire.fxsxml',						1),
								('Industrial',		'Pillaged',					1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_SAPPHIRE',			'Art/Sapphire/PL_MED_Mine_Sapphire.fxsxml',						1),
								('Ancient',			'Constructed',				1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_SAPPHIRE',			'Art/Sapphire/IND_Mine_Sapphire.fxsxml',						1),
								('Ancient',			'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_SAPPHIRE',			'Art/Sapphire/HB_IND_Mine_Sapphire.fxsxml',						1),
								('Ancient',			'Pillaged',					1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_SAPPHIRE',			'Art/Sapphire/PL_IND_Mine_Sapphire.fxsxml',						1),
								
								('Any',				'Any',						1,		'ART_DEF_IMPROVEMENT_NONE',					'SNAPSHOT',				'ART_DEF_RESOURCE_LEAD',				'Art/Lead/Lead.fxsxml',											1),
								('Industrial',		'Constructed',				1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_LEAD',				'Art/Lead/MED_Mine_Lead.fxsxml',								1),
								('Industrial',		'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_LEAD',				'Art/Lead/HB_MED_Mine_Lead.fxsxml',								1),
								('Industrial',		'Pillaged',					1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_LEAD',				'Art/Lead/PL_MED_Mine_Lead.fxsxml',								1),
								('Ancient',			'Constructed',				1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_LEAD',				'Art/Lead/IND_Mine_Lead.fxsxml',								1),
								('Ancient',			'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_LEAD',				'Art/Lead/HB_IND_Mine_Lead.fxsxml',								1),
								('Ancient',			'Pillaged',					1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_LEAD',				'Art/Lead/PL_IND_Mine_Lead.fxsxml',								1),
								('Any',				'Any',						1,		'ART_DEF_IMPROVEMENT_NONE',					'SNAPSHOT',				'ART_DEF_RESOURCE_LEAD_HEAVY',			'Art/Lead/Lead_Heavy.fxsxml',									1),
								('Industrial',		'Constructed',				1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_LEAD_HEAVY',			'Art/Lead/MED_Mine_Lead_Heavy.fxsxml',							1),
								('Industrial',		'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_LEAD_HEAVY',			'Art/Lead/HB_MED_Mine_Lead_Heavy.fxsxml',						1),
								('Industrial',		'Pillaged',					1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_LEAD_HEAVY',			'Art/Lead/PL_MED_Mine_Lead_Heavy.fxsxml',						1),
								('Ancient',			'Constructed',				1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_LEAD_HEAVY',			'Art/Lead/IND_Mine_Lead_Heavy.fxsxml',							1),
								('Ancient',			'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_LEAD_HEAVY',			'Art/Lead/HB_IND_Mine_Lead_Heavy.fxsxml',						1),
								('Ancient',			'Pillaged',					1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_LEAD_HEAVY',			'Art/Lead/PL_IND_Mine_Lead_Heavy.fxsxml',						1),
								
								('Any',				'Any',						1,		'ART_DEF_IMPROVEMENT_NONE',					'SNAPSHOT',				'ART_DEF_RESOURCE_NICKEL',				'Art/Nickel/Nickel.fxsxml',										1),
								('Industrial',		'Constructed',				1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_NICKEL',				'Art/Nickel/MED_Mine_Nickel.fxsxml',							1),
								('Industrial',		'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_NICKEL',				'Art/Nickel/HB_MED_Mine_Nickel.fxsxml',							1),
								('Industrial',		'Pillaged',					1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_NICKEL',				'Art/Nickel/PL_MED_Mine_Nickel.fxsxml',							1),
								('Ancient',			'Constructed',				1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_NICKEL',				'Art/Nickel/IND_Mine_Nickel.fxsxml',							1),
								('Ancient',			'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_NICKEL',				'Art/Nickel/HB_IND_Mine_Nickel.fxsxml',							1),
								('Ancient',			'Pillaged',					1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_NICKEL',				'Art/Nickel/PL_IND_Mine_Nickel.fxsxml',							1),
								('Any',				'Any',						1,		'ART_DEF_IMPROVEMENT_NONE',					'SNAPSHOT',				'ART_DEF_RESOURCE_NICKEL_HEAVY',		'Art/Nickel/Nickel_Heavy.fxsxml',								1),
								('Industrial',		'Constructed',				1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_NICKEL_HEAVY',		'Art/Nickel/MED_Mine_Nickel_Heavy.fxsxml',						1),
								('Industrial',		'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_NICKEL_HEAVY',		'Art/Nickel/HB_MED_Mine_Nickel_Heavy.fxsxml',					1),
								('Industrial',		'Pillaged',					1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_NICKEL_HEAVY',		'Art/Nickel/PL_MED_Mine_Nickel_Heavy.fxsxml',					1),
								('Ancient',			'Constructed',				1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_NICKEL_HEAVY',		'Art/Nickel/IND_Mine_Nickel_Heavy.fxsxml',						1),
								('Ancient',			'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_NICKEL_HEAVY',		'Art/Nickel/HB_IND_Mine_Nickel_Heavy.fxsxml',					1),
								('Ancient',			'Pillaged',					1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_NICKEL_HEAVY',		'Art/Nickel/PL_IND_Mine_Nickel_Heavy.fxsxml',					1),
								
								('Any',				'Any',						1,		'ART_DEF_IMPROVEMENT_NONE',					'SNAPSHOT',				'ART_DEF_RESOURCE_PLATINUM',			'Art/Platinum/Platinum.fxsxml',									1),
								('Industrial',		'Constructed',				1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_PLATINUM',			'Art/Platinum/MED_Mine_Platinum.fxsxml',						1),
								('Industrial',		'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_PLATINUM',			'Art/Platinum/HB_MED_Mine_Platinum.fxsxml',						1),
								('Industrial',		'Pillaged',					1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_PLATINUM',			'Art/Platinum/PL_MED_Mine_Platinum.fxsxml',						1),
								('Ancient',			'Constructed',				1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_PLATINUM',			'Art/Platinum/IND_Mine_Platinum.fxsxml',						1),
								('Ancient',			'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_PLATINUM',			'Art/Platinum/HB_IND_Mine_Platinum.fxsxml',						1),
								('Ancient',			'Pillaged',					1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_PLATINUM',			'Art/Platinum/PL_IND_Mine_Platinum.fxsxml',						1),
								('Any',				'Any',						1,		'ART_DEF_IMPROVEMENT_NONE',					'SNAPSHOT',				'ART_DEF_RESOURCE_PLATINUM_HEAVY',		'Art/Platinum/Platinum_Heavy.fxsxml',							1),
								('Industrial',		'Constructed',				1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_PLATINUM_HEAVY',		'Art/Platinum/MED_Mine_Platinum_Heavy.fxsxml',					1),
								('Industrial',		'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_PLATINUM_HEAVY',		'Art/Platinum/HB_MED_Mine_Platinum_Heavy.fxsxml',				1),
								('Industrial',		'Pillaged',					1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_PLATINUM_HEAVY',		'Art/Platinum/PL_MED_Mine_Platinum_Heavy.fxsxml',				1),
								('Ancient',			'Constructed',				1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_PLATINUM_HEAVY',		'Art/Platinum/IND_Mine_Platinum_Heavy.fxsxml',					1),
								('Ancient',			'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_PLATINUM_HEAVY',		'Art/Platinum/HB_IND_Mine_Platinum_Heavy.fxsxml',				1),
								('Ancient',			'Pillaged',					1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_PLATINUM_HEAVY',		'Art/Platinum/PL_IND_Mine_Platinum_Heavy.fxsxml',				1);

	
								
INSERT INTO ArtDefine_LandmarkTypes (Type,										LandmarkType,	FriendlyName) VALUES	
									('ART_DEF_RESOURCE_EMERALD',				'Resource',		'Emerald'),
									('ART_DEF_RESOURCE_LEAD',					'Resource',		'Lead'),
									('ART_DEF_RESOURCE_LEAD_HEAVY',				'Resource',		'Lead Heavy'),
									('ART_DEF_RESOURCE_PLATINUM',				'Resource',		'Platinum'),
									('ART_DEF_RESOURCE_PLATINUM_HEAVY',			'Resource',		'Platinum Heavy'),
									('ART_DEF_RESOURCE_NICKEL',					'Resource',		'Nickel'),
									('ART_DEF_RESOURCE_NICKEL_HEAVY',			'Resource',		'Nickel Heavy'),
									('ART_DEF_RESOURCE_SAPPHIRE',				'Resource',		'Sapphire'),
									('ART_DEF_RESOURCE_RUBY',					'Resource',		'Ruby');
						
									
INSERT INTO ArtDefine_Landmarks (Era,				State,						Scale,	ImprovementType,							LayoutHandler,			ResourceType,					Model,															TerrainContour) VALUES
								
								('Any',				'Any',						1,		'ART_DEF_IMPROVEMENT_NONE',					'SNAPSHOT',				'ART_DEF_RESOURCE_CACAO',				'Art/Cacao/Cacaotrees.fxsxml',									1),
								('Industrial',		'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_CACAO',				'Art/Cacao/Plantation_IND_Cacaotrees.fxsxml',					1),
								('Industrial',		'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_CACAO',				'Art/Cacao/Plantation_IND_Cacaotrees_HB.fxsxml',				1),
								('Industrial',		'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_CACAO',				'Art/Cacao/Plantation_IND_Cacaotrees_PIL.fxsxml',				1),
								('Ancient',			'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_CACAO',				'Art/Cacao/Plantation_MID_Cacaotrees.fxsxml',					1),
								('Ancient',			'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_CACAO',				'Art/Cacao/Plantation_MID_Cacaotrees_HB.fxsxml',				1),
								('Ancient',			'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_CACAO',				'Art/Cacao/Plantation_MID_Cacaotrees_PIL.fxsxml',				1),
								
								('Any',				'Any',						1,		'ART_DEF_IMPROVEMENT_NONE',					'SNAPSHOT',				'ART_DEF_RESOURCE_COCONUT',				'Art/Coconut/Coconuttrees.fxsxml',								1),
								('Industrial',		'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_COCONUT',				'Art/Coconut/Plantation_IND_Coconuttrees.fxsxml',				1),
								('Industrial',		'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_COCONUT',				'Art/Coconut/Plantation_IND_Coconuttrees_HB.fxsxml',			1),
								('Industrial',		'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_COCONUT',				'Art/Coconut/Plantation_IND_Coconuttrees_PIL.fxsxml',			1),
								('Ancient',			'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_COCONUT',				'Art/Coconut/Plantation_MID_Coconuttrees.fxsxml',				1),
								('Ancient',			'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_COCONUT',				'Art/Coconut/Plantation_MID_Coconuttrees_HB.fxsxml',			1),
								('Ancient',			'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_COCONUT',				'Art/Coconut/Plantation_MID_Coconuttrees_PIL.fxsxml',			1),
								
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
									
								('Any',				'Any',						1.5,	'ART_DEF_IMPROVEMENT_NONE',					'SNAPSHOT',				'ART_DEF_RESOURCE_PINE',		'Art/Pine/Pinetrees.fxsxml',									1),
								('Industrial',		'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_PINE',		'Art/Pine/Plantation_IND_Pinetrees.fxsxml',						1),
								('Industrial',		'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_PINE',		'Art/Pine/Plantation_IND_Pinetrees_HB.fxsxml',					1),
								('Industrial',		'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_PINE',		'Art/Pine/Plantation_IND_Pinetrees_PIL.fxsxml',					1),
								('Ancient',			'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_PINE',		'Art/Pine/Plantation_MID_Pinetrees.fxsxml',						1),
								('Ancient',			'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_PINE',		'Art/Pine/Plantation_MID_Pinetrees_HB.fxsxml',					1),
								('Ancient',			'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_PINE',		'Art/Pine/Plantation_MID_Pinetrees_PIL.fxsxml',					1),

								('Any',				'Any',						1.15,	'ART_DEF_IMPROVEMENT_NONE',					'SNAPSHOT',				'ART_DEF_RESOURCE_APPLE',		'Art/Apple/Appletrees.fxsxml',									1),
								('Industrial',		'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_APPLE',		'Art/Apple/Plantation_IND_Appletrees.fxsxml',					1),
								('Industrial',		'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_APPLE',		'Art/Apple/Plantation_IND_Appletrees_HB.fxsxml',				1),
								('Industrial',		'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_APPLE',		'Art/Apple/Plantation_IND_Appletrees_PIL.fxsxml',				1),
								('Ancient',			'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_APPLE',		'Art/Apple/Plantation_MID_Appletrees.fxsxml',					1),
								('Ancient',			'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_APPLE',		'Art/Apple/Plantation_MID_Appletrees_HB.fxsxml',				1),
								('Ancient',			'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_APPLE',		'Art/Apple/Plantation_MID_Appletrees_PIL.fxsxml',				1),

								('Any',				'Any',						1.5,	'ART_DEF_IMPROVEMENT_NONE',					'SNAPSHOT',				'ART_DEF_RESOURCE_MAHOGANY',	'Art/Mahogany/Mahogany.fxsxml',									1),
								('Industrial',		'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_MAHOGANY',	'Art/Mahogany/Plantation_IND_Mahogany.fxsxml',					1),
								('Industrial',		'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_MAHOGANY',	'Art/Mahogany/Plantation_IND_Mahogany_HB.fxsxml',				1),
								('Industrial',		'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_MAHOGANY',	'Art/Mahogany/Plantation_IND_Mahogany_PIL.fxsxml',				1),
								('Ancient',			'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_MAHOGANY',	'Art/Mahogany/Plantation_MID_Mahogany.fxsxml',					1),
								('Ancient',			'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_MAHOGANY',	'Art/Mahogany/Plantation_MID_Mahogany_HB.fxsxml',				1),
								('Ancient',			'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_MAHOGANY',	'Art/Mahogany/Plantation_MID_Mahogany_PIL.fxsxml',				1),

								('Any',				'Any',						1.25,	'ART_DEF_IMPROVEMENT_NONE',					'SNAPSHOT',				'ART_DEF_RESOURCE_LUMBER',		'Art/Lumber/Lumbertrees.fxsxml',								1),
								('Industrial',		'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_LUMBER',		'Art/Lumber/Plantation_IND_Lumbertrees.fxsxml',					1),
								('Industrial',		'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_LUMBER',		'Art/Lumber/Plantation_IND_Lumbertrees_HB.fxsxml',				1),
								('Industrial',		'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_LUMBER',		'Art/Lumber/Plantation_IND_Lumbertrees_PIL.fxsxml',				1),
								('Ancient',			'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_LUMBER',		'Art/Lumber/Plantation_MID_Lumbertrees.fxsxml',					1),
								('Ancient',			'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_LUMBER',		'Art/Lumber/Plantation_MID_Lumbertrees_HB.fxsxml',				1),
								('Ancient',			'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_LUMBER',		'Art/Lumber/Plantation_MID_Lumbertrees_PIL.fxsxml',				1);

INSERT INTO ArtDefine_LandmarkTypes (Type,										LandmarkType,	FriendlyName) VALUES	
									('ART_DEF_RESOURCE_CACAO',					'Resource',		'Cacao'),	
									('ART_DEF_RESOURCE_COCONUT',				'Resource',		'Coconut'),	
									('ART_DEF_RESOURCE_MANGO',					'Resource',		'Mango'),	
									('ART_DEF_RESOURCE_RUBBER',					'Resource',		'Rubber'),						
									('ART_DEF_RESOURCE_PINE',					'Resource',		'Pine'),
									('ART_DEF_RESOURCE_APPLE',					'Resource',		'Apple'),
									('ART_DEF_RESOURCE_MAHOGANY',				'Resource',		'Mahogany'),
									('ART_DEF_RESOURCE_LUMBER',					'Resource',		'Lumber');
									
	INSERT INTO ArtDefine_LandmarkTypes (Type,										LandmarkType,			FriendlyName) VALUES
									('ART_DEF_RESOURCE_LAVENDER',				'Resource',				'Lavender');

INSERT INTO ArtDefine_Landmarks (Era,				State,						Scale,	ImprovementType,							LayoutHandler,			ResourceType,							Model,													TerrainContour) VALUES	

								('Any',				'Any',						1,		'ART_DEF_IMPROVEMENT_NONE',					'SNAPSHOT',				'ART_DEF_RESOURCE_LAVENDER',			'Art/Lavender/Resource_Lavender.fxsxml',				1),
								('Industrial',		'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_LAVENDER',			'Art/Lavender/Plantation_IND_Lavender.fxsxml',			1),
								('Industrial',		'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_LAVENDER',			'Art/Lavender/HB_Plantation_IND_Lavender.fxsxml',		1),
								('Industrial',		'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_LAVENDER',			'Art/Lavender/PL_Plantation_IND_Lavender.fxsxml',		1),
								('Ancient',			'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_LAVENDER',			'Art/Lavender/Plantation_MID_Lavender.fxsxml',			1),
								('Ancient',			'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_LAVENDER',			'Art/Lavender/HB_Plantation_MID_Lavender.fxsxml',		1),
								('Ancient',			'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_LAVENDER',			'Art/Lavender/PL_Plantation_MID_Lavender.fxsxml',		1);
								
	INSERT INTO ArtDefine_LandmarkTypes (Type,										LandmarkType,	FriendlyName) VALUES	

									('ART_DEF_RESOURCE_ALOEVERA',				'Resource',		'Aloe Vera'),	
									('ART_DEF_RESOURCE_COFFEE',					'Resource',		'Coffee'),
									('ART_DEF_RESOURCE_TOBACCO',				'Resource',		'Tobacco'),
									('ART_DEF_RESOURCE_TEA',					'Resource',		'Tea'),
									('ART_DEF_RESOURCE_REDBERRIES',				'Resource',		'Red Berries');


INSERT INTO ArtDefine_Landmarks (Era,				State,						Scale,	ImprovementType,							LayoutHandler,			ResourceType,							Model,															TerrainContour) VALUES	

								('Any',				'Any',						1,		'ART_DEF_IMPROVEMENT_NONE',					'SNAPSHOT',				'ART_DEF_RESOURCE_ALOEVERA',			'Art/Aloe Vera/Resource_Aloevera.fxsxml',						1),
								('Industrial',		'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_ALOEVERA',			'Art/Aloe Vera/Plantation_IND_Aloevera.fxsxml',					1),
								('Industrial',		'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_ALOEVERA',			'Art/Aloe Vera/HB_Plantation_IND_Aloevera.fxsxml',				1),
								('Industrial',		'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_ALOEVERA',			'Art/Aloe Vera/PL_Plantation_IND_Aloevera.fxsxml',				1),
								('Ancient',			'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_ALOEVERA',			'Art/Aloe Vera/Plantation_MID_Aloevera.fxsxml',					1),
								('Ancient',			'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_ALOEVERA',			'Art/Aloe Vera/HB_Plantation_MID_Aloevera.fxsxml',				1),
								('Ancient',			'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_ALOEVERA',			'Art/Aloe Vera/PL_Plantation_MID_Aloevera.fxsxml',				1),
								
								('Any',				'Any',						1,		'ART_DEF_IMPROVEMENT_NONE',					'SNAPSHOT',				'ART_DEF_RESOURCE_COFFEE',				'Art/Coffee/Resource_Coffee.fxsxml',							1),
								('Industrial',		'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_COFFEE',				'Art/Coffee/Plantation_IND_Coffee.fxsxml',						1),
								('Industrial',		'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_COFFEE',				'Art/Coffee/HB_Plantation_IND_Coffee.fxsxml',					1),
								('Industrial',		'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_COFFEE',				'Art/Coffee/PL_Plantation_IND_Coffee.fxsxml',					1),
								('Ancient',			'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_COFFEE',				'Art/Coffee/Plantation_MID_Coffee.fxsxml',						1),
								('Ancient',			'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_COFFEE',				'Art/Coffee/HB_Plantation_MID_Coffee.fxsxml',					1),
								('Ancient',			'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_COFFEE',				'Art/Coffee/PL_Plantation_MID_Coffee.fxsxml',					1),
								
								('Any',				'Any',						1,		'ART_DEF_IMPROVEMENT_NONE',					'SNAPSHOT',				'ART_DEF_RESOURCE_TOBACCO',				'Art/Tobacco/Resource_Tobacco.fxsxml',							1),
								('Industrial',		'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_TOBACCO',				'Art/Tobacco/Plantation_IND_Tobacco.fxsxml',					1),
								('Industrial',		'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_TOBACCO',				'Art/Tobacco/HB_Plantation_IND_Tobacco.fxsxml',					1),
								('Industrial',		'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_TOBACCO',				'Art/Tobacco/PL_Plantation_IND_Tobacco.fxsxml',					1),
								('Ancient',			'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_TOBACCO',				'Art/Tobacco/Plantation_MID_Tobacco.fxsxml',					1),
								('Ancient',			'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_TOBACCO',				'Art/Tobacco/HB_Plantation_MID_Tobacco.fxsxml',					1),
								('Ancient',			'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_TOBACCO',				'Art/Tobacco/PL_Plantation_MID_Tobacco.fxsxml',					1),
								
								('Any',				'Any',						1,		'ART_DEF_IMPROVEMENT_NONE',					'SNAPSHOT',				'ART_DEF_RESOURCE_TEA',					'Art/Tea/Resource_Tea.fxsxml',									1),
								('Industrial',		'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_TEA',					'Art/Tea/Plantation_IND_Tea.fxsxml',							1),
								('Industrial',		'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_TEA',					'Art/Tea/HB_Plantation_IND_Tea.fxsxml',							1),
								('Industrial',		'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_TEA',					'Art/Tea/PL_Plantation_IND_Tea.fxsxml',							1),
								('Ancient',			'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_TEA',					'Art/Tea/Plantation_MID_Tea.fxsxml',							1),
								('Ancient',			'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_TEA',					'Art/Tea/HB_Plantation_MID_Tea.fxsxml',							1),
								('Ancient',			'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_TEA',					'Art/Tea/PL_Plantation_MID_Tea.fxsxml',							1),
								
								('Any',				'Any',						1,		'ART_DEF_IMPROVEMENT_NONE',					'SNAPSHOT',				'ART_DEF_RESOURCE_REDBERRIES',			'Art/Red Berries/Resource_Berries.fxsxml',						1),
								('Industrial',		'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_REDBERRIES',			'Art/Red Berries/Plantation_IND_Berries.fxsxml',				1),
								('Industrial',		'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_REDBERRIES',			'Art/Red Berries/HB_Plantation_IND_Berries.fxsxml',				1),
								('Industrial',		'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_REDBERRIES',			'Art/Red Berries/PL_Plantation_IND_Berries.fxsxml',				1),
								('Ancient',			'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_REDBERRIES',			'Art/Red Berries/Plantation_MID_Berries.fxsxml',				1),
								('Ancient',			'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_REDBERRIES',			'Art/Red Berries/HB_Plantation_MID_Berries.fxsxml',				1),
								('Ancient',			'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_REDBERRIES',			'Art/Red Berries/PL_Plantation_MID_Berries.fxsxml',				1);	

	INSERT INTO ArtDefine_LandmarkTypes	(Type,										LandmarkType,			FriendlyName) VALUES
									('ART_DEF_RESOURCE_CORN',					'Resource',				'Corn'),
									('ART_DEF_RESOURCE_BARLEY',					'Resource',				'Barley');

INSERT INTO ArtDefine_Landmarks (Era,				State,						Scale,	ImprovementType,							LayoutHandler,			ResourceType,							Model,												TerrainContour) VALUES	
								
								('Any',				'Any',						1,		'ART_DEF_IMPROVEMENT_NONE',					'SNAPSHOT',				'ART_DEF_RESOURCE_CORN',				'Art/Corn/Resource_Corn.fxsxml',					1),
								('Industrial',		'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_CORN',				'Art/Corn/Plantation_IND_Corn.fxsxml',				1),
								('Industrial',		'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_CORN',				'Art/Corn/HB_Plantation_IND_Corn.fxsxml',			1),
								('Industrial',		'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_CORN',				'Art/Corn/PL_Plantation_IND_Corn.fxsxml',			1),
								('Ancient',			'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_CORN',				'Art/Corn/Plantation_MID_Corn.fxsxml',				1),
								('Ancient',			'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_CORN',				'Art/Corn/HB_Plantation_MID_Corn.fxsxml',			1),
								('Ancient',			'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_CORN',				'Art/Corn/PL_Plantation_MID_Corn.fxsxml',			1),
																
								('Any',				'Any',						1,		'ART_DEF_IMPROVEMENT_NONE',					'SNAPSHOT',				'ART_DEF_RESOURCE_BARLEY',				'Art/Barley/Resource_Barley.fxsxml',				1),
								('Industrial',		'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_BARLEY',				'Art/Barley/Plantation_IND_Barley.fxsxml',			1),
								('Industrial',		'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_BARLEY',				'Art/Barley/HB_Plantation_IND_Barley.fxsxml',		1),
								('Industrial',		'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_BARLEY',				'Art/Barley/PL_Plantation_IND_Barley.fxsxml',		1),
								('Ancient',			'Constructed',				1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_BARLEY',				'Art/Barley/Plantation_MID_Barley.fxsxml',			1),
								('Ancient',			'UnderConstruction',		1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_BARLEY',				'Art/Barley/HB_Plantation_MID_Barley.fxsxml',		1),
								('Ancient',			'Pillaged',					1,		'ART_DEF_IMPROVEMENT_PLANTATION',			'SNAPSHOT',				'ART_DEF_RESOURCE_BARLEY',				'Art/Barley/PL_Plantation_MID_Barley.fxsxml',		1);							