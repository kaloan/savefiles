--------------------------------------------------------------------------------------------------
--Artdefines
-------------------------------------------------------------------------------------------------- 
INSERT INTO ArtDefine_Landmarks 
(Era,				State,						Scale,	ImprovementType,							LayoutHandler,			ResourceType,							Model,															TerrainContour) VALUES	
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
('Ancient',			'Pillaged',					1,		'ART_DEF_IMPROVEMENT_MINE',					'SNAPSHOT',				'ART_DEF_RESOURCE_LEAD_HEAVY',			'Art/Lead/PL_IND_Mine_Lead_Heavy.fxsxml',						1);
--------------------------------------------------------------------------------------------------
--Font Mapping
-------------------------------------------------------------------------------------------------- 
INSERT INTO IconFontMapping (IconName,	IconFontTexture,					IconMapping) 
SELECT 'ICON_MIN_LEAD',                     'ICON_FONT_TEXTURE_LEAD',          1;		
--------------------------------------------------------------------------------------------------
--Font Textures
-------------------------------------------------------------------------------------------------- 
INSERT INTO IconFontTextures (IconFontTexture,	IconFontTextureFile) 
SELECT 'ICON_FONT_TEXTURE_LEAD',                    'lead-fonticon' ;
--------------------------------------------------------------------------------------------------
--Icon Atlas 
--------------------------------------------------------------------------------------------------
INSERT INTO IconTextureAtlases (Atlas,	IconSize,	IconsPerRow,	IconsPerColumn,	Filename)
SELECT 'REP_RESOURCE_ATLAS_MINERALS',       256,        8,              8,      'MineralIcons256.dds'               UNION ALL
SELECT 'REP_RESOURCE_ATLAS_MINERALS',       80,         8,              8,      'MineralIcons80.dds'                UNION ALL
SELECT 'REP_RESOURCE_ATLAS_MINERALS',       64,         8,              8,      'MineralIcons64.dds'                UNION ALL
SELECT 'REP_RESOURCE_ATLAS_MINERALS',       45,         8,              8,      'MineralIcons45.dds'               ;
