-- Resource Generator V4.0
-- Author: Deep_Blue
--------------------------------------------------------------
include("ResAmerGenerator.lua")

function PlaceModResources()
    --[[OnMapResourceGenerator("RESOURCE_COFFEE", {"TERRAIN_DESERT", "TERRAIN_TUNDRA", "TERRAIN_SNOW", "FEATURE_OASIS"} );
	OnMapResourceGenerator("RESOURCE_POTATO", {"TERRAIN_DESERT", "TERRAIN_TUNDRA", "TERRAIN_SNOW", "FEATURE_OASIS"} );
	OnMapResourceGenerator("RESOURCE_SOYBEAN", {"TERRAIN_DESERT", "TERRAIN_TUNDRA", "TERRAIN_SNOW", "FEATURE_OASIS"} );]]--
	OnMapResourceGenerator("RESOURCE_FA_TEA", {"FEATURE_FOREST"} );
	OnMapResourceGenerator("RESOURCE_FA_RICE", {"FEATURE_FOREST", "FEATURE_JUNGLE"} );
	OnMapResourceGenerator("RESOURCE_FA_MAIZE", {"FEATURE_FOREST"} );
	OnMapResourceGenerator("RESOURCE_FA_TOBACCO");
	OnMapResourceGenerator("RESOURCE_COPPER2", {"FEATURE_OASIS"});
	OnMapResourceGenerator("RESOURCE_GRANITE", {"FEATURE_OASIS"});
	OnMapResourceGenerator("RESOURCE_SALTPETER", {"FEATURE_OASIS"});
	OnMapResourceGenerator("RESOURCE_PEANUTZ");
	OnMapResourceGenerator("RESOURCE_POTATOEZ");
	OnMapResourceGenerator("RESOURCE_SOYBEANZ");
	OnMapResourceGenerator("RESOURCE_HEMPZ");
	OnMapResourceGenerator("RESOURCE_COFFEEZ");
	OnMapResourceGenerator("RESOURCE_BARLEYZ", {"FEATURE_JUNGLE"} );
	OnMapResourceGenerator("RESOURCE_RASPBERRYZ");
	OnMapResourceGenerator("RESOURCE_MANGOZ");
	OnMapResourceGenerator("RESOURCE_APPLEZ");
	OnMapResourceGenerator("RESOURCE_MAPLEZ");
	OnMapResourceGenerator("RESOURCE_LAVENDERZ");
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