--==========================================================================================================================
-- USER SETTINGS
--==========================================================================================================================
-- RER_GlobalUserSettings
------------------------------------------------------------
CREATE TABLE IF NOT EXISTS 
RER_GlobalUserSettings (
	Type 											text 										default null,
	Value 											integer 									default 1);
--==========================================================================================================================	
-- USER SETTINGS
--==========================================================================================================================	
-- Modular Features that can be toggled on and off and then back on.
--------------------------------------------------------------------------
/*
  1 = Enabled (Default)
  0 = Disabled
*/
--------------------------------------------------------------------------
INSERT INTO RER_GlobalUserSettings
		(Type,														Value)
VALUES	('RER_PIKEMAN_ALTERNATE_GRAHPIC',							1), -- Pikeman alternate graphic.
		('RER_MUSKETMAN_ALTERNATE_GRAHPIC',				1), -- Musketman alternate graphic.
		('RER_TERCIO_ALTERNATE_GRAHPIC',				1), -- Tercio alternate graphic.
		('RER_LANDSKNECHT_ALTERNATE_FLAG_ICON',				1); -- Landsknecht alternate flag icon.


