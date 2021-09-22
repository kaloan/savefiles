
--Credit to HandyVac for the IN statement idea
--=================================================================================================
--Landsknecht
---------------------------------------------------------------------------------------------------

-- Class
UPDATE Units
SET PrereqTech = 'TECH_RER_LARGEWEAPON', GoodyHutUpgradeUnitClass = 'UNITCLASS_TERCIO'
WHERE Class = 'UNITCLASS_LANDSKNECHT';

--Type
UPDATE Units
SET Combat = Combat + 5, Cost = 60
WHERE Type = 'UNIT_GERMAN_LANDSKNECHT';

--Class Upgrades
UPDATE Unit_ClassUpgrades
SET UnitClassType = 'UNITCLASS_TERCIO'
WHERE UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_LANDSKNECHT');

--Triggers
CREATE TRIGGER C15_LanddudeCheck
AFTER INSERT ON Units
WHEN 'UNITCLASS_LANDSKNECHT' =NEW.Class
BEGIN
	UPDATE Units
	SET PrereqTech = 'TECH_RER_LARGEWEAPON', GoodyHutUpgradeUnitClass = 'UNITCLASS_TERCIO', Combat = Combat + 5, Cost = Cost + 15 --You've got Cost in lower case in GameDefines, FYI
	WHERE Type = NEW.Type;
END;

CREATE TRIGGER C15_Landdude_Upgrade
AFTER INSERT ON Unit_ClassUpgrades
WHEN NEW.UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_LANDSKNECHT')
BEGIN
	UPDATE Unit_ClassUpgrades
	SET UnitClassType = 'UNITCLASS_TERCIO'
	WHERE UnitType = NEW.UnitType;
END;

--=================================================================================================
--=================================================================================================
--Longswordsman
---------------------------------------------------------------------------------------------------

--Class
UPDATE Units
SET ObsoleteTech = 'TECH_RER_LARGEWEAPON', GoodyHutUpgradeUnitClass = 'UNITCLASS_2HANDER'
WHERE (Class = 'UNITCLASS_LONGSWORDSMAN' AND Type != 'UNIT_JAPANESE_SAMURAI');

--Samurai
UPDATE Units
SET GoodyHutUpgradeUnitClass = 'UNITCLASS_2HANDER'
WHERE Type = 'UNIT_JAPANESE_SAMURAI';

--Class Upgrades
UPDATE Unit_ClassUpgrades
SET UnitClassType = 'UNITCLASS_2HANDER'
WHERE UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_LONGSWORDSMAN' AND Type != 'UNIT_JAPANESE_SAMURAI');

--Trigger
CREATE TRIGGER C15_LongswordsmanCheck
AFTER INSERT ON Units
WHEN 'UNITCLASS_LONGSWORDSMAN' =NEW.Class
BEGIN
	UPDATE Units
	SET ObsoleteTech = 'TECH_RER_LARGEWEAPON', GoodyHutUpgradeUnitClass = 'UNITCLASS_2HANDER'
	WHERE Type = NEW.TYPE;
END;

CREATE TRIGGER C15_LSM_Upgrade
AFTER INSERT ON Unit_ClassUpgrades
WHEN NEW.UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_LONGSWORDSMAN')
BEGIN
	UPDATE Unit_ClassUpgrades
	SET UnitClassType = 'UNITCLASS_2HANDER'
	WHERE UnitType = NEW.UnitType;
END;

--=================================================================================================
--=================================================================================================
--Knight
---------------------------------------------------------------------------------------------------

--Class
UPDATE Units
SET ObsoleteTech = 'TECH_METALLURGY', GoodyHutUpgradeUnitClass = 'UNITCLASS_LANCER'
WHERE Class = 'UNITCLASS_KNIGHT';

--Class Upgrades
UPDATE Unit_ClassUpgrades
SET UnitClassType = 'UNITCLASS_LANCER'
WHERE UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_KNIGHT');

