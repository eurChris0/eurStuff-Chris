--persistent
options_replen = true
options_poe = true
options_merge = true
options_sort = true
options_prepost_save = false

show_options_window = true

replen_randmax = 3
replen_multi = 80
replen_beast_value = 8
options_replen_beast = false

replen_low = false
replen_mid = true
replen_high = false
replen_text = "Rate: Medium"
replen_always = false
poe_turns_min = 1
poe_turns_max = 2
random_poe = false
options_unit_upgrades = true
unit_upgrades_multi = 0
options_pre_battle = true
options_addspoils = true
options_gen_upgrades = true
options_gen_bg_size = true
options_first_run = true
merge_turn_multi = 1
bg_swap_cooldown = 10
options_hardcore = false
bg_min_size_multi = 4


temp_units = {}
temp_unit_nu = 0

char_unlocks = {}

font_choice = 2

persistent_gen_list = {}
persistent_gen_list_reset = {}

change_faction = false

eur_tga_table = {}

sort_order = {}
sort_order.a, sort_order.b, sort_order.c = 5, 0, 3

upgradeWindowAlways = false

eur_already_saved = false

total_spoils_loot = 0
battles_lost = 0
losses_upkeep = 0
total_losses_upkeep = 0

poe_end_condition = false

eurEventsData = {}

UNIT_ORIGINAL = {}

eur_turn_number = 0

eurTilecheck = false
eur_eregion_active = false
eregion_realms_start = 0
eregion_realms_sett_taken = 0
eregion_maernil_choice_wait = 0

FACTION_COLOURS = {
    ["saxons"] = {
        primaryColorRed = 100,
        primaryColorGreen = 100,
        primaryColorBlue = 100,
        secondaryColorRed = 100,
        secondaryColorGreen = 100,
        secondaryColorBlue = 100,
        standardIndex = 8,
        logoIndex = 185,
        smallLogoIndex = 205,
    },
}

--temporary
show_options_button = false
show_events_window = false
show_options_accept = false

swap_bg_window = false
swap_bg_button = false

traits_temp = {}

font_list = {}
font_list_names = {}

temp_char_stuff = nil
show_temp_char_stuff = false

show_upgrade_button = false
show_upgrade_window = false
temp_player_army = nil
temp_temp_player_army_target = 0
temp_value = 20
eur_pre_battle = false
eur_pre_battle_window = false

function setFactionAssets(faction, new_faction_name, saveload)
    faction.facStrat.primaryColorRed = FACTION_COLOURS[new_faction_name].primaryColorRed
    faction.facStrat.primaryColorGreen = FACTION_COLOURS[new_faction_name].primaryColorGreen
    faction.facStrat.primaryColorBlue = FACTION_COLOURS[new_faction_name].primaryColorBlue
    faction.facStrat.secondaryColorRed = FACTION_COLOURS[new_faction_name].secondaryColorRed
    faction.facStrat.secondaryColorGreen = FACTION_COLOURS[new_faction_name].secondaryColorGreen
    faction.facStrat.secondaryColorBlue = FACTION_COLOURS[new_faction_name].secondaryColorBlue
    faction.facStrat.standardIndex = FACTION_COLOURS[new_faction_name].standardIndex
    faction.facStrat.logoIndex = FACTION_COLOURS[new_faction_name].logoIndex
    faction.facStrat.smallLogoIndex = FACTION_COLOURS[new_faction_name].smallLogoIndex
    if saveload then
        M2TWEOP.saveGame(modPath.."\\saves\\factionupdate.sav")
        M2TWEOP.loadGame(modPath.."\\saves\\factionupdate.sav")
    end
end

