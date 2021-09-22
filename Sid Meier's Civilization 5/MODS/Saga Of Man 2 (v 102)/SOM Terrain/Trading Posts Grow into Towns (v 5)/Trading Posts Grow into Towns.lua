local Outdoor_Market = GameInfoTypes["IMPROVEMENT_OUTDOOR_MARKET"]			--29
local Trading_Post = GameInfoTypes["IMPROVEMENT_TRADING_POST"]				--6
local Village = GameInfoTypes["IMPROVEMENT_VILLAGE"]						--30
local Village_Prod_Dummy = GameInfoTypes["IMPROVEMENT_VILLAGE_PROD_DUMMY"]  --31
local Town = GameInfoTypes["IMPROVEMENT_TOWN"]								--32

local RenaissanceEra = GameInfo.Eras["ERA_RENAISSANCE"]
local IndustrialEra = GameInfo.Eras["ERA_INDUSTRIAL"]
local ModernEra = GameInfo.Eras["ERA_MODERN"]

local width, height = Map.GetGridSize()
local terrainTundra = GameInfoTypes.TERRAIN_TUNDRA
local featureForest = GameInfoTypes.FEATURE_FOREST
local terrainDesert = GameInfoTypes.TERRAIN_DESERT
local featureFloodPlains = GameInfoTypes.FEATURE_FLOOD_PLAINS
local plotHills = PlotTypes.PLOT_HILLS
local featureJungle = GameInfoTypes.FEATURE_JUNGLE
local featureMarsh = GameInfoTypes.FEATURE_MARSH

--0 is Marathon 300%, 1 is Epic 150%, 2 is Standard 100%, and 3 is Quick 66%
local iGameSpeed = GameInfo.GameSpeeds[Game.GetGameSpeedType()].GrowthPercent / 100
local Outdoor_Market_Threshold = 5 * iGameSpeed
--print("Outdoor_Market_Threshold: " .. Outdoor_Market_Threshold)
local Trading_Post_Threshold = 7 * iGameSpeed
--print("Trading_Post_Threshold: " .. Trading_Post_Threshold)
local Village_Threshold = 10 * iGameSpeed
--print("Village_Threshold: " .. Village_Threshold)

local MapTable = {}
--[[
Master table with plot coords as keys whose values are structures containing the plot's data: which imp is here --
5 possibilites -- and its current counter value
]]

function UpgradeOutdoorMarkets(plot, pPlayer)
	if plot:GetImprovementType() == Outdoor_Market then
		--print("Has Outdoor Market")
		if MapTable[plot] == nil then --Only initialize when it's a new one
			MapTable[plot] = {type = Outdoor_Market, counter = 0}
			--print("It is new")
		end 
			if RenaissanceEra.ID <= pPlayer:GetCurrentEra() then
				--print("The Renaissance Era already began")
				if not plot:IsImprovementPillaged() then
					--print("Is not pillaged")
					if plot:IsBeingWorked() then
						--print("Is being worked")
						--print("Before interation " .. MapTable[plot].counter)
						MapTable[plot].counter = MapTable[plot].counter + 1
						--print("After interation " .. MapTable[plot].counter)
						if MapTable[plot].counter >= Outdoor_Market_Threshold then
							plot:SetImprovementType(Trading_Post)
							MapTable[plot].type = Trading_Post
							MapTable[plot].counter = -1
							--print("Now has improvement #" .. Trading_Post)
							--print("Counter: " .. MapTable[plot].counter)
						end
					end
				end
			end 
	elseif MapTable[plot] ~= nil and MapTable[plot].type == Outdoor_Market then
		--print("No longer has Outdoor Market")
		MapTable[plot].type = nil
		MapTable[plot].counter = nil
		MapTable[plot] = nil
	end
end

function IsValidForVillage(plot)
	if (plot:GetTerrainType() == terrainTundra and plot:GetFeatureType() ~= featureForest) then
		--print("Not Taiga")
		return false
	elseif (plot:GetTerrainType() == terrainDesert and plot:GetFeatureType() ~= featureFloodPlains) then
		--print("Not Desert with Flood Plains")
		return false
	else
		--print("Valid for Village")
		return true
	end
end