--Trigger
CREATE TRIGGER C15_KnightCheck
AFTER INSERT ON Units
WHEN 'UNITCLASS_KNIGHT' =NEW.Class
BEGIN
	UPDATE Units
	SET ObsoleteTech = 'TECH_METALLURGY', GoodyHutUpgradeUnitClass = 'UNITCLASS_LANCER'
	WHERE Type = NEW.Type;
END;

CREATE TRIGGER C15_Knight_Upgrade
AFTER INSERT ON Unit_ClassUpgrades
WHEN NEW.UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_KNIGHT')
BEGIN
UPDATE Unit_ClassUpgrades SET UnitClassType = 'UNITCLASS_LANCER' WHERE UnitType = NEW.UnitType;
END;

--=================================================================================================
--=================================================================================================
--Pikeman
---------------------------------------------------------------------------------------------------

--Class
UPDATE Units
SET ObsoleteTech = 'TECH_RER_PIKE_AND_SHOT', GoodyHutUpgradeUnitClass = 'UNITCLASS_TERCIO'
WHERE Class = 'UNITCLASS_PIKEMAN';

--Class Upgrades
UPDATE Unit_ClassUpgrades
SET UnitClassType = 'UNITCLASS_TERCIO'
WHERE UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_PIKEMAN');

--Trigger
CREATE TRIGGER C15_PikemanCheck
AFTER INSERT ON Units
WHEN 'UNITCLASS_PIKEMAN' =NEW.Class
BEGIN
	UPDATE Units
	SET ObsoleteTech = 'TECH_RER_PIKE_AND_SHOT', GoodyHutUpgradeUnitClass = 'UNITCLASS_TERCIO'
	WHERE Type = NEW.Type;
END;

CREATE TRIGGER C15_Pike_Upgrade
AFTER INSERT ON Unit_ClassUpgrades
WHEN NEW.UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_PIKEMAN')
BEGIN
UPDATE Unit_ClassUpgrades SET UnitClassType = 'UNITCLASS_TERCIO' WHERE UnitType = NEW.UnitType;
END;

--=================================================================================================
--=================================================================================================
--Musketman
---------------------------------------------------------------------------------------------------

--Class
UPDATE Units
SET Cost = Cost - 20, FaithCost = FaithCost - 40, ObsoleteTech = 'TECH_INDUSTRIALIZATION', Combat = Combat - 2, RangedCombat = Combat - 2, Range = 1, CombatClass = 'UNITCOMBAT_ARCHER', DefaultUnitAI = 'UNITAI_RANGED', GoodyHutUpgradeUnitClass = 'UNITCLASS_GATLINGGUN'
WHERE Class = 'UNITCLASS_MUSKETMAN';

--Specific Change
UPDATE Units
SET Strategy = 'TXT_KEY_UNIT_RER_MUSKETMAN_STRATEGY', Help = 'TXT_KEY_UNIT_HELP_RER_MUSKETMAN'
WHERE Type = 'UNIT_MUSKETMAN';

--EE Support
UPDATE Units
SET ObsoleteTech = 'TECH_EE_FLINTLOCK', GoodyHutUpgradeUnitClass = 'UNITCLASS_EE_SKIRMISHER'
WHERE Class = 'UNITCLASS_MUSKETMAN'
AND EXISTS (SELECT * FROM Technologies WHERE Type = 'TECH_EE_FLINTLOCK');

--Class Upgrades
UPDATE Unit_ClassUpgrades
SET UnitClassType = 'UNITCLASS_GATLINGGUN'
WHERE UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_MUSKETMAN');

--EE Class Upgrades
UPDATE Unit_ClassUpgrades
SET UnitClassType = 'UNITCLASS_EE_SKIRMISHER'
WHERE UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_MUSKETMAN')
AND EXISTS (SELECT * FROM Technologies WHERE Type = 'TECH_EE_FLINTLOCK');

--Promotion
INSERT INTO Unit_FreePromotions
		(UnitType,  PromotionType)
SELECT	 Type,		'PROMOTION_ONLY_DEFENSIVE'
FROM Units WHERE Type IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_MUSKETMAN');

