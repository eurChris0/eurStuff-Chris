---@diagnostic disable: lowercase-global

-- Uncomment to use VSCode Lua Debugger
-- json = require "helpers/dkjson"
--local mobdebug = require "helpers/mobdebug"
--mobdebug.start('127.0.0.1', 8818)

dev_enabled = true
eur_main_scripts = true

if dev_enabled then
    require('eur/chrisDev')
end

eurEOPUnits = require('eur/eurEOPUnits')
--eurEOPUnits_speed = require('eur/eurEOPUnits_speed')

if eur_main_scripts then
    require('helpers/EopLuaHelpers')

    -- EUR Helpers
    require('eur/eurGlobal')
    require('eur/eurKeybinds')

    require('eur/eurLoaded')

    require('eur/eurOptions')

    require('eur/eurUnitUpgrades')
    require('eur/eurEvents')
    require('eur/eurPreBattleOptions')
    require('eur/eurGeneralBGSwap')
    require('eur/eurLeaderHeirSwap')
    require('eur/eurRuins')

    -- Helper for managing persistence of tables across save/load
    require('helpers/tableSave')

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
            if (string.find(path, "eurEventsData.lua"))
            then
            --function from helper, load saved table
            eurEventsData = persistence.load(path);
            if eurEventsData then
                eurSaveLoadValues(false)
            end
            end
        end
        wait(eurGlobalVars, 0.5)
    end

    -- Fires when creating a save file
    -- Returns a list of M2TWEOP save files
    function onCreateSaveFile()
        local savefiles = {};
        currentPath = M2TWEOP.getPluginPath();

        -- Function from helper, save our table
        persistence.store(currentPath .. "configTable.lua", campaignConfig);

        savefiles[1] = currentPath .. "configTable.lua";

        eurSaveLoadValues(true)
        persistence.store(currentPath.."eurEventsData.lua",eurEventsData);
        savefiles[2]=currentPath.."eurEventsData.lua";

        return savefiles;
    end
end

-- Fires when the plugin is first loaded at game start or restarted with restartLua()
function onPluginLoad()
    --M2TWEOP.unlockGameConsoleCommands();
    -- UNCOMMENT LINES BELOW TO ENABLE THEM
    --M2TWEOP.setAncillariesLimit(8);
    --M2TWEOP.setMaxBgSize(31);
    --M2TWEOP.setReligionsLimit(10);
    --M2TWEOP.setBuildingChainLimit(9);
    --M2TWEOP.setGuildCooldown(3);

    M2TWEOP.unlockGameConsoleCommands();
    -- UNCOMMENT TO ENABLE BELOW SETTINGS
    M2TWEOP.setAncillariesLimit(16);
    M2TWEOP.setMaxBgSize(60);
    -- M2TWEOP.setReligionsLimit(50);
    M2TWEOP.setBuildingChainLimit(15);
    M2TWEOP.setEDUUnitsSize(1,300);
    M2TWEOP.setGuildCooldown(5);

    if eur_main_scripts then
        loadCAS()
    end
end

function onReadGameDbsAtStart()
    eurEOPUnits.populateEDU()
end

function onGameInit()
    if eur_main_scripts then
        eurEOPUnits.populateEDB()
    end
end 

--- Called every time an image is rendered for display
--- Change hotkeys here
---@param pDevice LPDIRECT3DDEVICE9
function draw(pDevice)
    -- 
    if dev_enabled then
        devButton()
    end
    --
    if eur_main_scripts then
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
        if options_pre_battle then
            if eur_pre_battle then
                preBattleButton()
            end
            if eur_pre_battle_window then
                preBattleWindow()
            end
        end
        if eurbackgroundWindowSizeRight == 0 then
            calcWindow()
        end
        if in_campaign_map == true then
            eventsButton()
            eurMapTooltips()
            if show_options_accept then
                optionsAccept()
            end
            if options_unit_upgrades then
                if show_upgrade_button == true then
                    upgradeButton()
                end
                if show_upgrade_window == true then
                    upgradeWindow()
                end
            end
            if show_events_window == true then
                eventsWindow()
            end
            if show_options_button == true then
                optionsButton()
            end
            if show_options_window == true then
                optionsWindow()
            end
            if swap_bg_button == true then
                swapBGButton()
            end
            if swap_bg_window == true then
                swapBGWindow()
            end
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
end

--- Called after loading the campaign map
function onCampaignMapLoaded()
    CAMPAIGN   = M2TW.campaign
    STRAT_MAP  = M2TW.stratMap
    BATTLE     = M2TW.battle
    UI_MANAGER = M2TW.uiCardManager

    eur_gameData = gameDataAll.get()
    eur_campaign = gameDataAll.get().campaignStruct
    eur_sMap = gameDataAll.get().stratMap
    eur_numberOfFactions = stratmap.game.getFactionsCount()
    eur_playerFactionId = M2TWEOP.getLocalFactionID()
    eur_player_faction = stratmap.game.getFaction(0)
    if eur_main_scripts then
        startLog(M2TWEOP.getModPath())

        loadImages()
        wait(eurGlobalVars, 0.5)
        wait(loadSounds, 1)
        in_campaign_map = true
    end
end

function onUnloadCampaign()
    if eur_main_scripts then
        in_campaign_map = false
    end
end

function onLoadingFonts()
    if eur_main_scripts then
        loadFonts()
    end
end

if eur_main_scripts then
    -- EUR Overrides, for compatibility - GOES AT END
    require('eur/eurOverrides')
end
