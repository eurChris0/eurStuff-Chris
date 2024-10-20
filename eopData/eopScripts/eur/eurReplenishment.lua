local replen = {}

function replen.replenishUnits(faction)
    local bonus = 0
    if faction.isPlayerControlled == 1 then bonus = (bonus+replen_bonus) end
    if faction.isPlayerControlled == 0 then bonus = 8 end
    math.randomseed(os.time())
    local sett_num = faction.settlementsNum;
    local forts_num = faction.fortsNum;
    if not replen_always then
        for x = 0, forts_num -1 do
            local fort = faction:getFort(x)
            if fort.army ~= nil then
                local army = fort.army
                local num_unit = army.numOfUnits
                for i = 0, num_unit -1 do
                    local random_value = math.random(1, replen_randmax);
                    local stack_unit = army:getUnit(i);
                    local random_value = math.ceil(stack_unit.soldierCountStratMapMax/replen_multi+random_value)
                    local random_value = (random_value+bonus)
                    --print("adding: "..random_value.." to: "..stack_unit.eduEntry.eduType)
                    if stack_unit.eduEntry ~= nil then
                        if stack_unit.eduEntry.soldierCount > replen_beast_value then
                            local unit_soldier_max = stack_unit.soldierCountStratMapMax;
                            local unit_soldier = stack_unit.soldierCountStratMap;
                            if (unit_soldier + random_value < unit_soldier_max) then
                                stack_unit.soldierCountStratMap = unit_soldier + random_value;
                            end
                            if (unit_soldier_max - (unit_soldier + random_value) < 2) then
                                stack_unit.soldierCountStratMap = unit_soldier_max;
                            end
                        end
                    end
                end
            end
        end
        for x = 0, sett_num -1 do
            local settlement = faction:getSettlement(x)
            if settlement.army ~= nil then
                local army = settlement.army
                local num_unit = army.numOfUnits
                for i = 0, num_unit -1 do
                    local random_value = math.random(1, replen_randmax);
                    local stack_unit = army:getUnit(i);
                    local random_value = math.ceil(stack_unit.soldierCountStratMapMax/replen_multi+random_value)
                    local random_value = (random_value+bonus)
                    --print("adding: "..random_value.." to: "..stack_unit.eduEntry.eduType)
                    if stack_unit.eduEntry ~= nil then
                        if stack_unit.eduEntry.soldierCount > replen_beast_value then
                            local unit_soldier_max = stack_unit.soldierCountStratMapMax;
                            local unit_soldier = stack_unit.soldierCountStratMap;
                            if (unit_soldier + random_value < unit_soldier_max) then
                                stack_unit.soldierCountStratMap = unit_soldier + random_value;
                            end
                            if (unit_soldier_max - (unit_soldier + random_value) < 2) then
                                stack_unit.soldierCountStratMap = unit_soldier_max;
                            end
                        end
                    end
                end
            end
        end
    else
        for x = 0, faction.stacksNum - 1 do
            local army = faction:getStack(x)
            local num_unit = army.numOfUnits
            for i = 0, num_unit -1 do
                local random_value = math.random(1, replen_randmax);
                local stack_unit = army:getUnit(i);
                local random_value = math.ceil(stack_unit.soldierCountStratMapMax/replen_multi+random_value)
                local random_value = (random_value+bonus)
                --print("adding: "..random_value.." to: "..stack_unit.eduEntry.eduType)
                if stack_unit.eduEntry ~= nil then
                    if stack_unit.eduEntry.soldierCount > replen_beast_value then
                        local unit_soldier_max = stack_unit.soldierCountStratMapMax;
                        local unit_soldier = stack_unit.soldierCountStratMap;
                        if (unit_soldier + random_value < unit_soldier_max) then
                            stack_unit.soldierCountStratMap = unit_soldier + random_value;
                        end
                        if (unit_soldier_max - (unit_soldier + random_value) < 2) then
                            stack_unit.soldierCountStratMap = unit_soldier_max;
                        end
                    end
                end
            end
        end
    end
end

function replen.disbandToPool(unit)
    local army = unit.army
    if unit.eduEntry.eduType == default_general_units[eur_player_faction.name].old then return end
    if army then
        local sett = army:findInSettlement()
        if sett == nil then return end
        for i = 0, sett.recruitmentPoolCount - 1 do
            local pool = sett:getSettlementRecruitmentPool(i)
            print(pool.availablePool)
            if pool.eduIndex == unit.eduEntry.index then
                pool.availablePool = pool.availablePool + (unit.soldierCountStratMap / unit.soldierCountStratMapMax)
            end
        end
    end
end

return replen