--Promotion Fixes
UPDATE Unit_FreePromotions
SET PromotionType = 'PROMOTION_BARRAGE_1'
WHERE PromotionType = 'PROMOTION_DRILL_1' AND UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_MUSKETMAN');

UPDATE Unit_FreePromotions
SET PromotionType = 'PROMOTION_BARRAGE_2'
WHERE PromotionType = 'PROMOTION_DRILL_2' AND UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_MUSKETMAN');

UPDATE Unit_FreePromotions
SET PromotionType = 'PROMOTION_BARRAGE_3'
WHERE PromotionType = 'PROMOTION_DRILL_3' AND UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_MUSKETMAN');

UPDATE Unit_FreePromotions
SET PromotionType = 'PROMOTION_ACCURACY_1'
WHERE PromotionType = 'PROMOTION_SHOCK_1' AND UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_MUSKETMAN');

UPDATE Unit_FreePromotions
SET PromotionType = 'PROMOTION_ACCURACY_2'
WHERE PromotionType = 'PROMOTION_SHOCK_2' AND UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_MUSKETMAN');

UPDATE Unit_FreePromotions
SET PromotionType = 'PROMOTION_ACCURACY_3'
WHERE PromotionType = 'PROMOTION_SHOCK_3' AND UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_MUSKETMAN');

UPDATE Unit_FreePromotions
SET PromotionType = 'PROMOTION_LOGISTICS'
WHERE PromotionType = 'PROMOTION_BLITZ' AND UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_MUSKETMAN');

--Flavours
UPDATE Unit_Flavors
SET Flavor = Flavor - 1
WHERE FlavorType = 'FLAVOR_OFFENSE' AND UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_MUSKETMAN');

UPDATE Unit_Flavors
SET Flavor = Flavor + 1
WHERE FlavorType = 'FLAVOR_DEFENSE' AND UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_MUSKETMAN');

INSERT INTO Unit_Flavors
		(UnitType, 	FlavorType, 	 Flavor)
SELECT	 Type,		'FLAVOR_RANGED', 6
FROM Units WHERE Class = 'UNITCLASS_MUSKETMAN';

--AI Types

DELETE FROM Unit_AITypes WHERE UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_MUSKETMAN');

INSERT INTO Unit_AITypes
		(UnitType, 	UnitAIType)
SELECT	 Type,		'UNITAI_RANGED'
FROM Units WHERE Class = 'UNITCLASS_MUSKETMAN';

--Trigger
CREATE TRIGGER C15_MusketmanCheck
AFTER INSERT ON Units
WHEN 'UNITCLASS_MUSKETMAN' =NEW.Class
BEGIN
	UPDATE Units
	SET Cost = Cost - 20, FaithCost = FaithCost - 40,	RangedCombat = Combat - 2,	Combat = Combat - 2, Range = 1, CombatClass = 'UNITCOMBAT_ARCHER', DefaultUnitAI = 'UNITAI_RANGED', ObsoleteTech = 'TECH_INDUSTRIALIZATION',	GoodyHutUpgradeUnitClass = 'UNITCLASS_GATLINGGUN'
	WHERE Type = NEW.Type;
	
	UPDATE Units
	SET ObsoleteTech = 'TECH_EE_FLINTLOCK', GoodyHutUpgradeUnitClass = 'UNITCLASS_EE_SKIRMISHER'
	WHERE Type = NEW.Type
	AND EXISTS (SELECT * FROM Technologies WHERE Type = 'TECH_EE_FLINTLOCK');
	
	INSERT OR REPLACE INTO Unit_Flavors
			(UnitType,		FlavorType,			Flavor)
	VALUES	(NEW.Type,		'FLAVOR_RANGED',	6);
	
	INSERT OR REPLACE INTO Unit_FreePromotions
			(UnitType,		PromotionType)
	VALUES	(NEW.Type,		'PROMOTION_ONLY_DEFENSIVE');
END;

