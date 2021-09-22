-- Resource Generator V4.0
-- Author: Cryptlc
--------------------------------------------------------------
include("Res_REP_Generator.lua")

function PlaceModResources()
	--OnMapResourceGenerator("RESOURCE_BASSZ");
	--OnMapResourceGenerator("RESOURCE_BLUECRABZ");
	--OnMapResourceGenerator("RESOURCE_BLUEWHALEZ");
	--OnMapResourceGenerator("RESOURCE_CLAMZ");
	--OnMapResourceGenerator("RESOURCE_CORALZ");
	--OnMapResourceGenerator("RESOURCE_DOLPHINZ");
	--OnMapResourceGenerator("RESOURCE_GREATWHITEZ");
	--OnMapResourceGenerator("RESOURCE_GREYWHALEZ");
	--OnMapResourceGenerator("RESOURCE_HUMPBACKWHALEZ");
	--OnMapResourceGenerator("RESOURCE_KINGCRABZ");
	--OnMapResourceGenerator("RESOURCE_LOBSTERZ");
	--OnMapResourceGenerator("RESOURCE_MARLINZ");
	--OnMapResourceGenerator("RESOURCE_OYSTERSZ");
	--OnMapResourceGenerator("RESOURCE_SALMONZ");
	--OnMapResourceGenerator("RESOURCE_SHRIMPZ");
	--OnMapResourceGenerator("RESOURCE_SQUIDZ");
	--OnMapResourceGenerator("RESOURCE_STONECRABZ");
	--OnMapResourceGenerator("RESOURCE_TROPICALFISHZ");
	--OnMapResourceGenerator("RESOURCE_TROUTZ");
	--OnMapResourceGenerator("RESOURCE_TUNAZ");
	--OnMapResourceGenerator("RESOURCE_DIAMONDZ");
	--OnMapResourceGenerator("RESOURCE_RUBYZ");
	--OnMapResourceGenerator("RESOURCE_EMERALDZ");
	--OnMapResourceGenerator("RESOURCE_SAPPHIREZ");
	--OnMapResourceGenerator("RESOURCE_LEADZ");
	--OnMapResourceGenerator("RESOURCE_NICKELZ");
	--OnMapResourceGenerator("RESOURCE_PLATINUMZ");
	--OnMapResourceGenerator("RESOURCE_TITANIUMZ");
	--OnMapResourceGenerator("RESOURCE_MANGANESEZ");
	--OnMapResourceGenerator("RESOURCE_CINNAMONZ");
	--OnMapResourceGenerator("RESOURCE_FRANKINCENSEZ");
	--OnMapResourceGenerator("RESOURCE_GINGERZ");
	
	--OnMapResourceGenerator("RESOURCE_MYRRHZ");
	--OnMapResourceGenerator("RESOURCE_SAFFRONZ");
	--OnMapResourceGenerator("RESOURCE_BIRCHZ");
	--OnMapResourceGenerator("RESOURCE_CEDARZ");
	
	--OnMapResourceGenerator("RESOURCE_OAKZ");
	--OnMapResourceGenerator("RESOURCE_PINEZ");
	--OnMapResourceGenerator("RESOURCE_REDWOODZ");
	--OnMapResourceGenerator("RESOURCE_ALPACAZ");
	--OnMapResourceGenerator("RESOURCE_ANGUSZ");
	--OnMapResourceGenerator("RESOURCE_ELKZ");
	--OnMapResourceGenerator("RESOURCE_HOLSTEINZ");
	--OnMapResourceGenerator("RESOURCE_LONGHORNZ");
	--OnMapResourceGenerator("RESOURCE_MOOSEZ");
	--OnMapResourceGenerator("RESOURCE_PIGZ");
	--OnMapResourceGenerator("RESOURCE_REINDEERZ");
	--OnMapResourceGenerator("RESOURCE_WTAILDEERZ");
	
	--OnMapResourceGenerator("RESOURCE_COCONUTZ");
	--OnMapResourceGenerator("RESOURCE_CRANBERRYZ");
	--OnMapResourceGenerator("RESOURCE_GRAPEZ");
	
	--OnMapResourceGenerator("RESOURCE_ORANGEZ");
	--OnMapResourceGenerator("RESOURCE_PEACHZ");
	--OnMapResourceGenerator("RESOURCE_PINEAPPLEZ");
	--OnMapResourceGenerator("RESOURCE_POMEGRANATEZ");
	
	--OnMapResourceGenerator("RESOURCE_STRAWBERRYZ");
	
	--OnMapResourceGenerator("RESOURCE_COCOAZ");
	
	--OnMapResourceGenerator("RESOURCE_CORNZ");
	
	--OnMapResourceGenerator("RESOURCE_HOPZ");
	--OnMapResourceGenerator("RESOURCE_OATZ");
	OnMapResourceGenerator("RESOURCE_PEANUTZ");
	OnMapResourceGenerator("RESOURCE_POTATOEZ");
	OnMapResourceGenerator("RESOURCE_SOYBEANZ");
	OnMapResourceGenerator("RESOURCE_HEMPZ");
	OnMapResourceGenerator("RESOURCE_COFFEEZ");
	OnMapResourceGenerator("RESOURCE_BARLEYZ");
	OnMapResourceGenerator("RESOURCE_RASPBERRYZ");
	OnMapResourceGenerator("RESOURCE_MANGOZ");
	OnMapResourceGenerator("RESOURCE_APPLEZ");
	OnMapResourceGenerator("RESOURCE_MAPLEZ");
	OnMapResourceGenerator("RESOURCE_LAVENDERZ");
	--OnMapResourceGenerator("RESOURCE_RICEZ");
	
	--OnMapResourceGenerator("RESOURCE_TEAZ");
	--OnMapResourceGenerator("RESOURCE_TOBACCOZ");
end

--[[ 

this function will automatically spread the resource on the map according to:
1) map size
2) number of civilizations in the game
3) Pre-game resource options (sparse,standard,..)
4) defined terrain&feature Booleans in resource xml file.
You can add as many resources as you want, example:
OnMapResourceGenerator("RESOURCE_MyResource1");
OnMapResourceGenerator("RESOURCE_MyResource2");

Advanced Options: 
----------------
you can use additional option with the function:

OnMapResourceGenerator("RESOURCE_MyResource" , Excludes )

Excludes is a table containing any Terrain or feature you do not want, put them in any order but 
they must have exact Type string in Civ5Terrains.xml and Civ5Features.xml otherwise they will be igonred.

Example:

OnMapResourceGenerator("RESOURCE_COPPER" , {"TERRAIN_DESERT", "TERRAIN_PLAINS"} )

--]]