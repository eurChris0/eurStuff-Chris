local eurload = {}

function eurload.loadImages()
    --[[
    path = '"'..modPath.."\\data\\ui\\units\\"..faction.name.."\\"..'"'
    for dir1 in io.popen("dir "  ..path .." /b"):lines() do 
        if dir1:find('^#') then
            dir1 = string.gsub(dir1, "#", "")
            dir1 = string.gsub(dir1, ".tga", "")
            dir1 = string.lower(dir1)
            table.insert(unit_names, dir1)
            if eur_tga_table[dir1] == nil then
                eur_tga_table[dir1] = { x = 0, y = 0, img = nil }
                eur_tga_table[dir1].x, eur_tga_table[dir1].y, eur_tga_table[dir1].img = M2TWEOP.loadTexture(M2TWEOP.getModPath().."\\data\\ui\\units\\"..faction.name.."\\#"..dir1..".tga")
            end
        end
    end
    ]]
    --printTable(eur_tga_table)
    scroll_bg = { x = 0, y = 0, img = nil }
    button_01 = { x = 0, y = 0, img = nil }
    button_02 = { x = 0, y = 0, img = nil }

    scroll_bg.x, scroll_bg.y, scroll_bg.img = M2TWEOP.loadTexture(M2TWEOP.getModPath()..'\\eopData\\images\\scroll_bg.png')
    button_01.x, button_01.y, button_01.img = M2TWEOP.loadTexture(M2TWEOP.getModPath()..'\\eopData\\images\\button_01.png')
    button_02.x, button_02.y, button_02.img = M2TWEOP.loadTexture(M2TWEOP.getModPath()..'\\eopData\\images\\button_02.png')

    test1 = { x = 0, y = 0, img = nil }
    ent1 = { x = 0, y = 0, img = nil }
    mirror1 = { x = 0, y = 0, img = nil }
    mirror2 = { x = 0, y = 0, img = nil }
    mirror3 = { x = 0, y = 0, img = nil }
    yavanna = { x = 0, y = 0, img = nil }
    button1 = { x = 0, y = 0, img = nil }

    ent1.x, ent1.y, ent1.img = M2TWEOP.loadTexture(M2TWEOP.getModPath()..'\\eopData\\images\\ent1.png')
    mirror1.x, mirror1.y, mirror1.img = M2TWEOP.loadTexture(M2TWEOP.getModPath()..'\\eopData\\images\\mirror1.png')
    mirror2.x, mirror2.y, mirror2.img = M2TWEOP.loadTexture(M2TWEOP.getModPath()..'\\eopData\\images\\mirror2.png')
    mirror3.x, mirror3.y, mirror3.img = M2TWEOP.loadTexture(M2TWEOP.getModPath()..'\\eopData\\images\\mirror3.png')
    yavanna.x, yavanna.y, yavanna.img = M2TWEOP.loadTexture(M2TWEOP.getModPath()..'\\eopData\\images\\yavanna.png')
    button1.x, button1.y, button1.img = M2TWEOP.loadTexture(M2TWEOP.getModPath()..'\\eopData\\images\\button1.png')

    EUR_EVENTS["ireland"][0].image = mirror1
    EUR_EVENTS["ireland"][1].image = yavanna
    EUR_EVENTS["ireland"][2].image = ent1
    EUR_EVENTS["ireland"][3].image = mirror2

    EUR_EVENTS["mongols"][0].image = mirror1
    EUR_EVENTS["mongols"][1].image = yavanna
    EUR_EVENTS["mongols"][2].image = ent1
    EUR_EVENTS["mongols"][3].image = mirror2

    EUR_EVENTS["saxons"][0].image = mirror1
    EUR_EVENTS["saxons"][1].image = yavanna
    EUR_EVENTS["saxons"][2].image = ent1
    EUR_EVENTS["saxons"][3].image = mirror2

    EUR_EVENTS["denmark"][0].image = mirror1
    EUR_EVENTS["denmark"][1].image = yavanna
    EUR_EVENTS["denmark"][2].image = ent1
    EUR_EVENTS["denmark"][3].image = mirror2

end

function eurload.unloadImages()
    local campaign = gameDataAll.get().campaignStruct
    local playerFactionId = M2TWEOP.getLocalFactionID()
    local faction = campaign.factionsSortedByID[playerFactionId + 1]
    if faction == nil then return end
    local culturename = M2TWEOP.getCultureName(faction.cultureID);
    modPath=M2TWEOP.getModPath();
    path = '"'..modPath.."\\data\\ui\\"..culturename.."\\buildings\\construction\\"..'"'
    for dir1 in io.popen("dir "  ..path .." /b"):lines() do 
        if dir1 == nil then return end
        dir1 = string.gsub(dir1, "#", "")
        dir1 = string.gsub(dir1, ".tga", "")
        dir1 = string.lower(dir1)
        if eur_tga_table[dir1] ~= nil then
            M2TWEOP.unloadTexture(eur_tga_table[dir1].img);
        end
    end
end

return eurload