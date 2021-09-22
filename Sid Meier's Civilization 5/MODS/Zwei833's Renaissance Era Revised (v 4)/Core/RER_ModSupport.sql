--==========================================================================================================================
-- POUAKAI ENLIGHTENMENT ERA
--==========================================================================================================================
--Deletes a specified prerequite tech.
DELETE FROM Technology_PrereqTechs WHERE TechType = 'TECH_MILITARY_SCIENCE' AND PrereqTech = 'TECH_RER_PIKE_AND_SHOT'
AND EXISTS (SELECT 1 FROM Eras WHERE Type = 'ERA_ENLIGHTENMENT');

DELETE FROM Technology_PrereqTechs WHERE TechType = 'TECH_RIFLING' AND PrereqTech = 'TECH_RER_PIKE_AND_SHOT'
AND EXISTS (SELECT 1 FROM Eras WHERE Type = 'ERA_ENLIGHTENMENT');

DELETE FROM Technology_PrereqTechs WHERE TechType = 'TECH_EE_FLINTLOCK' AND PrereqTech = 'TECH_EE_SOVEREIGNTY'
AND EXISTS (SELECT 1 FROM Eras WHERE Type = 'ERA_ENLIGHTENMENT');

--Adds a specified prerequisite tech to another tech.
INSERT INTO Technology_PrereqTechs 
	(TechType, 		PrereqTech)
SELECT	'TECH_EE_FLINTLOCK', 	'TECH_RER_PIKE_AND_SHOT'
WHERE EXISTS (SELECT 1 FROM Eras WHERE Type = 'ERA_ENLIGHTENMENT');

UPDATE Technologies
SET Cost = 485
WHERE Type = 'TECH_STEEL'
AND EXISTS (SELECT 1 FROM Eras WHERE Type = 'ERA_ENLIGHTENMENT');

UPDATE Technologies
SET Cost = 485
WHERE Type = 'TECH_RER_LARGEWEAPON'
AND EXISTS (SELECT 1 FROM Eras WHERE Type = 'ERA_ENLIGHTENMENT');

UPDATE Technologies
SET Cost = 700
WHERE Type = 'TECH_RER_PIKE_AND_SHOT'
AND EXISTS (SELECT 1 FROM Eras WHERE Type = 'ERA_ENLIGHTENMENT');
--------------------------------	
-- Unit_ClassUpgrades
--------------------------------	
UPDATE Units
SET ObsoleteTech = 'TECH_EE_FLINTLOCK', GoodyHutUpgradeUnitClass = 'UNITCLASS_EE_LINE_INFANTRY'
WHERE Type = 'UNIT_SPANISH_TERCIO'
AND EXISTS (SELECT 1 FROM Eras WHERE Type = 'ERA_ENLIGHTENMENT');

UPDATE Units
SET ObsoleteTech = 'TECH_EE_FLINTLOCK', GoodyHutUpgradeUnitClass = 'UNITCLASS_EE_LINE_INFANTRY'
WHERE Type = 'UNIT_2HANDER'
AND EXISTS (SELECT 1 FROM Eras WHERE Type = 'ERA_ENLIGHTENMENT');

UPDATE Units
SET ObsoleteTech = 'TECH_EE_FLINTLOCK', GoodyHutUpgradeUnitClass = 'UNITCLASS_EE_LINE_INFANTRY'
WHERE Type = 'UNIT_RODELEROS'
AND EXISTS (SELECT 1 FROM Eras WHERE Type = 'ERA_ENLIGHTENMENT');

