require('myconfigs')

-- EUR Helpers
--eurEOPUnits = require('eur/eurEOPUnits')
eurEOPUnits_speed = require('eur/eurEOPUnits_speed')
require('eur/eurGlobal')

require('Options')

require('eur/eurKeybinds')

-- Helper for managing persistence of tables across save/load
require('helpers/tableSave')

-- Uncomment to use EOP Helper functions
-- require('helpers/EopLuaHelpers')

-- Uncomment to use external debugger
-- require('helpers/mobdebug').start()

-- Our campaign config table.
campaignConfig = { ["someConfigValue"] = 5 };

-- Fires when loading a save file
function onLoadSaveFile(paths)
    campaignPopup = true;

    for index, path in pairs(paths) do
        if (string.find(path, "configTable.lua"))
        then
            -- Function from helper, load saved table
            campaignConfig = persistence.load(path);
        end
    end
end

-- Fires when creating a save file
-- Returns a list of M2TWEOP save files
function onCreateSaveFile()
    local savefiles = {};
    currentPath = M2TWEOP.getPluginPath();

    -- Function from helper, save our table
    persistence.store(currentPath .. "configTable.lua", campaignConfig);

    savefiles[1] = currentPath .. "configTable.lua";
    return savefiles;
end

-- Fires when the plugin is first loaded at game start or restarted with restartLua()
function onPluginLoad()
    M2TWEOP.unlockGameConsoleCommands();
    -- UNCOMMENT TO ENABLE BELOW SETTINGS
    M2TWEOP.setAncillariesLimit(16);
    M2TWEOP.setMaxBgSize(60);
    -- M2TWEOP.setReligionsLimit(50);
    M2TWEOP.setBuildingChainLimit(15);
    M2TWEOP.setEDUUnitsSize(1,300);
    M2TWEOP.setGuildCooldown(5);
end


--- Called after loading the campaign map
function onCampaignMapLoaded() 
    modPath = M2TWEOP.getModPath();
    GAME_DATA = gameDataAll.get()
    CAMPAIGN = GAME_DATA.campaignStruct
    STRAT_MAP = GAME_DATA.stratMap
    BATTLE = GAME_DATA.battleStruct
    UI_MANAGER = GAME_DATA.uiCardManager
    
    in_campaign_map = true


end

function onUnloadCampaign()
    in_campaign_map = false
end


--- Called every time an image is rendered for display
---@param pDevice LPDIRECT3DDEVICE9 
function draw(pDevice) 
    waitingFuncsTick()
    if (ImGui.IsKeyPressed(ImGuiKey.GraveAccent))
    and (ImGui.IsKeyDown(ImGuiKey.LeftCtrl))
    then
        M2TWEOP.toggleConsole()
    elseif (ImGui.IsKeyPressed(ImGuiKey.GraveAccent))
    and (ImGui.IsKeyDown(ImGuiKey.LeftAlt))
    then
        M2TWEOP.toggleDeveloperMode()
    end
    if (ImGui.IsKeyPressed(ImGuiKey.X)) then
        tacticalViewUp()
    elseif (ImGui.IsKeyPressed(ImGuiKey.Z)) then
        tacticalViewDown()
    elseif (ImGui.IsKeyPressed(ImGuiKey.Q)) 
    and (ImGui.IsKeyDown(ImGuiKey.LeftCtrl)) then
        BMapHighlight()
end
end

---Called after the game loads to menu.
function onReadGameDbsAtStart()
    eurEOPUnits_speed.populateEDU()
end

function onGameInit()
    eurEOPUnits_speed.populateEDB()
end 

-- EUR Overrides, for compatibility - GOES AT END
require('eur/eurOverrides')