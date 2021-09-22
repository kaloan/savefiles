--==========================================================================================================================
-- UnitPromotions
--==========================================================================================================================	
INSERT OR REPLACE INTO UnitPromotions 
			(Type, 								Description, 								Help, 											Sound, 				CannotBeChosen, UpgradeDiscount,	TradeMissionInfluenceModifier,	TradeMissionGoldModifier,	AttackMod,	DefenseMod,	LostWithUpgrade,	PortraitIndex, 	IconAtlas, 						PediaType, 			PediaEntry)
VALUES		('PROMOTION_2HANDER', 	'TXT_KEY_PROMOTION_2HANDER',		'TXT_KEY_PROMOTION_2HANDER_HELP', 	'AS2D_IF_LEVELUP', 	1, 				0,					0,								0,							0, 			0, 			0,					59, 			'ABILITY_ATLAS', 				'PEDIA_ATTRIBUTES', 'TXT_KEY_PROMOTION_2HANDER'),
			('PROMOTION_RODELEROS', 	'TXT_KEY_PROMOTION_RODELEROS',		'TXT_KEY_PROMOTION_RODELEROS_HELP', 	'AS2D_IF_LEVELUP', 	1, 				0,					0,								0,							0, 			0, 			0,					59, 			'ABILITY_ATLAS', 				'PEDIA_ATTRIBUTES', 'TXT_KEY_PROMOTION_2HANDER');
--==========================================================================================================================
-- UnitPromotions_UnitClasses
--==========================================================================================================================	
INSERT OR REPLACE INTO UnitPromotions_UnitClasses
		(PromotionType,					UnitClassType,			Attack)
VALUES	('PROMOTION_2HANDER', 'UNITCLASS_PIKEMAN',	50),
		('PROMOTION_2HANDER', 'UNITCLASS_SPEARMAN',	50),
		('PROMOTION_2HANDER', 'UNITCLASS_TERCIO',		50),
		('PROMOTION_RODELEROS', 'UNITCLASS_PIKEMAN',	25),
		('PROMOTION_RODELEROS', 'UNITCLASS_SPEARMAN',	25),
		('PROMOTION_RODELEROS', 'UNITCLASS_TERCIO',		25);
		
INSERT INTO UnitPromotions_UnitCombatMods
		(PromotionType,					UnitCombatType,			Modifier)
VALUES	('PROMOTION_RODELEROS',	'UNITCOMBAT_ARCHER',		25),	
		('PROMOTION_RODELEROS',	'UNITCOMBAT_GUN',		25);
--==========================================================================================================================
--==========================================================================================================================