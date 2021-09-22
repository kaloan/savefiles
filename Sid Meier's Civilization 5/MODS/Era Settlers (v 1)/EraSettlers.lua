-----------------------------------
-- EraSettlers.lua
-- Author: Anton Strenger
-- Created: 5/16/2012
-----------------------------------

---------------------------
-- Globals --
---------------------------
g_bLogging = false;

---------------------------
-- Game Events --
---------------------------

function OnCityFounded(iPlayer, iCityX, iCityY)
	local pPlayer = Players[iPlayer];
	if (pPlayer == nil) then return; end

	local pPlot = Map.GetPlot(iCityX, iCityY);
	if (pPlot == nil) then return; end

	local pCity = pPlot:GetPlotCity();
	if (pCity == nil) then return; end

	-- Add free buildings based on our current era
	local iCurrentEra = pPlayer:GetCurrentEra();
	for tBuilding in GameInfo.Buildings() do
		if (IsBuildingFreeInEra(tBuilding, iCurrentEra)) then
			AddBuilding(pCity, tBuilding);
		end
	end

	-- Add extra population based on our current era
	AddPopulation(pCity, GetNumFreeCitizensInEra(iCurrentEra));
end
GameEvents.PlayerCityFounded.Add( OnCityFounded );

---------------------------
-- Buildings --
---------------------------

-- Check game info database to see if we would get this building in an advanced start
function IsBuildingFreeInEra(tBuilding, iEra)
	if (tBuilding == nil) then return false; end
	
	local eFreeStartEra = tBuilding.FreeStartEra;
	if (eFreeStartEra ~= nil) then
		local iFreeStartEra = GameInfo.Eras[eFreeStartEra].ID;
		if (iFreeStartEra <= iEra) then
			-- Assumes that an era's ID is indicative of its order in the game's tech progression
			return true;
		end
	end

	return false;
end

-- Adds the building to the city, if able
function AddBuilding(pCity, tBuilding)
	if (pCity == nil) then return; end
	if (tBuilding == nil) then return; end

	local iOwner = pCity:GetOwner();
	local pOwner = Players[iOwner];
	if (pOwner ~= nil) then
		if (pOwner:CanConstruct(tBuilding.ID)) then -- Still check base game rules such as tech and resource requirements
			if (not pCity:IsHasBuilding(tBuilding.ID)) then
				if (g_bLogging) then print("Adding free building to city: " .. tBuilding.Type); end
				pCity:SetNumRealBuilding(tBuilding.ID, 1);
			end
		end
	end
end

---------------------------
-- Population --
---------------------------

-- Check game info database to see how many free citizens we would get in an advanced start
function GetNumFreeCitizensInEra(iEra)
	local tEra = GameInfo.Eras[iEra];
	if (tEra == nil) then return 0;	end

	local iCitizens = tEra.FreePopulation;
	if (iCitizens == nil) then return 0; end

	return iCitizens;
end

-- Adds population to the city, if able
function AddPopulation(pCity, iPopulation)
	if (pCity == nil) then return; end

	pCity:ChangePopulation(iPopulation, true);
end