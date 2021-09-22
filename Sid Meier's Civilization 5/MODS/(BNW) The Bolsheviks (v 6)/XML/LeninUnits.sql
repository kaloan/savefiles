--==========================================================================================================================
-- UNITS
--==========================================================================================================================
-- Units
--------------------------------
INSERT INTO Units 	
			(Type, 					Class, 	PrereqTech, Combat,	Cost, FaithCost, RequiresFaithPurchaseEnabled, Moves, CombatClass, Domain, DefaultUnitAI, Description, 				   Civilopedia, 								Strategy, 							Help, 							  MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, AdvancedStartCost, CombatLimit, Pillage, XPValueDefense, UnitArtInfoEraVariation, UnitArtInfo, 							 UnitFlagIconOffset,	UnitFlagAtlas,			PortraitIndex, 	IconAtlas)
SELECT		('UNIT_BOLSHEVIK'),		Class,	PrereqTech, 48,		Cost, FaithCost, RequiresFaithPurchaseEnabled, Moves, CombatClass, Domain, DefaultUnitAI, ('TXT_KEY_UNIT_BOLSHEVIK'),  ('TXT_KEY_CIV5_INDUSTRIAL_BOLSHEVIK_TEXT'), ('TXT_KEY_UNIT_BOLSHEVIK_STRATEGY'), ('TXT_KEY_UNIT_HELP_BOLSHEVIK'),  MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, AdvancedStartCost, CombatLimit, Pillage, XPValueDefense, UnitArtInfoEraVariation, ('ART_DEF_UNIT_U_FRENCH_FOREIGNLEGION'), 55,					('LENIN_ALPHA_ATLAS'),	3, 				('LENIN_COLOR_ATLAS')
FROM Units WHERE (Type = 'UNIT_GREAT_WAR_INFANTRY');
--------------------------------	
-- UnitGameplay2DScripts
--------------------------------		
INSERT INTO UnitGameplay2DScripts 	
			(UnitType, 					SelectionSound, FirstSelectionSound)
SELECT		('UNIT_BOLSHEVIK'), 		SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE (UnitType = 'UNIT_GREAT_WAR_INFANTRY');
--------------------------------	
-- Unit_AITypes
--------------------------------		
INSERT INTO Unit_AITypes 	
			(UnitType, 					UnitAIType)
SELECT		('UNIT_BOLSHEVIK'), 		UnitAIType
FROM Unit_AITypes WHERE (UnitType = 'UNIT_GREAT_WAR_INFANTRY');
--------------------------------	
-- Unit_ClassUpgrades
--------------------------------		
INSERT INTO Unit_ClassUpgrades 	
			(UnitType, 					UnitClassType)
SELECT		('UNIT_BOLSHEVIK'), 		UnitClassType
FROM Unit_ClassUpgrades WHERE (UnitType = 'UNIT_GREAT_WAR_INFANTRY');
--------------------------------	
-- Unit_Flavors
--------------------------------		
INSERT INTO Unit_Flavors 	
			(UnitType, 					FlavorType, Flavor)
SELECT		('UNIT_BOLSHEVIK'), 		FlavorType, Flavor
FROM Unit_Flavors WHERE (UnitType = 'UNIT_GREAT_WAR_INFANTRY');
--------------------------------
-- Unit_FreePromotions
--------------------------------
INSERT INTO Unit_FreePromotions
			(UnitType, 					PromotionType)
VALUES		('UNIT_BOLSHEVIK', 			'PROMOTION_PATRIOTIC_WAR');
--==========================================================================================================================
--==========================================================================================================================