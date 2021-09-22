--==========================================================================================================================
-- POLICY
--==========================================================================================================================
UPDATE Policies
SET Help = 'TXT_KEY_POLICY_RER_MERCENARY_ARMY_HELP'
WHERE Type = 'POLICY_TRADE_UNIONS'
AND NOT EXISTS (SELECT * FROM Technologies WHERE Type = 'TECH_JFD_MERCENARIES');
--==========================================================================================================================
-- TECH
--==========================================================================================================================
UPDATE Technologies
SET IconAtlas = 'RER_TECH_ATLAS', PortraitIndex = 2, Help = 'TXT_KEY_TECH_RER_METALLURGY_HELP'
WHERE Type = 'TECH_METALLURGY';
--==========================================================================================================================
-- UnitClasses
--==========================================================================================================================
INSERT INTO UnitClasses 	
			(Type, 								DefaultUnit, 					Description)
VALUES		('UNITCLASS_2HANDER', 	'UNIT_2HANDER', 	'TXT_KEY_UNIT_2HANDER'),
			('UNITCLASS_TERCIO', 	'UNIT_SPANISH_TERCIO', 	'TXT_KEY_UNIT_SPANISH_TERCIO'),
			('UNITCLASS_FREE_COMAPANY', 	'UNIT_FREE_COMAPANY', 	'TXT_KEY_UNIT_FREE_COMAPANY');
			
			
UPDATE UnitClasses
SET Description = 'TXT_KEY_UNIT_REITER'
WHERE Type = 'UNITCLASS_LANCER';
--==========================================================================================================================
-- Units
--==========================================================================================================================

UPDATE Units
SET Class = 'UNITCLASS_TERCIO', CombatClass = 'UNITCOMBAT_GUN', PrereqTech = 'TECH_RER_PIKE_AND_SHOT', Strategy = 'TXT_KEY_UNIT_RER_TERCIO_STRATEGY', Help = 'TXT_KEY_UNIT_HELP_RER_TERCIO'
WHERE Type = 'UNIT_SPANISH_TERCIO';