CREATE TRIGGER C15_Musketman_OffenseFlavor
AFTER INSERT ON Unit_Flavors
WHEN NEW.FlavorType = 'FLAVOR_OFFENSE' AND NEW.UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_MUSKETMAN')
BEGIN
	UPDATE Unit_Flavors
	SET Flavor = Flavor - 1
	WHERE UnitType = NEW.UnitType AND FlavorType = 'FLAVOR_OFFENSE';
END;

CREATE TRIGGER C15_Musketman_DefenseFlavor
AFTER INSERT ON Unit_Flavors
WHEN NEW.FlavorType = 'FLAVOR_DEFENSE' AND NEW.UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_MUSKETMAN')
BEGIN
	UPDATE Unit_Flavors
	SET Flavor = Flavor + 1
	WHERE UnitType = NEW.UnitType AND FlavorType = 'FLAVOR_DEFENSE';
END;

CREATE TRIGGER C15_Musketman_RangeFlavorClearup
BEFORE INSERT ON Unit_Flavors
WHEN NEW.FlavorType = 'FLAVOR_RANGED' AND NEW.UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_MUSKETMAN')
BEGIN
	DELETE FROM Unit_Flavors WHERE UnitType = NEW.UnitType AND FlavorType = 'FLAVOR_RANGED';
END;

CREATE TRIGGER C15_Musketman_PromotionCheck
AFTER INSERT ON Unit_FreePromotions
WHEN NEW.UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_MUSKETMAN') AND NEW.PromotionType IN ('PROMOTION_BLITZ', 'PROMOTION_DRILL_1', 'PROMOTION_DRILL_2', 'PROMOTION_DRILL_3', 'PROMOTION_SHOCK_1', 'PROMOTION_SHOCK_2', 'PROMOTION_SHOCK_3')
BEGIN
	UPDATE Unit_FreePromotions
	SET PromotionType = 'PROMOTION_BARRAGE_1'
	WHERE PromotionType = 'PROMOTION_DRILL_1' AND UnitType = NEW.UnitType;

	UPDATE Unit_FreePromotions
	SET PromotionType = 'PROMOTION_BARRAGE_2'
	WHERE PromotionType = 'PROMOTION_DRILL_2' AND UnitType = NEW.UnitType;

	UPDATE Unit_FreePromotions
	SET PromotionType = 'PROMOTION_BARRAGE_3'
	WHERE PromotionType = 'PROMOTION_DRILL_3' AND UnitType = NEW.UnitType;

	UPDATE Unit_FreePromotions
	SET PromotionType = 'PROMOTION_ACCURACY_1'
	WHERE PromotionType = 'PROMOTION_SHOCK_1' AND UnitType = NEW.UnitType;

	UPDATE Unit_FreePromotions
	SET PromotionType = 'PROMOTION_ACCURACY_2'
	WHERE PromotionType = 'PROMOTION_SHOCK_2' AND UnitType = NEW.UnitType;

	UPDATE Unit_FreePromotions
	SET PromotionType = 'PROMOTION_ACCURACY_3'
	WHERE PromotionType = 'PROMOTION_SHOCK_3' AND UnitType = NEW.UnitType;

	UPDATE Unit_FreePromotions
	SET PromotionType = 'PROMOTION_LOGISTICS'
	WHERE PromotionType = 'PROMOTION_BLITZ' AND UnitType = NEW.UnitType;
END;

CREATE TRIGGER C15_Musketman_DefensiveClearup
BEFORE INSERT ON Unit_FreePromotions
WHEN NEW.UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_MUSKETMAN') AND NEW.PromotionType = 'PROMOTION_ONLY_DEFENSIVE'
BEGIN
	DELETE FROM Unit_FreePromotions WHERE PromotionType = 'PROMOTION_ONLY_DEFENSIVE' AND UnitType = NEW.UnitType;
END;

