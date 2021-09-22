-- BuildingYieldFromGreatWorksInBuilding
-- Author: Sukritact
--------------------------------------------------------------

print("loaded")

include( "SaveUtils" ); MY_MOD_NAME = "BuildingYieldFromGreatWorksInBuilding";

function BuildingYieldFromGreatWorksInBuilding(iPlayer)
	local pPlayer = Players[iPlayer];
	for row in GameInfo.Building_YieldFromGreatWorksInBuilding() do
		local iBuilding = GameInfo.Buildings[row.BuildingType].ID
		strName = GameInfo.Buildings[iBuilding].Description
		local iYield = YieldTypes[row.YieldType]
		local iDeltaModifier = row.Yield
		for pCity in pPlayer:Cities() do
			local iCity = pCity:GetID()
			local strCityName = pCity:GetName()
			local strBuildingClass = GameInfo.Buildings[iBuilding].BuildingClass
			local iBuildingClass = GameInfo.BuildingClasses[strBuildingClass].ID
			local iGreatWorksNum = pCity:GetNumGreatWorksInBuilding(iBuildingClass)
			local iDelta = (iGreatWorksNum*iDeltaModifier)
			--print (iCity .. strCityName .. iGreatWorksNum)
			if pCity:IsHasBuilding(iBuilding) then
			--print("Building: " .. strName .. " exists in city: " .. strCityName)
				if iYield == 4 then
					local iOldDelta = load( pPlayer, iCity .. "B" .. iBuilding .. "Y" .. 4)
					--print (iYield .. "NUM" .. tostring(iOldDelta))
					save( pPlayer, iCity .. "B" .. iBuilding .. "Y" .. 4, iDelta)
					if iOldDelta == nil then
						pCity:ChangeJONSCulturePerTurnFromBuildings(iDelta)
					else
						pCity:ChangeJONSCulturePerTurnFromBuildings(iDelta - iOldDelta)
					end
				elseif iYield == 5 then
					if IsTurnStart == true then
						pPlayer:ChangeFaith(iDelta)
					--else
						--print ("Not Turn Start")
					end
				else
					local iOldDelta = load( pPlayer, iCity .. "B" .. iBuilding .. "Y" .. iYield)
					--print (iYield .. "NUM" .. tostring(iOldDelta))
					save (pPlayer, iCity .. "B" .. iBuilding .. "Y" .. iYield, iDelta)
					if iOldDelta == nil then
						pCity:ChangeBaseYieldRateFromBuildings(iYield, iDelta)
					else
						pCity:ChangeBaseYieldRateFromBuildings(iYield, iDelta - iOldDelta)
					end
				end
				
			-- Clear data if Building does not exist --
			
			else
				--print("Building: " .. strName .. " does not exist in city: " .. strCityName)
				if iYield == 4 then
					local iOldDelta = load( pPlayer, iCity .. "B" .. iBuilding .. "Y" .. 4)
					if iOldDelta == nil then
						--print("Never existed")
					elseif iOldDelta > 0 then
						save (pPlayer, iCity .. "B" .. iBuilding .. "Y" .. 4, 0)
						pCity:ChangeJONSCulturePerTurnFromBuildings(-iOldDelta)
						--print("Data Cleared")
					end
				elseif iYield == 5 then
					--print("Faith = Nil")
				else
					local iOldDelta = load( pPlayer, iCity .. "B" .. iBuilding .. "Y" .. iYield)
					if iOldDelta == nil then
						--print("Never existed")
					elseif iOldDelta > 0 then
						save (pPlayer, iCity .. "B" .. iBuilding .. "Y" .. iYield, 0)
						pCity:ChangeBaseYieldRateFromBuildings(iYield, -iOldDelta)
						--print("Data Cleared")
					end
				end
			end
		end	
	end
end

-- End of Main Code --

function BuildingYieldFromGreatWorksInBuildingFaith(iPlayer)
	IsTurnStart = true
	BuildingYieldFromGreatWorksInBuilding(iPlayer)
	IsTurnStart = false
end

function BuildingYieldFromGreatWorksInBuildingSwap()
	local iPlayer = Game.GetActivePlayer()
	IsTurnStart = false
	BuildingYieldFromGreatWorksInBuilding(iPlayer)
end

GameEvents.PlayerDoTurn.Add(BuildingYieldFromGreatWorksInBuildingFaith)
Events.SerialEventCityInfoDirty.Add(BuildingYieldFromGreatWorksInBuildingSwap)