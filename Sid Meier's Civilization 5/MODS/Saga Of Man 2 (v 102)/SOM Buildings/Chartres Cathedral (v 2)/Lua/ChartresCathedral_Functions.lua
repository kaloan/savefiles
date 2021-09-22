-- ChartresCathedral_Functions
-- Author: Sukritact
--=======================================================================================================================

print("loaded")
include("IconSupport")

--=======================================================================================================================
-- Initial Defines
--=======================================================================================================================
local iWonder = GameInfoTypes.BUILDING_CHARTRES
local iDummy = GameInfoTypes.BUILDING_CHARTRES_DUMMY

local sTitle = "[COLOR_POSITIVE_TEXT]" .. string.upper(Locale.ConvertTextKey("TXT_KEY_BUILDING_CHARTRES")) .. "[ENDCOLOR]"
local sNoFaith = Locale.ConvertTextKey("TXT_KEY_WONDER_CHARTRES_NO_FAITH_YIELDING_ROUTES")
local sInfo = Locale.ConvertTextKey("TXT_KEY_WONDER_CHARTRES_INFO")
local sSection = "[NEWLINE]----------------"

local iMod = 0.1

MW_ChartresCathedral_Tooltip = {}
TTManager:GetTypeControlTable("MW_ChartresCathedral_Tooltip", MW_ChartresCathedral_Tooltip)
--=======================================================================================================================
-- Pedia Callback: Adapted from EUI
--=======================================================================================================================
CivilopediaControl = "/FrontEnd/MainMenu/Other/Civilopedia"
local getPedia

local function getPediaB(...)
	Events.SearchForPediaEntry(...)
end
local function getPediaA(...)
	UIManager:QueuePopup(LookUpControl(CivilopediaControl), PopupPriority.eUtmost)
	getPedia = getPediaB
	getPedia(...)
end

getPedia = CivilopediaControl and getPediaA
--=======================================================================================================================
-- Core Functions: Chartres Cathedral
--=======================================================================================================================
function GetTradeRoutesToCity(pCity)

	local tCities = {}

	local iPlayer = pCity:GetOwner()
	local pPlayer = Players[iPlayer]

	-- Domestic Trade Routes
	local tTradeRoutes = pPlayer:GetTradeRoutes()
	for iKey, tRoute in ipairs(tTradeRoutes) do
		if (tRoute.ToCity == pCity) then
			local pFromCity = tRoute.FromCity
			tCities[pFromCity] = true
		end
	end
	
	-- International Trade Routes
	local tTradeRoutes = pPlayer:GetTradeRoutesToYou()
	for iKey, tRoute in ipairs(tTradeRoutes) do
		if (tRoute.ToCity == pCity) then
			local pFromCity = tRoute.FromCity
			tCities[pFromCity] = true
		end
	end	
	
	return tCities
end

function GetFaithFromCities(tCities)
	local iFaith = 0
	for pCity, _ in pairs(tCities) do
		if pCity:GetFaithPerTurn() > 0 then
			iFaith = iFaith + pCity:GetFaithPerTurn() * iMod
		end
	end
	return math.ceil(iFaith)
end

function SetChartesDummy(pCity)
	-- City has Chartres Cathedral
	if pCity:IsHasBuilding(iWonder) then
		local tCities = GetTradeRoutesToCity(pCity)
		local iFaith = GetFaithFromCities(tCities)
		
		if pCity:GetNumRealBuilding(iDummy) ~= iFaith then
			pCity:SetNumRealBuilding(iDummy, iFaith)
		end
		
	-- City has Chartres Dummies but not Chartres Cathedral
	elseif pCity:IsHasBuilding(iDummy) then
		pCity:SetNumRealBuilding(iDummy, 0)
	end
end

function SerialEventGameDataDirty()
	local pPlayer = Players[Game.GetActivePlayer()]
	for	pCity in pPlayer:Cities() do
		SetChartesDummy(pCity)
	end
end
Events.SerialEventGameDataDirty.Add(SerialEventGameDataDirty)

function PlayerDoTurn(iPlayer)
	local pPlayer = Players[iPlayer]
	for	pCity in pPlayer:Cities() do
		SetChartesDummy(pCity)
	end
end
GameEvents.PlayerDoTurn.Add(PlayerDoTurn)
--=======================================================================================================================
-- UI Functions: Chartres Cathedral
--=======================================================================================================================
-- Sukritact's Modular City Info Stack Support
-------------------------------------------------------------------------------------------------------------------------
function CityInfoStackDataRefresh(tCityInfoAddins, tEventsToHook)
	table.insert(tCityInfoAddins, {["Key"] = "MW_ChartresCathedral", ["SortOrder"] = 2})
end
LuaEvents.CityInfoStackDataRefresh.Add(CityInfoStackDataRefresh)
LuaEvents.RequestCityInfoStackDataRefresh()

function CityInfoStackDirty(sKey, pInstance)
	if sKey ~= "MW_ChartresCathedral" then return end
	
	-- Ensure City Selected
	local pCity = UI.GetHeadSelectedCity()
	if not(pCity) then
		pInstance.IconFrame:SetHide(true)
		return
	end
	
	-- Ensure City Has Chartres Cathedral
	if not(pCity:IsHasBuilding(iWonder)) then
		pInstance.IconFrame:SetHide(true)
		return
	end
	
	SetChartesDummy(pCity)
	
	local iFaith = 0
	local tCities = GetTradeRoutesToCity(pCity)
	local sCitiesString = ""
	for pCity, _ in pairs(tCities) do
		local iFaithThisCity = pCity:GetFaithPerTurn() * iMod
		if iFaithThisCity > 0 then
			iFaith = iFaith + iFaithThisCity
			sCitiesString = sCitiesString .. Locale.ConvertTextKey("TXT_KEY_WONDER_CHARTRES_PER_CITY", iFaithThisCity, pCity:GetName())
		end
	end
	local sFaithTotal = Locale.ConvertTextKey("TXT_KEY_WONDER_CHARTRES_TOTAL", math.ceil(iFaith), iFaith)
	if sCitiesString == "" then
		sCitiesString = sNoFaith
	end
	
	IconHookup(0, 64, "BW_ATLAS_CHARTRES", pInstance.IconImage)
	pInstance.IconFrame:RegisterCallback(Mouse.eRClick, function() getPedia("TXT_KEY_BUILDING_CHARTRES") end)
	pInstance.IconFrame:SetToolTipType("MW_ChartresCathedral_Tooltip")
	
	local sBody = sInfo .. sSection .. sCitiesString .. sSection .. sFaithTotal
	
	MW_ChartresCathedral_Tooltip.Heading:SetText(sTitle)
	MW_ChartresCathedral_Tooltip.Body:SetText(sBody)
	MW_ChartresCathedral_Tooltip.Box:DoAutoSize()
end
LuaEvents.CityInfoStackDirty.Add(CityInfoStackDirty)
--=======================================================================================================================
--=======================================================================================================================