options_replen = true
options_poe = false
options_merge = true
options_sort = true
options_prepost_save = false

sort_order = {}
sort_order.a, sort_order.b, sort_order.c = 5, 0, 3

show_options_button = false
show_options_window = false

show_upgrade_button = false
show_upgrade_window = false
upgradeWindowAlways = false

show_events_window = false

eur_already_saved = false

total_spoils_loot = 0
battles_lost = 0
losses_upkeep = 0
total_losses_upkeep = 0

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

function tableContains(table, value)
    for i = 1, #table do
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

eurffi = require("ffi")

-- Constructor for an object that stores data about the current Window size
eurffi.cdef [[
typedef long LONG;
typedef void* HANDLE;
typedef HANDLE HWND;
  typedef struct RECT {
    LONG left;
    LONG top;
    LONG right;
    LONG bottom;
  } RECT;
  typedef int                 BOOL;
  typedef RECT *LPRECT;
   BOOL GetWindowRect(HWND  hWnd,LPRECT lpRect);
       HWND GetActiveWindow(void);

   typedef const char* LPCSTR;
    typedef unsigned UINT;
   int MessageBoxA(HWND, LPCSTR, LPCSTR, UINT);
]]

-- Window Size
eurwindow = eurffi.C.GetActiveWindow()
eurrect = eurffi.new("RECT")
eurffi.C.GetWindowRect(eurwindow, eurrect)

eurbackgroundWindowPosRight = eurrect.right / 4.65
eurbackgroundWindowPosBottom = eurrect.bottom / (eurrect.bottom / 20) - 20
eurbackgroundWindowSizeRight = eurrect.right / 1920
eurbackgroundWindowSizeBottom = eurrect.bottom / 1080

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