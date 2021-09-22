function ImprovementFromPolicies()
	for playerID = 0, GameDefines.MAX_MAJOR_CIVS - 1 do
		local player = Players[playerID]
		if (player:IsAlive() and player:GetCivilizationType() == GameInfoTypes["CIVILIZATION_USSR"]) then
			if player:HasPolicy(GameInfoTypes["POLICY_TRADITION_FINISHER"]) then
					player:SetHasPolicy(GameInfoTypes["POLICY_DUMMY_LENIN_1"], true)
			end
			if player:HasPolicy(GameInfoTypes["POLICY_LIBERTY_FINISHER"]) then
					player:SetHasPolicy(GameInfoTypes["POLICY_DUMMY_LENIN_2"], true)
			end
			if player:HasPolicy(GameInfoTypes["POLICY_HONOR_FINISHER"]) then
					player:SetHasPolicy(GameInfoTypes["POLICY_DUMMY_LENIN_3"], true)
			end
			if player:HasPolicy(GameInfoTypes["POLICY_PIETY_FINISHER"]) then
					player:SetHasPolicy(GameInfoTypes["POLICY_DUMMY_LENIN_4"], true)
			end
			if player:HasPolicy(GameInfoTypes["POLICY_PATRONAGE_FINISHER"]) then
					player:SetHasPolicy(GameInfoTypes["POLICY_DUMMY_LENIN_5"], true)
			end
			if player:HasPolicy(GameInfoTypes["POLICY_AESTHETICS_FINISHER"]) then
					player:SetHasPolicy(GameInfoTypes["POLICY_DUMMY_LENIN_6"], true)
			end
			if player:HasPolicy(GameInfoTypes["POLICY_COMMERCE_FINISHER"]) then
					player:SetHasPolicy(GameInfoTypes["POLICY_DUMMY_LENIN_7"], true)
			end
			if player:HasPolicy(GameInfoTypes["POLICY_EXPLORATION_FINISHER"]) then
					player:SetHasPolicy(GameInfoTypes["POLICY_DUMMY_LENIN_8"], true)
			end
			if player:HasPolicy(GameInfoTypes["POLICY_RATIONALISM_FINISHER"]) then
					player:SetHasPolicy(GameInfoTypes["POLICY_DUMMY_LENIN_9"], true)
			end
			if player:IsPolicyBranchUnlocked(GameInfoTypes["POLICY_BRANCH_FREEDOM"]) then
					player:SetHasPolicy(GameInfoTypes["POLICY_DUMMY_LENIN_10"], true)
			end
			if player:IsPolicyBranchUnlocked(GameInfoTypes["POLICY_BRANCH_ORDER"]) then
					player:SetHasPolicy(GameInfoTypes["POLICY_DUMMY_LENIN_11"], true)
			end
			if player:IsPolicyBranchUnlocked(GameInfoTypes["POLICY_BRANCH_AUTOCRACY"]) then
					player:SetHasPolicy(GameInfoTypes["POLICY_DUMMY_LENIN_12"], true)
			end
		end
	end 
end
GameEvents.PlayerDoTurn.Add(ImprovementFromPolicies)