/*UPDATE Units
SET ObsoleteTech = 'TECH_EE_IMPERIALISM', GoodyHutUpgradeUnitClass = 'UNITCLASS_EE_CUIRASSIER', Cost = 150, FaithCost = 340
WHERE Type = 'UNIT_LANCER'
AND EXISTS (SELECT 1 FROM Eras WHERE Type = 'ERA_ENLIGHTENMENT');

UPDATE Units
SET Cost = 150, FaithCost = 340
WHERE Type = 'UNIT_OTTOMAN_SIPAHI'
AND EXISTS (SELECT 1 FROM Eras WHERE Type = 'ERA_ENLIGHTENMENT');

UPDATE Units
SET Cost = 150, FaithCost = 340
WHERE Type = 'UNIT_POLISH_WINGED_HUSSAR'
AND EXISTS (SELECT 1 FROM Eras WHERE Type = 'ERA_ENLIGHTENMENT');

UPDATE Units
SET Cost = 150, FaithCost = 340
WHERE Type = 'UNIT_SWEDISH_HAKKAPELIITTA'
AND EXISTS (SELECT 1 FROM Eras WHERE Type = 'ERA_ENLIGHTENMENT');

UPDATE Units
SET ObsoleteTech = 'TECH_EE_FLINTLOCK', GoodyHutUpgradeUnitClass = 'UNITCLASS_EE_SKIRMISHER'
WHERE Type = 'UNIT_MUSKETMAN'
AND EXISTS (SELECT 1 FROM Eras WHERE Type = 'ERA_ENLIGHTENMENT');

UPDATE Units
SET GoodyHutUpgradeUnitClass = 'UNITCLASS_EE_SKIRMISHER', ObsoleteTech = 'TECH_STEAM_POWER'
WHERE Type = 'UNIT_OTTOMAN_JANISSARY'
AND EXISTS (SELECT 1 FROM Eras WHERE Type = 'ERA_ENLIGHTENMENT');

UPDATE Units
SET GoodyHutUpgradeUnitClass = 'UNITCLASS_EE_SKIRMISHER', ObsoleteTech = 'TECH_STEAM_POWER'
WHERE Type = 'UNIT_FRENCH_MUSKETEER'
AND EXISTS (SELECT 1 FROM Eras WHERE Type = 'ERA_ENLIGHTENMENT');*/
-----------------

UPDATE Unit_ClassUpgrades
SET UnitClassType = 'UNITCLASS_EE_LINE_INFANTRY'
WHERE UnitType = 'UNIT_SPANISH_TERCIO'
AND EXISTS (SELECT 1 FROM Eras WHERE Type = 'ERA_ENLIGHTENMENT');

UPDATE Unit_ClassUpgrades
SET UnitClassType = 'UNITCLASS_EE_LINE_INFANTRY'
WHERE UnitType = 'UNIT_2HANDER'
AND EXISTS (SELECT 1 FROM Eras WHERE Type = 'ERA_ENLIGHTENMENT');

UPDATE Unit_ClassUpgrades
SET UnitClassType = 'UNITCLASS_EE_LINE_INFANTRY'
WHERE UnitType = 'UNIT_RODELEROS'
AND EXISTS (SELECT 1 FROM Eras WHERE Type = 'ERA_ENLIGHTENMENT');

/*UPDATE Unit_ClassUpgrades
SET UnitClassType = 'UNITCLASS_EE_CUIRASSIER'
WHERE UnitType = 'UNIT_LANCER'
AND EXISTS (SELECT 1 FROM Eras WHERE Type = 'ERA_ENLIGHTENMENT');

UPDATE Unit_ClassUpgrades
SET UnitClassType = 'UNITCLASS_EE_SKIRMISHER'
WHERE UnitType = 'UNIT_MUSKETMAN'
AND EXISTS (SELECT 1 FROM Eras WHERE Type = 'ERA_ENLIGHTENMENT');

UPDATE Unit_ClassUpgrades
SET UnitClassType = 'UNITCLASS_EE_SKIRMISHER'
WHERE UnitType = 'UNIT_OTTOMAN_JANISSARY'
AND EXISTS (SELECT 1 FROM Eras WHERE Type = 'ERA_ENLIGHTENMENT');

UPDATE Unit_ClassUpgrades
SET UnitClassType = 'UNITCLASS_EE_SKIRMISHER'
WHERE UnitType = 'UNIT_FRENCH_MUSKETEER'
AND EXISTS (SELECT 1 FROM Eras WHERE Type = 'ERA_ENLIGHTENMENT');*/
--==========================================================================================================================
-- JFD'S MERCENARIES
--==========================================================================================================================
-- Free Company
UPDATE Units
SET JFD_OnlyMercenary = 1, MoveAfterPurchase = 0, Help = 'TXT_KEY_UNIT_MERC_HELP_FREE_COMAPANY', Strategy = 'TXT_KEY_UNIT_MERC_FREE_COMAPANY_STRATEGY'
WHERE Type = 'UNIT_FREE_COMAPANY'
AND EXISTS (SELECT * FROM Technologies WHERE Type = 'TECH_JFD_MERCENARIES');