function eurSaveLoadValues(bool)
    if bool then
        eurEventsData = {
            bg_min_size_multi = bg_min_size_multi,
            merge_turn_multi = merge_turn_multi,
            bg_swap_cooldown = bg_swap_cooldown,
            options_hardcore = options_hardcore,
            options_gen_upgrades = options_gen_upgrades,
            options_gen_bg_size = options_gen_bg_size,
            options_first_run = options_first_run,
            replen_low = replen_low,
            replen_mid = replen_mid,
            replen_high = replen_high,
            replen_text = replen_text,
            replen_always = replen_always,
            poe_turns_min = poe_turns_min,
            poe_turns_max = poe_turns_max,
            random_poe = random_poe,
            options_unit_upgrades = options_unit_upgrades,
            unit_upgrades_multi = unit_upgrades_multi,
            options_pre_battle = options_pre_battle,
            options_addspoils = options_addspoils,
            options_replen_beast = options_replen_beast,
            replen_randmax = replen_randmax,
            replen_multi = replen_multi,
            replen_beast_value = replen_beast_value,
            char_unlocks = char_unlocks,
            font_choice = font_choice,
            current_heir_check = current_heir_check,
            temp_units = temp_units,
            temp_unit_nu = temp_unit_nu,
            combo_labtrait_list = combo_labtrait_list,
            labtrait_units_list = labtrait_units_list,
            persistent_gen_list = persistent_gen_list,
            persistent_gen_list_reset = persistent_gen_list_reset,
            options_replen = options_replen,
            show_options_window = show_options_window,
            options_poe = options_poe,
            options_merge = options_merge,
            options_sort = options_sort,
            options_prepost_save = options_prepost_save,
            sort_order = sort_order,

            eur_already_saved = eur_already_saved,

            total_spoils_loot = total_spoils_loot,

            battles_lost = battles_lost,
            losses_upkeep = losses_upkeep,
            total_losses_upkeep = total_losses_upkeep,
            eur_spawned_characters = eur_spawned_characters,

            tempmirrorTarget = tempmirrorTarget,
            mirrorTarget = mirrorTarget,
            mirrorTurnsRemain = mirrorTurnsRemain,

            traitToAdd = traitToAdd,
            traitTurnsRemain = traitTurnsRemain,

            fert_level = fert_level,
            modify_growth = modify_growth,
            growthTurnsRemain = growthTurnsRemain,
            replen_bonus = replen_bonus,

            block_poe_turns = block_poe_turns,

            eur_event_active = eur_event_active,
            eur_event_activelen = eur_event_activelen,

            eur_event_min_cooldown = eur_event_min_cooldown,
            event_number = event_number,
            poe_end_condition = poe_end_condition,
            edumodTurnsRemain = edumodTurnsRemain,
            edumodActive = edumodActive,
            tulkasTurnsRemain = tulkasTurnsRemain,
            tulkasActive = tulkasActive,
            lindon_0_count = lindon_0_count,
        }
        --[[
        for i = 0, #EUR_EVENTS[eur_localFactionName] do
            if EUR_EVENTS[eur_localFactionName][i].active_duration ~= nil then
                eurEventsData[eur_localFactionName..tostring(i).."active_duration"] = EUR_EVENTS[eur_localFactionName][i].active_duration
            end
                        if EUR_EVENTS[eur_localFactionName][i].active_cooldown ~= nil then
                eurEventsData[eur_localFactionName..tostring(i).."active_cooldown"] = EUR_EVENTS[eur_localFactionName][i].active_cooldown
            end
         end
         ]]
    else
        bg_min_size_multi = eurEventsData["bg_min_size_multi"]
        merge_turn_multi = eurEventsData["merge_turn_multi"]
        bg_swap_cooldown = eurEventsData["bg_swap_cooldown"]
        options_hardcore = eurEventsData["options_hardcore"]
        options_gen_upgrades = eurEventsData["options_gen_upgrades"]
        options_gen_bg_size = eurEventsData["options_gen_bg_size"]
        options_first_run = eurEventsData["options_first_run"]
        replen_low = eurEventsData["replen_low"]
        replen_mid = eurEventsData["replen_mid"]
        replen_high = eurEventsData["replen_high"]
        replen_text = eurEventsData["replen_text"]
        replen_always = eurEventsData["replen_always"]
        poe_turns_min = eurEventsData["poe_turns_min"]
        poe_turns_max = eurEventsData["poe_turns_max"]
        random_poe = eurEventsData["random_poe"]
        options_unit_upgrades = eurEventsData["options_unit_upgrades"]
        unit_upgrades_multi = eurEventsData["unit_upgrades_multi"]
        options_pre_battle = eurEventsData["options_pre_battle"]
        options_addspoils = eurEventsData["options_addspoils"]
        options_replen_beast = eurEventsData["options_replen_beast"]
        replen_randmax = eurEventsData["replen_randmax"]
        replen_multi = eurEventsData["replen_multi"]
        replen_beast_value = eurEventsData["replen_beast_value"]
        char_unlocks = eurEventsData["char_unlocks"]
        font_choice = eurEventsData["font_choice"]
        current_heir_check = eurEventsData["current_heir_check"]
        temp_units = eurEventsData["temp_units"]
        temp_unit_nu = eurEventsData["temp_unit_nu"]
        combo_labtrait_list = eurEventsData["combo_labtrait_list"]
        labtrait_units_list = eurEventsData["labtrait_units_list"]
        persistent_gen_list = eurEventsData["persistent_gen_list"]
        persistent_gen_list_reset = eurEventsData["persistent_gen_list_reset"]
        options_replen = eurEventsData["options_replen"]
        show_options_window = eurEventsData["show_options_window"]
        options_poe = eurEventsData["options_poe"]
        options_merge = eurEventsData["options_merge"]
        options_sort = eurEventsData["options_sort"]
        options_prepost_save = eurEventsData["options_prepost_save"]
        sort_order = eurEventsData["sort_order"]

        eur_already_saved = eurEventsData["eur_already_saved"]

        total_spoils_loot = eurEventsData["total_spoils_loot"]

        battles_lost = eurEventsData["battles_lost"]
        losses_upkeep = eurEventsData["losses_upkeep"]
        total_losses_upkeep = eurEventsData["total_losses_upkeep"]
        eur_spawned_characters = eurEventsData["eur_spawned_characters"]

        tempmirrorTarget = eurEventsData["tempmirrorTarget"]
        mirrorTarget = eurEventsData["mirrorTarget"]
        mirrorTurnsRemain = eurEventsData["mirrorTurnsRemain"]

        traitToAdd = eurEventsData["traitToAdd"]
        traitTurnsRemain = eurEventsData["traitTurnsRemain"]

        fert_level = eurEventsData["fert_level"]
        modify_growth = eurEventsData["modify_growth"]
        growthTurnsRemain = eurEventsData["growthTurnsRemain"]
        replen_bonus = eurEventsData["replen_bonus"]

        block_poe_turns = eurEventsData["block_poe_turns"]

        eur_event_active = eurEventsData["eur_event_active"]
        eur_event_activelen = eurEventsData["eur_event_activelen"]

        eur_event_min_cooldown = eurEventsData["eur_event_min_cooldown"]
        event_number = eurEventsData["event_number"]
        poe_end_condition = eurEventsData["poe_end_condition"]
        edumodTurnsRemain = eurEventsData["edumodTurnsRemain"]
        edumodActive = eurEventsData["edumodActive"]
        tulkasTurnsRemain = eurEventsData["tulkasTurnsRemain"]
        tulkasActive = eurEventsData["tulkasActive"]
        lindon_0_count = eurEventsData["lindon_0_count"]
    end

