function warrior_arms_skull()
	if (GetRaidTargetIndex("target")==8) then
		attack()
	else
		target_skull()
	end
end

local function attack()
	rend()
	heroic_strike()
end

local function rend()
	if target_has_debuff("Ability_Gouge") then return end
	if get_rage()>10 then
		cast("Rend")
	else
		cast("Bloodrage")
	end
end


local function heroic_strike()
	if get_rage()>15 then
		cast("Heroic Strike")
	else
		cast("Bloodrage")
	end
end
