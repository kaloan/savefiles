UPDATE ArtDefine_UnitMemberInfos
SET Model = 'TER_PIKE_piquero.fxsxml'
WHERE Type = 'ART_DEF_UNIT_MEMBER_U_SPANISH_TERCIO_PIQUERO' 
AND EXISTS (SELECT * FROM RER_GlobalUserSettings WHERE Type='RER_TERCIO_ALTERNATE_GRAHPIC' AND Value= 1 );

UPDATE ArtDefine_UnitMemberInfos
SET Model = 'RER_PIKE.fxsxml'
WHERE Type = 'ART_DEF_UNIT_MEMBER_PIKEMAN' 
AND EXISTS (SELECT * FROM RER_GlobalUserSettings WHERE Type='RER_PIKEMAN_ALTERNATE_GRAHPIC' AND Value= 1 );

UPDATE ArtDefine_UnitMemberInfos
SET Model = 'hremm-tc.fxsxml'
WHERE Type = 'ART_DEF_UNIT_MEMBER_MUSKETMAN' 
AND EXISTS (SELECT * FROM RER_GlobalUserSettings WHERE Type='RER_MUSKETMAN_ALTERNATE_GRAHPIC' AND Value= 1 );

UPDATE Units
SET PortraitIndex = 3, IconAtlas = 'RER_UNITS_ATLAS'
WHERE Type = 'UNIT_MUSKETMAN' 
AND EXISTS (SELECT * FROM RER_GlobalUserSettings WHERE Type='RER_MUSKETMAN_ALTERNATE_GRAHPIC' AND Value= 1 );

UPDATE ArtDefine_StrategicView
SET Asset = 'Landsknecht_SV.dds'
WHERE StrategicViewType = 'ART_DEF_UNIT_U_GERMAN_LANDSKNECHT' 
AND EXISTS (SELECT * FROM RER_GlobalUserSettings WHERE Type='RER_LANDSKNECHT_ALTERNATE_FLAG_ICON' AND Value= 1 );

UPDATE Units
SET UnitFlagIconOffset = 0, UnitFlagAtlas = 'RER_UNIT_FLAG_LANDSKNECHT_ATLAS'
WHERE Type = 'UNIT_GERMAN_LANDSKNECHT' 
AND EXISTS (SELECT * FROM RER_GlobalUserSettings WHERE Type='RER_LANDSKNECHT_ALTERNATE_FLAG_ICON' AND Value= 1 );