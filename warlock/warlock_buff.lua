-- SUCCUBUS
function warlock_buffs_succubus()
    demon_armor()
    demonic_sacrifice()
end

-- IMP
function warlock_buffs_imp()
    demon_armor()
    demonic_sacrifice()
end

function demon_armor()
    TargetUnit("player")
    if target_has_buff("Spell_Shadow_RagingScream") then
        return
    end
    if (UnitMana("player")>=1580) then
        cast("Demon Armor")
    else
        cast("Life Tap")
    end
end

function demonic_sacrifice()
    TargetUnit("player")
    if target_has_buff("Spell_Shadow_PsychicScream") then
        return
    end
    cast("Demonic Sacrifice")
    if (UnitMana("player")>=1373) then
        cast("Fel Domination")
        cast("Summon Succubus")
    else
        cast("Life Tap")
    end
end

function summon_imp()
    TargetUnit("player")
    if target_has_buff("Spell_Shadow_BloodBoil") then
        return
    end
    if (UnitMana("player")>=1000) then
        cast("Fel Domination")
        cast("Summon Imp")
    else
        cast("Life Tap")
    end
end
