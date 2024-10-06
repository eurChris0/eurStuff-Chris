
leaderheir_combi_list = {
    ["milan"] = {
        leader = {unit="King's Horseguard",ability="CHARGE",},
        heir = {unit="King's Horseguard",ability="CAPTAIN",},
    },
    ["sicily"] = {
        leader = {unit="Fountain Guard",ability="IRON_FIST",},
        heir = {unit="Gondor Bodyguard",ability="SHIELD",},
    },
    ["turks"] = {
        leader = {unit="Grey Company",ability="CAPTAIN",},
        heir = {unit="Dunedain Bodyguard",ability="CAPTAIN",},
    },
    ["russia"] = {
        leader = {unit="Royal Legion of Armenelos",ability="NUMENOR",},
        heir = {unit="Naru n'Aru Sentinels",ability="NUMENOR",},
    },
    ["scotland"] = {
        leader = {unit="Royal Guardsmen",ability="IRON_FIST",},
        heir = {unit="Hearthguard",ability="CAPTAIN",},
    },
    ["byzantium"] = {
        leader = {unit="High Paladins",ability="IRON_FIST",},
        heir = {unit="High Paladins",ability="SHIELD",},
    },
    ["timurids"] = {
        leader = {unit="Beorning Shapeshifters",ability="BEORN",},
        heir = {unit="Skin-Changers",ability="BEORN",},
    },
    ["portugal"] = {
        leader = {unit="Northguard",ability="IRON_FIST",},
        heir = {unit="Darkblades",ability="VENOM",},
    },
    ["aztecs"] = {
        leader = {unit="Orthanc Guard",ability="SHIELD",},
        heir = {unit="Brenin's Guard",ability="SHIELD",},
    },
    ["teutonic_order"] = {
        leader = {unit="Mochaini Ambaxtoi",ability="IRON_FIST",},
        heir = {unit="Dubhshith Foresters",ability="IRON_FIST",},
    },
    ["spain"] = {
        leader = {unit="Black Snake Guard",ability="VENOM",},
        heir = {unit="Black Snake Guard",ability="VENOM",},
    },
    ["khand"] = {
        leader = {unit="Variag Nobles",ability="VENOM",},
        heir = {unit="Variag Nobles",ability="VENOM",},
    },
    ["venice"] = {
        leader = {unit="Loke Rim Bodyguard",ability="VENOM",},
        heir = {unit="Loke Rim Bodyguard",ability="VENOM",},
    },
    ["norway"] = {
        leader = {unit="Khazad-dum Reclaimers",ability="DWARVES",},
        heir = {unit="Zenith Guard",ability="DWARVES",},
    },
    ["hungary"] = {
        leader = {unit="Gabilgathol Guard",ability="DWARVES",},
        heir = {unit="Broadbeam Marksmen",ability="DWARVES",},
    },
    ["moors"] = {
        leader = {unit="Legionaries of Erebor",ability="DWARVES",},
        heir = {unit="Axeguard of Erebor",ability="DWARVES",},
    },
    ["mongols"] = {
        leader = {unit="Aredhirith",ability="SILVAN",},
        heir = {unit="Hin e-Daur",ability="SILVAN",},
    },
    ["ireland"] = {
        leader = {unit="Berio I Ngelaidh",ability="SILVAN",},
        heir = {unit="Elbereths Sentinels",ability="Light_of_the_Faith",},
    },
    ["denmark"] = {
        leader = {unit="Falas Lords",ability="ELROND",},
        heir = {unit="Calaquendi Lords",ability="Light_of_the_Faith",},
    },
    ["saxons"] = {
        leader = {unit="Elderinwe Roquen",ability="ELROND",},
        heir = {unit="Noldorin Archers",ability="Light_of_the_Faith",},
    },
    ["england"] = {
        leader = {unit="Temple Knights",ability="ORC_DRAUGHT",},
        heir = {unit="Temple Knights",ability="ORC_DRAUGHT",},
    },
    ["poland"] = {
        leader = {unit="Khamuls Shadowknights",ability="VENOM",},
        heir = {unit="Castellans of Dol Guldur",ability="VENOM",},
    },
    ["hre"] = {
        leader = {unit="Mountain Uruks",ability="LEGION",},
        heir = {unit="Goblin Bodyguards",ability="ORC_DRAUGHT",},
    },
    ["gundabad"] = {
        leader = {unit="Pale Uruks",ability="LEGION",},
        heir = {unit="Orc Avengers",ability="ORC_DRAUGHT",},
    },
    ["france"] = {
        leader = {unit="Guard of the Hand",ability="LEGION",},
        heir = {unit="Nazg Hai",ability="ORC_DRAUGHT",},
    },
}

current_heir_check = {}

function swapHierLeaderStuff(character, bool)
    if eur_campaign == nil then return end
    if character == nil then return end
    if bool then
        if leaderheir_combi_list[character.faction.name] then
            if character.ability == "" then
                print("true")
                character.ability = leaderheir_combi_list[character.faction.name].leader.ability
            end
        end
    else
        if leaderheir_combi_list[character.faction.name] then
            if character.ability == "" then
                print("true")
                if swapHierStuffCheck(character.faction) then
                    character.ability = leaderheir_combi_list[character.faction.name].heir.ability
                end
            end
        end
    end
end

function swapHierStuffCheck(faction)
    if current_heir_check[0] == nil then
        table.insert(current_heir_check, 0, faction.heir)
        return true
    else
        if current_heir_check[0].isAlive == true then
            return false
        else
            current_heir_check = {}
            table.insert(current_heir_check, 0, faction.heir)
            return true
        end
    end
end

function swapHeirLeaderStuffAI(faction)
    if faction.isPlayerControlled == 1 then return end
    if not default_general_units[faction.name] then return end
    if leaderheir_combi_list[faction.name] then
        local char = faction.leader
        if char ~= nil then
            if char.character ~= nil then
                if char.character.ability == "" then
                    char.character.ability = leaderheir_combi_list[faction.name].leader.ability
                end
                if char.character.bodyguards ~= nil then
                    if default_general_units[faction.name].old == char.character.bodyguards.eduEntry.eduType then
                        local eduEntry = M2TWEOPDU.getEduEntryByType(leaderheir_combi_list[faction.name].leader.unit)
                        if eduEntry ~= nil then
                            if eduEntry:hasOwnership(faction.factionID) then
                                setBodyguard(char.character, (leaderheir_combi_list[faction.name].leader.unit), char.character.bodyguards.exp, char.character.bodyguards.weaponLVL, 1, "")
                            end
                        end
                    end
                end
            end
        end
        local char = faction.heir
        if char ~= nil then
            if char.character ~= nil then
                if char.character.ability == "" then
                    char.character.ability = leaderheir_combi_list[faction.name].heir.ability
                end
                if char.character.bodyguards ~= nil then
                    if default_general_units[faction.name].old == char.character.bodyguards.eduEntry.eduType then
                        local eduEntry = M2TWEOPDU.getEduEntryByType(leaderheir_combi_list[faction.name].heir.unit)
                        if eduEntry ~= nil then
                            if eduEntry:hasOwnership(faction.factionID) then
                                setBodyguard(char.character, (leaderheir_combi_list[faction.name].heir.unit), char.character.bodyguards.exp, char.character.bodyguards.weaponLVL, 1, "")
                            end
                        end
                    end
                end
            end
        end
    end
end