function UpgradeTradingPosts(plot, pPlayer)
	if plot:GetImprovementType() == Trading_Post then
		--print("Has Trading Post")
		if MapTable[plot] == nil then --Only initialize when it's a new one
			MapTable[plot] = {type = Trading_Post, counter = 0}
			--print("It is new")
		end 
			if IndustrialEra.ID <= pPlayer:GetCurrentEra() then
				--print("The Industrial Era already began")
				if not plot:IsImprovementPillaged() then
					--print("Is not pillaged")
					if plot:IsBeingWorked() then
						--print("Is being worked")
						if IsValidForVillage(plot) then
							--print("Before interation " .. MapTable[plot].counter)
							MapTable[plot].counter = MapTable[plot].counter + 1
							--print("After interation " .. MapTable[plot].counter)
							if MapTable[plot].counter >= Trading_Post_Threshold then
								if plot:GetPlotType() == plotHills then
									plot:SetImprovementType(Village_Prod_Dummy)
									MapTable[plot].type = Village_Prod_Dummy
									MapTable[plot].counter = -1
									--print("Now has improvement #" .. Village_Prod_Dummy)
									--print("Counter: " .. MapTable[plot].counter)
								else
									plot:SetImprovementType(Village)
									MapTable[plot].type = Village
									MapTable[plot].counter = -1
									--print("Now has improvement #" .. Village)
									--print("Counter: " .. MapTable[plot].counter)
								end
							end
						end
					end
				end
			end 
	elseif MapTable[plot] ~= nil and MapTable[plot].type == Trading_Post then
		--print("No longer has Trading Post")
		MapTable[plot].type = nil
		MapTable[plot].counter = nil
		MapTable[plot] = nil
	end
end

function UpgradeVillages(plot, pPlayer)
	if (plot:GetImprovementType() == Village or plot:GetImprovementType() == Village_Prod_Dummy) then
		--print("Has Village")
		if MapTable[plot] == nil then --Only initialize when it's a new one
			MapTable[plot] = {type = Village, counter = 0}
			--print("It is new")
		end 
			if ModernEra.ID <= pPlayer:GetCurrentEra() then
				--print("The Modern Era already began")
				if not plot:IsImprovementPillaged() then
					--print("Is not pillaged")
					if plot:IsBeingWorked() then
						--print("Is being worked")
						if plot:GetFeatureType() ~= featureJungle then
							--print("Not Jungle")
							if plot:GetFeatureType() ~= featureMarsh then
								--print("Not Marsh")
								--print("Valid for Town")
								--print("Before interation " .. MapTable[plot].counter)
								MapTable[plot].counter = MapTable[plot].counter + 1
								--print("After interation " .. MapTable[plot].counter)
								if MapTable[plot].counter >= Village_Threshold then
									plot:SetImprovementType(Town)
									MapTable[plot].type = Town
									MapTable[plot].counter = -1
									--print("Now has improvement #" .. Town)
									--print("Counter: " .. MapTable[plot].counter)
								end
							end
						end
					end
				end
			end 
	elseif MapTable[plot] ~= nil and (MapTable[plot].type == Village or MapTable[plot].type == Village_Prod_Dummy) then
		--print("No longer has Village")
		MapTable[plot].type = nil
		MapTable[plot].counter = nil
		MapTable[plot] = nil
	end
end

function DowngradePosts(plot)
	if plot:GetImprovementType() == Village and (not IsValidForVillage(plot)) then
		plot:SetImprovementType(Trading_Post)
		MapTable[plot].type = Trading_Post
		MapTable[plot].counter = -1
		--print("Now has improvement #" .. Trading_Post)
		--print("Counter: " .. MapTable[plot].counter)
	elseif plot:GetImprovementType() == Town and (not IsValidForVillage(plot)) then
		plot:SetImprovementType(Village)
		MapTable[plot].type = Village
		MapTable[plot].counter = -1
		--print("Now has improvement #" .. Village)
		--print("Counter: " .. MapTable[plot].counter)
	end
end

function UpgradePosts(PlayerID)
	local pPlayer = Players[PlayerID]

	--print("-----------------------------------------------------------------------------")
	--print(pPlayer:GetName() .. "'s turn")

	for y = 0, height-1 do --loop through the whole map
		for x = 0, width-1 do
			local plot = Map.GetPlot(x, y)
			if Players[plot:GetOwner()] == pPlayer then
				UpgradeOutdoorMarkets(plot, pPlayer)
				UpgradeTradingPosts(plot, pPlayer)
				UpgradeVillages(plot, pPlayer)
				DowngradePosts(plot)
			end
		end
	end	
end
GameEvents.PlayerDoTurn.Add(UpgradePosts) 