-- CommandoDefense
-- Author: Originally ViceVirtuoso, edited by SpaceCommunist
-- DateCreated: 4/20/1337 11:11:11PM
--------------------------------------------------------------
local iSoviets = GameInfoTypes.CIVILIZATION_USSR
local iPromotion = GameInfoTypes.PROMOTION_WOLFPACK_1
local iRailroad = GameInfoTypes.ROUTE_RAILROAD



function SovietUnitBonus(iPlayer, iUnitID)
	if iPlayer < GameDefines.MAX_MAJOR_CIVS then
		local pPlayer = Players[iPlayer]
		local pUnit = pPlayer:GetUnitByID(iUnitID)
		if pPlayer:GetCivilizationType() == iSoviets then
			local pPlot = pUnit:GetPlot()
			if pPlot:GetRouteType() == iRailroad then
				pUnit:SetHasPromotion(iPromotion, true)
				return
			end
		end
		pUnit:SetHasPromotion(iPromotion, false)
	end
end

GameEvents.UnitSetXY.Add(SovietUnitBonus)