CREATE TRIGGER C15_Musketman_Upgrade
AFTER INSERT ON Unit_ClassUpgrades
WHEN NEW.UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_MUSKETMAN')
BEGIN
	UPDATE Unit_ClassUpgrades
	SET UnitClassType = 'UNITCLASS_GATLINGGUN'
	WHERE UnitType = NEW.UnitType;
	
	UPDATE Unit_ClassUpgrades
	SET UnitClassType = 'UNITCLASS_EE_SKIRMISHER'
	WHERE UnitType = NEW.UnitType
	AND EXISTS (SELECT * FROM Technologies WHERE Type = 'TECH_EE_FLINTLOCK');
END;

CREATE TRIGGER C15_Musketman_ClassUpdate
AFTER UPDATE OF Class ON Units
WHEN OLD.Class = 'UNITCLASS_MUSKETMAN' AND NEW.Class = 'UNITCLASS_EE_LINE_INFANTRY'
BEGIN
	UPDATE Unit_ClassUpgrades
	SET UnitClassType = 'UNITCLASS_RIFLEMAN'
	WHERE UnitType = OLD.Type;
	
	DELETE FROM Unit_FreePromotions WHERE PromotionType = 'PROMOTION_ONLY_DEFENSIVE';
	
	DELETE FROM Unit_Flavors WHERE UnitType = OLD.Type;
	
	INSERT INTO Unit_Flavors (UnitType,	FlavorType,	Flavor) SELECT OLD.Type, FlavorType, Flavor FROM Unit_Flavors WHERE UnitType = 'UNIT_EE_LINE_INFANTRY';
END;

--=================================================================================================
--=================================================================================================
--Lancer
---------------------------------------------------------------------------------------------------

--Class
UPDATE Units
SET Combat = Combat + 1, GoodyHutUpgradeUnitClass = 'UNITCLASS_CAVALRY', ObsoleteTech = 'TECH_MILITARY_SCIENCE', DefaultUnitAI = 'UNITAI_FAST_ATTACK'
WHERE Class = 'UNITCLASS_LANCER'; 

--EE Class
UPDATE Units
SET Cost = Cost - 35, FaithCost = FaithCost - 70
WHERE Class = 'UNITCLASS_LANCER'
AND EXISTS (SELECT * FROM Technologies WHERE Type = 'TECH_EE_FLINTLOCK');

UPDATE Units
SET GoodyHutUpgradeUnitClass = 'UNITCLASS_EE_CUIRASSIER', ObsoleteTech = 'TECH_EE_IMPERIALISM'
WHERE Class = 'UNITCLASS_LANCER' AND Type != 'UNIT_POLISH_WINGED_HUSSAR'
AND EXISTS (SELECT * FROM Technologies WHERE Type = 'TECH_EE_FLINTLOCK'); --Because Reiter Winged Hussars are better than Curassiers...

UPDATE Units
SET GoodyHutUpgradeUnitClass = 'UNITCLASS_CAVALRY', ObsoleteTech = 'TECH_MILITARY_SCIENCE'
WHERE Type = 'UNIT_POLISH_WINGED_HUSSAR'
AND EXISTS (SELECT * FROM Technologies WHERE Type = 'TECH_EE_FLINTLOCK');

--Type
UPDATE Units
SET UnitArtInfo = 'ART_DEF_UNIT_REITER', UnitFlagAtlas = 'UNIT_FLAG_REITER_ATLAS', UnitFlagIconOffset = 0, PortraitIndex = 2, IconAtlas = 'RER_UNITS_ATLAS', Description = 'TXT_KEY_UNIT_REITER', Strategy = 'TXT_KEY_UNIT_REITER_STRATEGY', Help = 'TXT_KEY_UNIT_HELP_REITER', Civilopedia = 'TXT_KEY_CIV5_REITER_TEXT'
WHERE Type = 'UNIT_LANCER';

--Class Upgrades
UPDATE Unit_ClassUpgrades
SET UnitClassType = 'UNITCLASS_CAVALRY'
WHERE UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_LANCER');

--EE Class Upgrades
UPDATE Unit_ClassUpgrades
SET UnitClassType = 'UNITCLASS_EE_CUIRASSIER'
WHERE UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_LANCER' AND Type != 'UNIT_POLISH_WINGED_HUSSAR')
AND EXISTS (SELECT * FROM Technologies WHERE Type = 'TECH_EE_FLINTLOCK');

