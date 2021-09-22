-- AMER_Main
-- Author: FramedArchitecture
-- DateCreated: 4/21/2013
--------------------------------------------------------------
include( "Add_REP.lua" );

local g_SaveData = Modding.OpenSaveData();
function Initialize()
	local bInit = g_SaveData.GetValue("REP_ResourcesPlaced");
	if not bInit then
		PlaceModResources();
		g_SaveData.SetValue("REP_ResourcesPlaced", true);
	end
end
Initialize();