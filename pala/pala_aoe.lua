function pala_aoe_group1()
    pala_aoe_by_group(1)
end

function pala_aoe_group2()
    pala_aoe_by_group(2)
end

function pala_aoe_by_group(group)
    cast("Consecration")
    for i,dps in pairs(group_list[group].dps_list) do
		TargetUnit(dps)
        pala_heal_dps()
	end
end