end

function sort_on_values(t,...)
    local a = {...}
    table.sort(t, function (u,v)
    for i = 1, #a do
      if u[a[i]] > v[a[i]] then return false end
      if u[a[i]] < v[a[i]] then return true end
    end
    end)
end

function compare_up(a, b)
    return a[sort_option] < b[sort_option]
end

function compare_down(a, b)
    return a[sort_option] > b[sort_option]
end

function checkCounter(counter)
    if counter == "" then
        return true
    elseif counter ~= "" then
        local isExist, counterValue = stratmap.game.getScriptCounter(counter)
        if counterValue == 1 then
            return true
        elseif counterValue == 0 then
            return false
        end
    end
end

function getUnitSizeMult()
    local gameOptions = M2TWEOP.getOptions2()
    local unitSize = gameOptions.unitSize
    if unitSize == 0 then
        return gameOptions.unitSizeMultiplierLow
    elseif unitSize == 1 then
        return 1
    elseif unitSize == 2 then
        return gameOptions.unitSizeMultiplierMedium
    elseif unitSize == 3 then
        return gameOptions.unitSizeMultiplierLarge
    end
end

Action = {}
function Action:new(func, waitTime, ...)
    newObj = {
        func = func or nil,
         -- store func pointer
        waitTime = waitTime,
         -- store time to wait
        waitEndTime = nil,
         -- we initialize end time later
        args = {...} or {}
     -- pack and store function args
    }
    self.__index = self
    return setmetatable(newObj, self)
