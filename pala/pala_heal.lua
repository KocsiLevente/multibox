function pala_heal_group1()
    pala_heal_by_group(1)
end

function pala_heal_group2()
    pala_heal_by_group(2)
end

function pala_heal_by_group(group)
    TargetUnit(group_list[group].tank)
    pala_heal_tank()
    priest_heal_self()
    TargetUnit(group_list[group].heal)
    pala_heal_dps()
    for i,dps in pairs(group_list[group].dps_list) do
		TargetUnit(dps)
        pala_heal_dps()
	end
end

function pala_heal_tank()
    if UnitIsDead("target") then return end
    pala_heal_under_35()
    lay_on_hand()
    heal_under_percent(0.5, "Flash of Light")
    heal_under_percent(0.7, "Flash of Light(Rank 4)")
end

function pala_heal_under_35()
    if is_target_hp_under(0.35) then
        cast("Divine Favor")
        cast("Holy Light")
    end
end

function lay_on_hand()
    if is_target_hp_under(0.15) and UnitMana("player") < 0.05 then
        if casting_or_channeling() then SpellStopCasting() end
        cast("Lay on Hands")
    end
end

function pala_heal_self()
    if is_player_hp_under(0.25) then
        if casting_or_channeling() then SpellStopCasting() end
        cast("Divine Shield")
    end
end

function pala_heal_dps()
    heal_under_percent(0.2, "Blessing of Protection")
    heal_under_percent(0.6, "Flash of Light")
end
