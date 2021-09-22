--==========================================================================================================================
-- CONTRACTS
--==========================================================================================================================
-- JFD_Contracts
-------------------------------------
CREATE TABLE IF NOT EXISTS 
JFD_Contracts (
	ID  											integer 						   primary key autoincrement,
	Type 											text 										default null,
	Category 										text 										default null,
	Description 									text 										default null,
	Adjective 										text 										default null,
	Civilopedia 									text 										default null,
	IconAtlas 										text 										default null,
	PortraitIndex									integer 									default 0,
	PrereqCivilization								text	REFERENCES Civilizations(Type)		default	null,
	PrereqEra										text	REFERENCES Eras(Type)				default	'ERA_ANCIENT',
	PrereqReligion									text	REFERENCES Religions(Type)			default	null,
	PrereqPietyLevel								text										default	null,
	PurchaseDing									text										default	'AS2D_INTERFACE_CITY_SCREEN_PURCHASE',
	ObsoleteEra										text	REFERENCES Eras(Type)				default	null,
	IsSlavery										boolean										default	0,
	Rating											integer 									default 0,
	PromotionType									text	REFERENCES UnitPromotions(Type)		default	null,
	Turns											integer 									default 25,
	YieldCost										text										default	'YIELD_GOLD');
-------------------------------------
-- JFD_Contract_Flavors
-------------------------------------
CREATE TABLE IF NOT EXISTS 
JFD_Contract_Flavors (
	ContractType 									text 										default null,
	FlavorType 										text	REFERENCES Flavors(Type)			default null);
-------------------------------------
-- JFD_Contract_Units
-------------------------------------
CREATE TABLE IF NOT EXISTS 
JFD_Contract_Units (
	ContractType 									text 										default null,
	UnitType 										text	REFERENCES Units(Type)				default null,
	UseUniqueIfAvailable 							boolean										default	0);
-------------------------------------
-- JFD_Contract_UnitClasses
-------------------------------------
CREATE TABLE IF NOT EXISTS 
JFD_Contract_UnitClasses (
	ContractType 									text 										default null,
	CultureType										text 										default null,
	UnitClassType 									text	REFERENCES UnitClasses(Type)		default null,
	UseOnlyCultureType								boolean										default	0);
-------------------------------------
-- JFD_Contract_UnitCombats
-------------------------------------
CREATE TABLE IF NOT EXISTS 
JFD_Contract_UnitCombats (
	ContractType 									text 										default null,
	CultureType										text 										default null,
	UnitCombatType 									text	REFERENCES UnitCombatInfos(Type)	default null,
	UseOnlyCultureType								boolean										default	0);