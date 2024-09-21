local replen = {}

function replen.replenishUnits(faction)
    math.randomseed(os.time())
    local sett_num = faction.settlementsNum;
    local forts_num = faction.fortsNum;
    for x = 0, forts_num -1 do
        local fort = faction:getFort(x)
        if fort.army ~= nil then
            local army = fort.army
            local num_unit = army.numOfUnits
            for i = 0, num_unit -1 do
                local random_value = math.random(1, 3);
                local stack_unit = army:getUnit(i);
                local random_value = math.ceil(stack_unit.soldierCountStratMapMax/80+random_value)
                --print("adding: "..random_value.." to: "..stack_unit.eduEntry.eduType)
                if stack_unit.eduEntry ~= nil then
                    if stack_unit.eduEntry.soldierCount > 8 then
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
                local random_value = math.random(1, 3);
                local stack_unit = army:getUnit(i);
                local random_value = math.ceil(stack_unit.soldierCountStratMapMax/80+random_value)
                --print("adding: "..random_value.." to: "..stack_unit.eduEntry.eduType)
                if stack_unit.eduEntry ~= nil then
                    if stack_unit.eduEntry.soldierCount > 8 then
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

return replen