-- Buildings
------------------------------	
INSERT INTO Buildings 	
	(Type, BuildingClass, TrainedFreePromotion, NeverCapture, AllowsRangeStrike, Defense, ExtraCityHitPoints, CityWall, Cost, GoldMaintenance, PrereqTech, ArtDefineTag, XBuiltTriggersIdeologyChoice, SpecialistType, SpecialistCount, MinAreaSize, ConquestProb, HurryCostModifier, Help, Description, Civilopedia, Strategy, IconAtlas, PortraitIndex)
SELECT	'BUILDING_3OTTOBOMB', BuildingClass, 'PROMOTION_VOLLEY', NeverCapture, AllowsRangeStrike, Defense, ExtraCityHitPoints,CityWall,  Cost, GoldMaintenance, 'TECH_GUNPOWDER', ArtDefineTag, XBuiltTriggersIdeologyChoice, SpecialistType, SpecialistCount, MinAreaSize, ConquestProb, HurryCostModifier, 'TXT_KEY_BUILDING_3OTTOBOMB_HELP', 'TXT_KEY_BUILDING_3OTTOBOMB', 'TXT_KEY_BUILDING_3OTTOBOMB_TEXT', 'TXT_KEY_BUILDING_3OTTOBOMB_STRATEGY', '3OTTOBOMB_ATLAS', 0
FROM Buildings WHERE Type = 'BUILDING_ARSENAL';	
------------------------------	
-- Building_Flavors
------------------------------		
INSERT INTO Building_Flavors 	
		(BuildingType, 				FlavorType, Flavor)
SELECT	'BUILDING_3OTTOBOMB',	FlavorType, Flavor
FROM Building_Flavors WHERE BuildingType = 'BUILDING_ARSENAL';

INSERT INTO Building_Flavors 	
		(BuildingType, 				FlavorType, Flavor)
VALUES	('BUILDING_3OTTOBOMB',	'FLAVOR_MILITARY_TRAINING', 25);

------------------------------	
-- Building_YieldChanges
------------------------------		
INSERT INTO Building_YieldChanges 	
		(BuildingType, 				YieldType, Yield)
SELECT	'BUILDING_3OTTOBOMB',	YieldType, Yield
FROM Building_YieldChanges WHERE BuildingType = 'BUILDING_ARSENAL';

------------------------------	
-- Building_DomainProductionModifiers
------------------------------
INSERT INTO Building_DomainProductionModifiers 	
			(BuildingType, DomainType, Modifier)
SELECT	'BUILDING_3OTTOBOMB',	DomainType, Modifier
FROM Building_DomainProductionModifiers WHERE BuildingType = 'BUILDING_ARSENAL';

------------------------------	
-- Building_UnitCombatProductionModifiers
------------------------------
INSERT INTO Building_UnitCombatProductionModifiers 	
			(BuildingType, UnitCombatType, Modifier)
SELECT	'BUILDING_3OTTOBOMB',	 UnitCombatType, Modifier
FROM Building_UnitCombatProductionModifiers WHERE BuildingType = 'BUILDING_ARSENAL';

INSERT INTO Building_UnitCombatProductionModifiers 	
			(BuildingType, UnitCombatType, Modifier)
VALUES	('BUILDING_3OTTOBOMB',	 'UNITCOMBAT_SIEGE', 25);

------------------------------	
-- Building_ResourceQuantityRequirements
------------------------------
INSERT INTO Building_ResourceQuantityRequirements 	
			(BuildingType, ResourceType, Cost)
SELECT 'BUILDING_3OTTOBOMB', ResourceType, Cost
FROM Building_ResourceQuantityRequirements WHERE BuildingType = 'BUILDING_ARSENAL';

------------------------------	
-- Building_YieldModifiers
------------------------------
INSERT INTO Building_YieldModifiers 	
			(BuildingType, YieldType, Yield)
SELECT 'BUILDING_3OTTOBOMB', YieldType, Yield
FROM Building_YieldModifiers WHERE BuildingType = 'BUILDING_ARSENAL';

------------------------------	
-- Building_ResourceYieldChanges
------------------------------
INSERT INTO Building_ResourceYieldChanges 	
			(BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_3OTTOBOMB', ResourceType, YieldType, Yield
FROM Building_ResourceYieldChanges  WHERE BuildingType = 'BUILDING_ARSENAL';

--------------------------------	
-- Civilization_BuildingClassOverrides 
--------------------------------		
INSERT INTO Civilization_BuildingClassOverrides 
		(CivilizationType, 					BuildingClassType, 			BuildingType)
VALUES	('CIVILIZATION_OTTOMAN',	'BUILDINGCLASS_ARSENAL',	'BUILDING_3OTTOBOMB');


