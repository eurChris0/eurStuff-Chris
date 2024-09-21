local sort = {}

function sort.eurSortStack(faction)
    if faction.isPlayerControlled == 0 then return end;
 -- 1 = EDU Type
 -- 2 = Category
 -- 3 = Class
 -- 4 = Soldier Count
 -- 5 = Experience
 -- 6 = Category + Class
 -- 7 = AI unit value
    for j = 0, faction.stacksNum - 1 do
        local stack = faction:getStack(j);
        if stack then
            stack:sortStack(sort_order.a+1, sort_order.b+1, sort_order.c+1)
        end
    end
end

 function sort.eurSortOnSelected(selectedChar)
    if selectedChar.character.armyLeaded then
        selectedChar.character.armyLeaded:sortStack(sort_order.a+1, sort_order.b+1, sort_order.c+1);
    end
 end

return sort