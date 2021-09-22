-- InfoAddictHooks
-- Author: Rob
-- DateCreated: 7/9/2012 6:33:58 PM
-- Updated for compatibility with EUI: 15/1/2016
--------------------------------------------------------------

include("InfoAddictLib")
logger:setLevel(INFO);
logger:trace("Loading InfoAddictHooks");

-- UI Hooks are set up here upon initialize of the mod. The scroll menu entry is added and
-- then buttons are added to the leader screens.



-- Add an item to the DiploCorner drop down (scroll menu) to access InfoAddict

function OnDiploCornerPopup()
  UIManager:PushModal(MapModData.InfoAddict.InfoAddictScreenContext)
end

function OnAdditionalInformationDropdownGatherEntries(additionalEntries)
  table.insert(additionalEntries, {
    text=Locale.ConvertTextKey("TXT_KEY_INFOADDICT_MAIN_TITLE"),
	art = "DC45_InfoAddict.dds",
    call=OnDiploCornerPopup
  })
end
LuaEvents.AdditionalInformationDropdownGatherEntries.Add(OnAdditionalInformationDropdownGatherEntries)
LuaEvents.RequestRefreshAdditionalInformationDropdownEntries()



-- Set up buttons that will open InfoAddict from other screens. Once the game is done loading,
-- these buttons are moved to the appropriate locations.

function OnInfoAddict()
  local InfoAddictControl = MapModData.InfoAddict.InfoAddictScreenContext;
  UIManager:PushModal(InfoAddictControl);
end;
Controls.IAB_DiploTrade:RegisterCallback( Mouse.eLClick, OnInfoAddict );
Controls.IAB_DiscussLeader:RegisterCallback( Mouse.eLClick, OnInfoAddict );
Controls.IAB_DiscussionDialog:RegisterCallback( Mouse.eLClick, OnInfoAddict );

-- Had to tie this to LoadScreenClose because the LeaderHead contexts are not loaded before
-- mods (or, at least, are not available though LookUpControl)

Events.LoadScreenClose.Add(function()
 
	logger:info("Changing InfoAddict button visibility to LeaderHead contexts")
	-- move buttons as appropriate
	for button, context in pairs{ 
					IAB_DiploTrade = LookUpControl("/LeaderHeadRoot/DiploTrade"),
					IAB_DiscussionDialog = LookUpControl("/LeaderHeadRoot/DiscussionDialog"),
					IAB_DiscussLeader = LookUpControl("/LeaderHeadRoot/DiscussionDialog/DiscussLeader"),
					} do
		if context then
			Controls[button]:ChangeParent( context )
			context:ReprocessAnchoring()
		end
	end
	-- hide any remaining garbage
	ContextPtr:SetHide( true )
end)
