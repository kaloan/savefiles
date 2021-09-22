-- Building_FreePolicies
-- Author: JFD

function FreePoliciesOnConstruction(playerID, cityID, buildingID)
    local player = Players[playerID]
    local buildingType = GameInfo.Buildings[buildingID].Type
	for row in GameInfo.Building_FreePolicies("BuildingType = '" .. buildingType .. "'") do
		local policyID = GameInfoTypes[row.PolicyType]
		if (not player:HasPolicy(policyID)) then
			player:SetNumFreePolicies(1)
        	player:SetNumFreePolicies(0)
       	 	player:SetHasPolicy(policyID, true)
		end
	end
end
GameEvents.CityConstructed.Add(FreePoliciesOnConstruction)