---------------------------------------------------------------
---------------------------------------------------------------
---------------------------------------------------------------

local merge = {}

function merge.getAIarmies()
	local factionsNum=stratmap.game.getFactionsCount();
	for f = 0, factionsNum-1 do
		local fac = stratmap.game.getFaction(f);
		if fac.isPlayerControlled~=1 then
			for i=0, fac.stacksNum-1 do
				local targetStack = fac:getStack(i);
				if targetStack.leader~=nil then
					merge.mergeAIarmies(targetStack);
				end
			end
		end
	end
end

function merge.mergeAIarmies(targetStack)
	for i=0, targetStack.faction.stacksNum-1 do
		local stack = targetStack.faction:getStack(i);
		if stack.leader~=nil and targetStack~=stack and stack.siege==nil 
			and merge.distanceFromPoint(stack.leader.namedCharacter, targetStack.leader.xCoord, targetStack.leader.yCoord)<=7 
			and stack.leader:getTypeID()~=nil and targetStack.leader:getTypeID()~=nil 
			and((stack.leader:getTypeID()==6 and targetStack.leader:getTypeID()==6) or(stack.leader:getTypeID()==6 and targetStack.leader:getTypeID()==7) or(stack.leader:getTypeID()==7 and targetStack.leader:getTypeID()==6)) 
			and stack.numOfUnits+targetStack.numOfUnits<=20 then

			if targetStack.leader:getTypeID()~=3 then
				merge.mergeLogPrint(targetStack, "army");
				stack:mergeArmies(targetStack);
			elseif targetStack.leader:getTypeID()==3 then
				if targetStack.boardedArmy==nil or stack.boardedArmy==nil then
					merge.mergeLogPrint(targetStack, "fleet");
					stack:mergeArmies(targetStack);
				elseif stack.boardedArmy~=nil and targetStack.boardedArmy~=nil and stack.boardedArmy.numOfUnits+targetStack.boardedArmy.numOfUnits<=20 then
					merge.mergeLogPrint(targetStack, "fleet+army");
					stack.boardedArmy:mergeArmies(targetStack.boardedArmy);
					stack:mergeArmies(targetStack);
				end
			end
		end
	end
end

function merge.mergeLogPrint(targetStack, str)
	print("mergeAIarmies "..str..": "..targetStack.faction:getFactionName()..", "..targetStack.leader.namedCharacter.fullName..", coords: "..targetStack.leader.xCoord..", "..targetStack.leader.yCoord);
end

function merge.distanceFromPoint(selectedChar, x, y)
	local xChar, yChar = selectedChar.character.xCoord, selectedChar.character.yCoord
	local xMax, xMin, yMax, yMin = math.max(xChar, x), math.min(xChar, x), math.max(yChar, y), math.min(yChar, y)
	local xSegment, ySegment = xMax - xMin, yMax - yMin
	local hypotenuse = math.sqrt(xSegment^2 + ySegment^2)
	return hypotenuse        
end

return merge
---------------------------------------------------------------
---------------------------------------------------------------
---------------------------------------------------------------








