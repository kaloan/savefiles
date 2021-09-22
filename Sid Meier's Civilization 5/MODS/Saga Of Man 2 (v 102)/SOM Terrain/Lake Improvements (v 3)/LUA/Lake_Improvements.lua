print("Lake Improvements Mod Active")

GameEvents.CityCanConstruct.Add(function(iPlayer, iCity, iBuilding) 
	if iBuilding == GameInfoTypes.BUILDING_LIGHTHOUSE or iBuilding == GameInfoTypes.BUILDING_HARBOR then
		local cityPlot = Players[iPlayer]:GetCityByID(iCity):Plot()

		if (isCoastLine(cityPlot)) then
			-- If the city is on a coastal tile
			return true
		else
			-- Or, if the city is adjacent to a coastal tile which itself is adjacent to a workable water
			for i = 0, 5 do
				local pPlot = Map.PlotDirection(cityPlot:GetX(), cityPlot:GetY(), i)

				if pPlot ~= nil then
					if iPlayer == pPlot:GetOwner() then
						if (isCoastLine(pPlot)) then
							return true
						end
					end
				end
			end
		end

		return false
	end

	--base case
	return true
end)

function isCoastLine(pLandPlot)
	if (pLandPlot ~= nil) then
		local iOwner = pLandPlot:GetOwner()

		for i = 0, 5 do
			local pPlot = Map.PlotDirection(pLandPlot:GetX(), pLandPlot:GetY(), i)

			-- Is the adjacent plot owned by the same player as the land plot
			if pPlot ~= nil then
				if iOwner == pPlot:GetOwner() then
					if pPlot:IsWater() then
						return true
					end
				end
			end
		end
	end

	return false
end

--[[
possible ways to have lake resources improvable
	-cities next to lakes can build work boats
		-have exhausted all XML and Lua possibilities to do this
		-only works with adjacent lakes
	-workers become workboats if they enter a lake
		-no practical way to reverse it as workboats cannot leave lakes
	-workers can build fishing boats
		-embarked units don't have their non-embarked missions, i.e. build mission
]]
GameEvents.UnitSetXY.Add(function(playerID, unitID, x, y)
	local thisUnit = Players[playerID]:GetUnitByID(unitID)
	local thisPlot = Map.GetPlot(x, y)
	
	if thisPlot ~= nil and thisUnit ~= nil then
		--this unit must be a worker and this tile must be a lake
		if thisUnit:GetUnitType() == GameInfoTypes["UNIT_WORKER"] and thisPlot:IsLake() then
			--print("UnitSetXY > " .. playerID .. ", " .. unitID .. ", " .. x .. ", " .. y)
			--print("  Debug: Worker in Lake")
			
			--see if this lake has an unimproved resource in this player's territory
			if traverseLake(thisPlot, playerID, {}) then
			
				--make sure no other workboat is already there.
				--if there is, then this unit will just be embarked. no way to find the tile they came from
				local existing_workboat = false
				if thisPlot:GetNumUnits() > 0 then
					for i = 0, thisPlot:GetNumUnits() - 1 do
						local plotUnit = thisPlot:GetUnit(i)
						if plotUnit ~= nil then
							if plotUnit:GetUnitType() == GameInfoTypes["UNIT_WORKBOAT"] then
								existing_workboat = true
							end
						end
					end
				end
				
				if existing_workboat == false then
					print("Player " .. playerID .. " worker becoming workboat at " .. x .. ", " .. y)
					local workboat = Players[playerID]:InitUnit(GameInfoTypes["UNIT_WORKBOAT"], x, y, UNITAI_WORKER_SEA, thisUnit:GetFacingDirection())
					if workboat ~= nil then
						--print("  Debug: Created Unit")
						--unit had to embark, so it has no moves left
						workboat:SetMoves(0)
						workboat:SetDamage(thisUnit:GetDamage());
						--print("  Debug: Set Attributes")
						thisUnit:Kill(true)
						--print("  Debug: Killed")
					end
					return false --unitID is no longer valid
				end
			end
		end
	else
		return false
	end
	return true
end)

function traverseLake(lakePlot, playerID, lakePlots)
	if (lakePlot ~= nil) then
		--print("Traversing lake at " .. lakePlot:GetX() .. ", " .. lakePlot:GetY())
		
		if lakePlot:IsLake() then
			--make sure it's not a lake tile we've already inspected
			local previousTile = false
			for i = 1, #lakePlots do
				if lakePlots[i] == lakePlot then
					previousTile = true
					break
				end
			end
			
			if previousTile == false then
				--plot is in player territory, has a resource, and doesn't have an improvement or the improvement is pillaged
				if lakePlot:GetOwner() == playerID and lakePlot:GetResourceType(-1) > -1 and (lakePlot:GetImprovementType() == -1 or lakePlot:IsImprovementPillaged()) then
					return true
				else
					--adding this plot to the stack
					table.insert(lakePlots, lakePlot)
					
					for i = 0, 5 do
						local adjPlot = Map.PlotDirection(lakePlot:GetX(), lakePlot:GetY(), i)
						--keep traversing
						if traverseLake(adjPlot, playerID, lakePlots) == true then return true end
					end
				end
			end
		end
	end
	
	--we've looked at this plot and every adjacent lake plot and didn't find an unimproved resource
	return false
end