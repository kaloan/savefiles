

-- Change free tech at game start from Agriculture to Language

UPDATE Civilization_FreeTechs
SET TechType='TECH_TOOLS'
WHERE TechType='TECH_AGRICULTURE';


-- Moves the whole Tech Tree 3 spaces to the right, except for Prehistorical Techs
-- (only works if this sql is above the Technologies.xml in the actions list!)

--UPDATE Technologies
--SET GridX = GridX + 4;