/*UPDATE Units
SET UnitFlagIconOffset = 0, UnitFlagAtlas = 'RER_UNIT_FLAG_LANDSKNECHT_ATLAS', PrereqTech = 'TECH_RER_LARGEWEAPON', GoodyHutUpgradeUnitClass = 'UNITCLASS_TERCIO', Combat = 21, cost = 60
WHERE Type = 'UNIT_GERMAN_LANDSKNECHT';

UPDATE Units
SET ObsoleteTech = 'TECH_RER_LARGEWEAPON', GoodyHutUpgradeUnitClass = 'UNITCLASS_2HANDER'
WHERE Type = 'UNIT_LONGSWORDSMAN';

UPDATE Units
SET ObsoleteTech = 'TECH_RER_LARGEWEAPON', GoodyHutUpgradeUnitClass = 'UNITCLASS_2HANDER'
WHERE Type = 'UNIT_DANISH_BERSERKER';

UPDATE Units
SET GoodyHutUpgradeUnitClass = 'UNITCLASS_2HANDER'
WHERE Type = 'UNIT_JAPANESE_SAMURAI';

UPDATE Units
SET ObsoleteTech = 'TECH_METALLURGY', GoodyHutUpgradeUnitClass = 'UNITCLASS_LANCER'
WHERE Type = 'UNIT_KNIGHT';

UPDATE Units
SET ObsoleteTech = 'TECH_RER_PIKE_AND_SHOT', GoodyHutUpgradeUnitClass = 'UNITCLASS_TERCIO'
WHERE Type = 'UNIT_PIKEMAN';

UPDATE Units
SET ObsoleteTech = 'TECH_RER_PIKE_AND_SHOT', GoodyHutUpgradeUnitClass = 'UNITCLASS_TERCIO'
WHERE Type = 'UNIT_ZULU_IMPI';

UPDATE Units
SET Cost = 130, FaithCost = 260,Combat = 22, RangedCombat = 22, Range = 1, CombatClass = 'UNITCOMBAT_ARCHER', DefaultUnitAI = 'UNITAI_RANGED', ObsoleteTech = 'TECH_INDUSTRIALIZATION', GoodyHutUpgradeUnitClass = 'UNITCLASS_GATLINGGUN', PortraitIndex = 3, IconAtlas = 'RER_UNITS_ATLAS', Strategy = 'TXT_KEY_UNIT_RER_MUSKETMAN_STRATEGY', Help = 'TXT_KEY_UNIT_HELP_RER_MUSKETMAN'
WHERE Type = 'UNIT_MUSKETMAN';

UPDATE Units
SET Cost = 130, FaithCost = 260, ObsoleteTech = 'TECH_INDUSTRIALIZATION', GoodyHutUpgradeUnitClass = 'UNITCLASS_GATLINGGUN', Combat = 22, RangedCombat = 22, Range = 1, CombatClass = 'UNITCOMBAT_ARCHER', DefaultUnitAI = 'UNITAI_RANGED'
WHERE Type = 'UNIT_AMERICAN_MINUTEMAN'
AND NOT EXISTS (SELECT 1 FROM Eras WHERE Type = 'ERA_ENLIGHTENMENT');

UPDATE Units
SET Cost = 130, FaithCost = 260, ObsoleteTech = 'TECH_INDUSTRIALIZATION', GoodyHutUpgradeUnitClass = 'UNITCLASS_GATLINGGUN', Combat = 22, RangedCombat = 22, Range = 1, CombatClass = 'UNITCOMBAT_ARCHER', DefaultUnitAI = 'UNITAI_RANGED'
WHERE Type = 'UNIT_OTTOMAN_JANISSARY';

UPDATE Units
SET Cost = 130, FaithCost = 260, ObsoleteTech = 'TECH_INDUSTRIALIZATION', GoodyHutUpgradeUnitClass = 'UNITCLASS_GATLINGGUN', Combat = 26, RangedCombat = 26, Range = 1, CombatClass = 'UNITCOMBAT_ARCHER', DefaultUnitAI = 'UNITAI_RANGED'
WHERE Type = 'UNIT_FRENCH_MUSKETEER';

UPDATE Units
SET UnitArtInfo = 'ART_DEF_UNIT_REITER', Combat = 26, UnitFlagAtlas = 'UNIT_FLAG_REITER_ATLAS', UnitFlagIconOffset = 0, PortraitIndex = 2, IconAtlas = 'RER_UNITS_ATLAS', GoodyHutUpgradeUnitClass = 'UNITCLASS_CAVALRY', ObsoleteTech = 'TECH_MILITARY_SCIENCE', Description = 'TXT_KEY_UNIT_REITER', Strategy = 'TXT_KEY_UNIT_REITER_STRATEGY', Help = 'TXT_KEY_UNIT_HELP_REITER', Civilopedia = 'TXT_KEY_CIV5_REITER_TEXT', DefaultUnitAI = 'UNITAI_FAST_ATTACK'
WHERE Type = 'UNIT_LANCER';

UPDATE Units
SET ObsoleteTech = 'TECH_MILITARY_SCIENCE', GoodyHutUpgradeUnitClass = 'UNITCLASS_CAVALRY', Combat = 26, DefaultUnitAI = 'UNITAI_FAST_ATTACK'
WHERE Type = 'UNIT_OTTOMAN_SIPAHI';

UPDATE Units
SET Class = 'UNITCLASS_LANCER', PrereqTech = 'TECH_METALLURGY', ObsoleteTech = 'TECH_MILITARY_SCIENCE', GoodyHutUpgradeUnitClass = 'UNITCLASS_CAVALRY', Combat = 26, DefaultUnitAI = 'UNITAI_FAST_ATTACK'
WHERE Type = 'UNIT_SWEDISH_HAKKAPELIITTA';

UPDATE Units
SET ObsoleteTech = 'TECH_MILITARY_SCIENCE', GoodyHutUpgradeUnitClass = 'UNITCLASS_CAVALRY', DefaultUnitAI = 'UNITAI_FAST_ATTACK'
WHERE Type = 'UNIT_POLISH_WINGED_HUSSAR';*/

--==========================================================================================================================
-- UnitGameplay2DScripts
--==========================================================================================================================
INSERT INTO UnitGameplay2DScripts 	
			(UnitType, 					SelectionSound, FirstSelectionSound)
SELECT		('UNIT_2HANDER'), SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE (UnitType = 'UNIT_SWORDSMAN');

INSERT INTO UnitGameplay2DScripts 	
			(UnitType, 					SelectionSound, FirstSelectionSound)
SELECT		('UNIT_RODELEROS'), SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE (UnitType = 'UNIT_SWORDSMAN');

INSERT INTO UnitGameplay2DScripts 	
			(UnitType, 					SelectionSound, FirstSelectionSound)
SELECT		('UNIT_FREE_COMAPANY'), SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE (UnitType = 'UNIT_PIKEMAN');
--------------------------------
-- Civilization_UnitClassOverrides 
--------------------------------	
DELETE FROM Civilization_UnitClassOverrides WHERE CivilizationType = 'CIVILIZATION_SPAIN' AND UnitType = 'UNIT_SPANISH_TERCIO';
INSERT INTO Civilization_UnitClassOverrides 
			(CivilizationType, 					UnitClassType, 				UnitType)
VALUES		('CIVILIZATION_SPAIN', 			'UNITCLASS_2HANDER', 		'UNIT_RODELEROS');
			
--==========================================================================================================================
-- POUAKAI ENLIGHTENMENT ERA
--==========================================================================================================================

