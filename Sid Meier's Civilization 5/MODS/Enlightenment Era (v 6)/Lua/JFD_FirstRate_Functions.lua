-- EE_GreatBritain_Functions
-- Author: JFD
-- DateCreated: 6/23/2014 2:36:23 PM
--==========================================================================================================================
-- INCLUDES
--==========================================================================================================================
include("PlotIterators.lua")
--==========================================================================================================================
-- UTILITY FUNCTIONS
--==========================================================================================================================
-- MOD CHECKS
--------------------------------------------------------------------------------------------------------------------------
-- EE_IsCivilisationActive
function EE_IsCivilisationActive(civilizationID)
	for iSlot = 0, GameDefines.MAX_MAJOR_CIVS-1, 1 do
		local slotStatus = PreGame.GetSlotStatus(iSlot)
		if (slotStatus == SlotStatus["SS_TAKEN"] or slotStatus == SlotStatus["SS_COMPUTER"]) then
			if PreGame.GetCivilization(iSlot) == civilizationID then
				return true
			end
		end
	end
	return false
end

-- EE_IsUsingCPDLL
function EE_IsUsingCPDLL()
	local cPDLLID = "d1b6328c-ff44-4b0d-aad7-c657f83610cd"
	for _, mod in pairs(Modding.GetActivatedMods()) do
		if (mod.ID == cPDLLID) then
			return true
		end
	end
	return false
end
local isUsingCPDLL = EE_IsUsingCPDLL()
--==========================================================================================================================
-- UNITS
--==========================================================================================================================
-- FIRST RATE
--------------------------------------------------------------------------------------------------------------------------
-- EE_FirstRate
local domainSeaID = GameInfoTypes["DOMAIN_SEA"]
local unitPromotionFirstRateID = GameInfoTypes["PROMOTION_EE_FIRST_RATE"]
local unitPromotionFirstRateDefenseID = GameInfoTypes["PROMOTION_EE_FIRST_RATE_DEFENSE"]
function EE_FirstRate(playerID)
	local player = Players[playerID]
	if (player:IsAlive() and (not player:IsBarbarian()) and (not player:IsMinorCiv())) then
		for unit in player:Units() do
			local isAdjacentFirstRate = false
			if (unit:IsEmbarked() or unit:GetDomainType() == domainSeaID) then
				local unitPlot = unit:GetPlot()
				if isUsingCPDLL then
					isAdjacentFirstRate = unit:IsAdjacentToUnitPromotion(unitPromotionFirstRateID, true, false)
				else
					for adjacentPlot in PlotAreaSweepIterator(unitPlot, 1, SECTOR_NORTH, DIRECTION_CLOCKWISE, DIRECTION_OUTWARDS, CENTRE_EXCLUDE) do
						isAdjacentFirstRate = (adjacentPlot:GetUnit() and adjacentPlot:GetUnit():IsHasPromotion(unitPromotionFirstRateID)) or false
						if isAdjacentFirstRate == true then 
							break
						end
					end
				end
			end
			if isAdjacentFirstRate then
				if (not unit:IsHasPromotion(unitPromotionFirstRateDefenseID)) then
					unit:SetHasPromotion(unitPromotionFirstRateDefenseID, true)
				end
			else
				if unit:IsHasPromotion(unitPromotionFirstRateDefenseID) then
					unit:SetHasPromotion(unitPromotionFirstRateDefenseID, false)
				end
			end
		end
	end
end
GameEvents.PlayerDoTurn.Add(EE_FirstRate)
--==========================================================================================================================
--==========================================================================================================================