/*--Winged Hussar Curiassier skip
UPDATE Unit_ClassUpgrades
SET UnitClassType = 'UNITCLASS_CAVALRY'
WHERE UnitType = 'UNIT_POLISH_WINGED_HUSSAR'
AND EXISTS (SELECT * FROM Technologies WHERE Type = 'TECH_EE_FLINTLOCK'); --Technically unnecessary to put this check in, but there's probably a reason to*/

--Promotion Removal
DELETE FROM Unit_FreePromotions
WHERE PromotionType = 'PROMOTION_FORMATION_1' AND UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_LANCER');

--Trigger
CREATE TRIGGER C15_LancerCheck
AFTER INSERT ON Units
WHEN 'UNITCLASS_LANCER' =NEW.Class
BEGIN
	UPDATE Units
	SET Combat = Combat + 1, GoodyHutUpgradeUnitClass = 'UNITCLASS_CAVALRY', ObsoleteTech = 'TECH_MILITARY_SCIENCE', DefaultUnitAI = 'UNITAI_FAST_ATTACK'
	WHERE Type = NEW.Type;
	
	UPDATE Units
	SET GoodyHutUpgradeUnitClass = 'UNITCLASS_EE_CUIRASSIER', ObsoleteTech = 'TECH_EE_IMPERIALISM', Cost = Cost - 35, FaithCost = FaithCost - 70
	WHERE Type = NEW.Type
	AND EXISTS (SELECT * FROM Technologies WHERE Type = 'TECH_EE_FLINTLOCK');
END;

CREATE TRIGGER C15_Lancer_Promotion
AFTER INSERT ON Unit_FreePromotions
WHEN NEW.UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_LANCER') AND NEW.PromotionType = 'PROMOTION_FORMATION_1'
BEGIN
	DELETE FROM Unit_FreePromotions WHERE UnitType = NEW.UnitType AND PromotionType = 'PROMOTION_FORMATION_1';
END;

CREATE TRIGGER C15_LancerClassCheck
AFTER INSERT ON Unit_ClassUpgrades
WHEN NEW.UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_LANCER')
BEGIN
	UPDATE Unit_ClassUpgrades
	SET UnitClassType = 'UNITCLASS_CAVALRY'
	WHERE UnitType = NEW.UnitType;
	
	UPDATE Unit_ClassUpgrades
	SET UnitClassType = 'UNITCLASS_EE_CUIRASSIER'
	WHERE UnitType = NEW.UnitType
	AND EXISTS (SELECT * FROM Technologies WHERE Type = 'TECH_EE_FLINTLOCK');
END;

--=================================================================================================
--=================================================================================================
--Crossbow
---------------------------------------------------------------------------------------------------

--Class
UPDATE Units
SET ObsoleteTech = 'TECH_RIFLING', GoodyHutUpgradeUnitClass = 'UNITCLASS_MUSKETMAN'
WHERE Class = 'UNITCLASS_CROSSBOWMAN';

--Class Upgrades
UPDATE Unit_ClassUpgrades
SET UnitClassType = 'UNITCLASS_MUSKETMAN'
WHERE UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_CROSSBOWMAN');

--Trigger
CREATE TRIGGER C15_XBowCheck
AFTER INSERT ON Units
WHEN 'UNITCLASS_CROSSBOWMAN' =NEW.Class
BEGIN
	UPDATE Units
	SET ObsoleteTech = 'TECH_RIFLING', GoodyHutUpgradeUnitClass = 'UNITCLASS_MUSKETMAN'
	WHERE Type = NEW.Type;
END;

CREATE TRIGGER C15_XBowUpgrade
AFTER INSERT ON Unit_ClassUpgrades
WHEN NEW.UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_CROSSBOWMAN')
BEGIN
	UPDATE Unit_ClassUpgrades
	SET UnitClassType = 'UNITCLASS_MUSKETMAN'
	WHERE UnitType = NEW.UnitType;
END;

--=================================================================================================