end

function Action:execute()
    self.func(unpack(self.args)) -- unpack all args and execute function
end

-- table with our waiting functions
ourWaitingFuncs = {}

function waitingFuncsTick()
    local currTime = ImGui.GetTime() -- store time once in func
    for i = #ourWaitingFuncs, 1, -1 do -- check all actions
        if (ourWaitingFuncs[i].waitEndTime == nil) then -- if we not calc end time yet
            ourWaitingFuncs[i].waitEndTime = currTime + ourWaitingFuncs[i].waitTime --calc wait end time for function
        end
        if ourWaitingFuncs[i].waitEndTime <= currTime then -- if now time to execute function
            local currAction = table.remove(ourWaitingFuncs, i) -- table.remove removes our action from table and return it
            currAction:execute() -- execute action. Action destroyed when we out from this code block(it`s local)
        end
    end
end

function wait(functionName, sec, arg1, arg2, arg3, arg4, arg5) -- more arguments can be added
    table.insert(ourWaitingFuncs, Action:new(functionName, sec, arg1, arg2, arg3, arg4, arg5))
end

function removeDuplicates(table)
    local hash = {}
    local res = {}
    for _,v in ipairs(table) do
        if (not hash[v]) then
            res[#res+1] = v
            hash[v] = true
        end
    end
    return res
end

function tableContains(table, value)
    local i = 1
    local j = 0
    if table[0] then
        i = 0
        j = 1
    end
    for i = i, #table -0 do
        if (table[i] == value) then
            return true
        end
    end
    return false
end

function tablePosition(table, value)
    for i = 1, #table do
        if (table[i] == value) then
            return i
        end
    end
    return 15
end

function reverseTable(myTable)
	if myTable and #myTable > 1 then
		local temp = nil
		for n = 1,math.floor(#myTable/2) do
			temp = myTable[n]
			myTable[n] = myTable[#myTable-(n-1)]
			myTable[#myTable-(n-1)] = temp
		end 
	end
end

function getnamedCharbyLabel(label)
    local factionsNum = stratmap.game.getFactionsCount();
    for i = 0, factionsNum - 1 do
        local fac = stratmap.game.getFaction(i);
        for i = 0, fac.numOfNamedCharacters - 1 do
            local namedchar = fac:getNamedCharacter(i)
            if namedchar.label == (label) and namedchar.character ~= nil then
                print('Found character')
                return namedchar;
            end
        end
    end
    return nil;
end

function file_exists(name)
    local f=io.open(name,"r")
    if f~=nil then io.close(f) return true else return false end
end

function eurResetDisplay()
    stratmap.game.callConsole("reset_display")
end

function randomChance(percent) -- returns true a given percentage of calls
    math.randomseed(os.time())
    if percent == 0 then return false end
    return percent >= math.random(1,100)   -- 1 succeeds 1%, 50 succeeds 50%,
end

function printTable( t )
 
    local printTable_cache = {}
 
    local function sub_printTable( t, indent )
 
        if ( printTable_cache[tostring(t)] ) then
            print( indent .. "*" .. tostring(t) )
        else
            printTable_cache[tostring(t)] = true
            if ( type( t ) == "table" ) then
                for pos,val in pairs( t ) do
                    if ( type(val) == "table" ) then
                        print( indent .. "[" .. pos .. "] => " .. tostring( t ).. " {" )
                        sub_printTable( val, indent .. string.rep( " ", string.len(pos)+8 ) )
                        print( indent .. string.rep( " ", string.len(pos)+6 ) .. "}" )
                    elseif ( type(val) == "string" ) then
                        print( indent .. "[" .. pos .. '] => "' .. val .. '"' )
                    else
                        print( indent .. "[" .. pos .. "] => " .. tostring(val) )
                    end
                end
            else
                print( indent..tostring(t) )
            end
        end
    end
 
    if ( type(t) == "table" ) then
        print( tostring(t) .. " {" )
        sub_printTable( t, "  " )
        print( "}" )
    else
        sub_printTable( t, "  " )
    end
end

function getValidTile(x, y)
    local newx, newy = x, y
    if checkTileEmpty(x, y) == true then return x, y end
    if checkTileEmpty(x + 1, y) == true then return x + 1, y end
    if checkTileEmpty(x - 1, y) == true then return x - 1, y end
    if checkTileEmpty(x, y + 1) == true then return x, y + 1 end
    if checkTileEmpty(x, y - 1) == true then return x, y - 1 end
    while checkTileEmpty(newx, newy) == false and newy >= y - 5 do
        newy = newy - 1
    end
    if checkTileEmpty(newx, newy) == true then return newx, newy end
    newx, newy = x, y
    while checkTileEmpty(newx, newy) == false and newy <= y - 5 do
        newy = newy + 1
    end
    if checkTileEmpty(newx, newy) == true then return newx, newy end
    newx, newy = x, y
    while checkTileEmpty(newx, newy) == false and newx >= x - 5 do
        newx = newx - 1
    end
    if checkTileEmpty(newx, newy) == true then return newx, newy end
    newx, newy = x, y
    while checkTileEmpty(newx, newy) == false and newx <= x - 5 do
        newx = newx + 1
    end
    if checkTileEmpty(newx, newy) == true then return newx, newy end
    return x, y
end

function checkTileEmpty(x, y)
    local sMap = gameDataAll.get().stratMap;
    local tile = sMap.getTile(x, y)
    if M2TWEOP.isTileFree(x, y)
    and not tile.settlement
    and not tile.fort
    and not tile.watchtower
    and not tile.port
    then
        return true
    end
    return false
end

local ffi = require("ffi")
ffi.cdef [[
typedef long LONG;
typedef void* HANDLE;
typedef HANDLE HWND;
typedef struct RECT {
    LONG left;
    LONG top;
    LONG right;
    LONG bottom;
} RECT;
typedef int BOOL;
typedef RECT *LPRECT;
BOOL GetClientRect(HWND  hWnd,LPRECT lpRect);
HWND GetActiveWindow(void);
]]

-- Initialization

screenHeight, screenWidth = 0, 0
eurbackgroundWindowSizeRight = 0
eurbackgroundWindowSizeBottom = 0

local window = ffi.C.GetActiveWindow()
local rect = ffi.new("RECT")
ffi.C.GetClientRect(window, rect)
screenWidth = rect.right-rect.left
screenHeight = rect.bottom-rect.top
eurbackgroundWindowSizeRight = screenWidth/1920 ; eurbackgroundWindowSizeBottom = screenHeight/1080

img_x, img_y = 64, 64

if eurbackgroundWindowSizeRight < 0.5 then
    img_x, img_y = 24, 24
elseif eurbackgroundWindowSizeRight < 1 then
    img_x, img_y = 32, 32
end

function calcWindow()
    local window = ffi.C.GetActiveWindow()
    local rect = ffi.new("RECT")
    ffi.C.GetClientRect(window, rect)
    screenWidth = rect.right-rect.left
    screenHeight = rect.bottom-rect.top
    eurbackgroundWindowSizeRight = screenWidth/1920 ; eurbackgroundWindowSizeBottom = screenHeight/1080

    img_x, img_y = 64, 64

    if eurbackgroundWindowSizeRight < 0.5 then
        img_x, img_y = 24, 24
    elseif eurbackgroundWindowSizeRight < 1 then
        img_x, img_y = 32, 32
    end
end

function eurGlobalVars()
    ---load campaign vars
    eur_gameData = gameDataAll.get()
    eur_campaign = gameDataAll.get().campaignStruct
    eur_sMap = gameDataAll.get().stratMap
    eur_numberOfFactions = stratmap.game.getFactionsCount()
    eur_playerFactionId = M2TWEOP.getLocalFactionID()
    eur_player_faction = stratmap.game.getFaction(0)
    if eur_player_faction ~= nil then
        font_RINGM = font_list[font_choice+1]
        if change_faction then
            setFactionAssets(eur_player_faction, "saxons", true)
            change_faction = false
        end
        eur_localculture = M2TWEOP.getCultureName(eur_player_faction.cultureID);
        eur_localFactionName = eur_player_faction:getFactionName()
        --eregion story activate
        if eur_localFactionName == "denmark" then
            if eregion_realms_start == 0 then
                eurTilecheck = true
                eur_eregion_active = true
                eregion_realms_start = 1
            end
        elseif eur_localFactionName == "saxons" then
            if eregion_realms_start == 0 then
                eurTilecheck = true
                eur_eregion_active = true
                eregion_realms_start = 1
            end
        end
        --change empty forts to independent
        for i = 0, eur_campaign.fortsNum - 1 do
            local fort = eur_campaign:getFort(i)
            if fort.army == nil then
                --fort:changeOwner(eur_campaign:getFaction("slave"), false)
            end
        end
        --save unit values
        if not options_first_run then
            genEDUcheck()
        end
        for i = 0, 1500 do
            local eduEntry = M2TWEOPDU.getEduEntry(i)
            if eduEntry ~= nil then
                if eduEntry:hasOwnership(eur_playerFactionId) then
                    UNIT_ORIGINAL[eduEntry.eduType] = {}
                    UNIT_ORIGINAL[eduEntry.eduType].ammo = eduEntry.primaryStats.ammo
                    UNIT_ORIGINAL[eduEntry.eduType].moraleLocked = eduEntry.moraleLocked
                    UNIT_ORIGINAL[eduEntry.eduType].recruitCost = eduEntry.recruitCost
                    UNIT_ORIGINAL[eduEntry.eduType].recruitTime = eduEntry.recruitTime
                    UNIT_ORIGINAL[eduEntry.eduType].range = eduEntry.primaryStats.range
                end
            end
        end
        if EUR_EVENTS[eur_localFactionName] then
            for i = 0, #EUR_EVENTS[eur_localFactionName] do
                if eurEventsData[eur_localFactionName..tostring(i).."active_cooldown"] then
                    EUR_EVENTS[eur_localFactionName][i].active_cooldown = eurEventsData[eur_localFactionName..tostring(i).."active_cooldown"]
                end
                if eurEventsData[eur_localFactionName..tostring(i).."active_duration"] then
                    EUR_EVENTS[eur_localFactionName][i].active_duration = eurEventsData[eur_localFactionName..tostring(i).."active_duration"]
                end
            end
        end
        modifyEDUcheck(eur_playerFactionId)
        if lindon_0_count > 0 then
            if not lindon_0_bu_added then
                ulmoAdd()
            end
        end
    end
    wait(calcWindow, 2)
end

function genEDUcheck()
    if options_gen_bg_size then
        for i = 1, #mod_general_units_list do
            local eduEntry = M2TWEOPDU.getEduEntryByType(mod_general_units_list[i].name)
            if eduEntry ~= nil then
                if not original_general_units_list[eduEntry.eduType] then
                    original_general_units_list[eduEntry.eduType] = eduEntry.soldierCount
                end
                eduEntry.soldierCount = mod_general_units_list[i].size
            end
        end
    else
        for i = 1, #mod_general_units_list do
            local eduEntry = M2TWEOPDU.getEduEntryByType(mod_general_units_list[i].name)
            if eduEntry ~= nil then
                if eduEntry.soldierCount == mod_general_units_list[i].size then
                    if original_general_units_list[eduEntry.eduType] then
                    eduEntry.soldierCount = original_general_units_list[eduEntry.eduType]
                    end
                end
            end
        end
    end
end

function eurListTraits(namedCharacter)
    for i = 0, namedCharacter.traitCount - 1 do
        local trait = namedCharacter:getTrait(i)
        if trait ~= nil then
            if trait.traitEntry ~= nil then
                table.insert(traits_temp, trait.traitEntry.name)
            end
        end
    end
end

function saveLoad(faction, pre)
    modPath = M2TWEOP.getModPath();
    local campaign = gameDataAll.get().campaignStruct
    local playerFactionId = M2TWEOP.getLocalFactionID()
    local player_faction = campaign.factionsSortedByID[playerFactionId + 1]
    if eur_already_saved then return end
    if pre then
        M2TWEOP.saveGame(modPath.."\\saves\\eurprebattle.sav")
        print("pre_save")
        eur_already_saved = true
    else
        if faction == player_faction then
            M2TWEOP.saveGame(modPath.."\\saves\\eurpostbattle.sav")
            print("post_save")
        end
    end
end

function centeredImageButton(text, x, y, offset)
    local offset = offset or 0
    local windowWidth = ImGui.GetWindowWidth()
    local centre_position_for_button = (windowWidth - x) / 2;
    ImGui.SetCursorPosX(centre_position_for_button+offset);
    clicked = ImGui.Button(text, x, y)
    --clicked = ImGui.ImageButton(image, x, y);
    return clicked
end

function centeredImage(image, x, y, offset)
    local offset = offset or 0
    local windowWidth = ImGui.GetWindowWidth()
    local centre_position_for_button = (windowWidth - x) / 2;
    ImGui.SetCursorPosX(centre_position_for_button+offset);
    ImGui.Image(image, x, y)
end

function centeredText(text, minIndentation)
    if text == nil then print('centeredText: Text not found') return end;
    if minIndentation == nil then minIndentation = 20.0 end;

    local textWidth, textHeight = ImGui.CalcTextSize(text);
    local windowWidth           = ImGui.GetWindowWidth()

    local textIndentation = (windowWidth - textWidth) * 0.5;

    if textIndentation <= minIndentation then
        textIndentation = minIndentation
    end

    ImGui.SameLine(textIndentation);
    ImGui.PushTextWrapPos(windowWidth - textIndentation);

    ImGui.TextWrapped(text)
    ImGui.PopTextWrapPos()
end

function eurStyle(style, set)
    if style == "basic_1" then
        if set then
            ImGui.PushFont(font_RINGM)
            --ImGui.PushStyleVar(ImGuiStyleVar.WindowPadding, 5, 5)
            --ImGui.PushStyleVar(ImGuiStyleVar.Alpha, 0)
            ImGui.PushStyleVar(ImGuiStyleVar.ChildBorderSize, 0)
            ImGui.PushStyleVar(ImGuiStyleVar.WindowBorderSize, 0)
            ImGui.PushStyleVar(ImGuiStyleVar.FramePadding, 5)

            ImGui.PushStyleColor(ImGuiCol.Button, 0.2, 0.2, 0.2, 0.2)
            ImGui.PushStyleColor(ImGuiCol.ButtonHovered, 1, 1, 1, 0.5)
            ImGui.PushStyleColor(ImGuiCol.ButtonActive, 1, 1, 1, 0.5)
            ImGui.PushStyleColor(ImGuiCol.Separator, 1, 1, 1, 0.5)
            ImGui.PushStyleColor(ImGuiCol.Border, 1, 1, 1, 0)
            
            ImGui.PushStyleColor(ImGuiCol.Text, 1, 1, 1, 1)
            ImGui.PushStyleColor(ImGuiCol.HeaderHovered,1, 1, 1, 0.2)
            ImGui.PushStyleColor(ImGuiCol.Header,1, 1, 1, 0.2)
            ImGui.PushStyleColor(ImGuiCol.HeaderActive,1, 1, 1, 0.0)
            ImGui.PushStyleColor(ImGuiCol.ScrollbarGrabActive,0.2, 0.2, 0.2, 0.5)
            ImGui.PushStyleColor(ImGuiCol.ScrollbarBg,1, 1, 1, 0)
            ImGui.PushStyleColor(ImGuiCol.ScrollbarGrabHovered,0.2, 0.2, 0.2, 0.5)
            ImGui.PushStyleColor(ImGuiCol.ScrollbarGrab,0.2, 0.2, 0.2, 1)
            ImGui.PushStyleColor(ImGuiCol.Tab,0.5, 0.5, 0.5, 0.5)
            ImGui.PushStyleColor(ImGuiCol.TabActive,0.5, 0.5, 0.5, 1)
            
        else
            ImGui.PopFont()
            ImGui.PopStyleVar(4)
            ImGui.PopStyleColor(15)
        end
    end
end