INSERT OR REPLACE INTO UnitPromotions 
		(Type, 									AdjacentMod,	AdjacentTileHealChange,	AlwaysHeal,	Amphib,	AttackFortifiedMod,	AttackMod,	AttackWoundedMod,	CanMoveAfterAttacking,	CapitalDefenseModifier,	CapitalDefenseFalloff,	CaptureDefeatedEnemy,	CityAttack,	CityDefense,	CityAttackPlunderModifier,	DefenseMod,	ExtraAttacks,	ExtraNavalMovement,	EmbarkExtraVisibility,		FlankAttackModifier,	FreePillageMoves,	HeavyCharge,	HillsDoubleMove,	HealOutsideFriendly,	FriendlyHealChange,	NeutralHealChange,	EnemyHealChange,	GreatGeneralModifier,	GoldenAgeValueFromKills,	HPHealedIfDestroyEnemy,	IgnoreTerrainCost,	IgnoreZOC,	InterceptionDefenseDamageModifier,	MovesChange,	NumInterceptionChange,	RangeAttackIgnoreLOS,	NearbyEnemyCombatMod,	NearbyEnemyCombatRange,	OpenAttack,	RoughAttack,	OutsideFriendlyLandsModifier,	FriendlyLandsModifier,	DropRange,	RangeChange, RangedDefenseMod,	RivalTerritory,	VisibilityChange,	Description, 									Help, 												JFD_Mercenary,	ExperiencePercent,	IgnoreGreatGeneralBenefit,	CannotBeChosen,		Sound,				PortraitIndex,	IconAtlas, 						PediaType, 				PediaEntry)
VALUES	('PROMOTION_JFD_FREE_COMPANY', 			0,				0,						0,			0,		0,					0,			0,					0,						0,						0,						0,						0,			0,				0,							0,			0,				0,					0,							0,						0,					0,				0,					0,						0,					0,					0,					0,						0,							0,						0,					0,			0,									0,				0,						0,						0,						0,						0,			0,				0,								0,						0,			0,			 0,					0,				0,					'TXT_KEY_CONTRACT_JFD_FREE_COMPANY_DESC',		'TXT_KEY_PROMOTION_JFD_FREE_COMPANY_HELP', 			0,				-100,				0,							1, 					null,				58, 			'ABILITY_ATLAS', 				'PEDIA_ATTRIBUTES',		'TXT_KEY_CONTRACT_JFD_FREE_COMPANY_DESC');


INSERT INTO JFD_Contracts 
		(Type, 										Category,					PrereqEra,				ObsoleteEra,			IsSlavery,	Rating, Turns,	YieldCost,		Description, 									Adjective, 										Civilopedia,										PromotionType)
VALUES	('CONTRACT_JFD_FREE_COMPANY', 				'CONTRACT_JFD_MERCENARY',	'ERA_MEDIEVAL',			'ERA_RENAISSANCE',		0,			3,		25,		'[ICON_GOLD]',	'TXT_KEY_CONTRACT_JFD_FREE_COMPANY_DESC',		'TXT_KEY_CONTRACT_JFD_FREE_COMPANY_ADJ',			'TXT_KEY_CONTRACT_JFD_FREE_COMPANY_TEXT',			'PROMOTION_JFD_FREE_COMPANY');


INSERT INTO JFD_Contract_Units 
		(ContractType, 								UnitType,						UseUniqueIfAvailable)
VALUES	('CONTRACT_JFD_FREE_COMPANY', 				'UNIT_FREE_COMAPANY',		0);
		