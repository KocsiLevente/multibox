function banish_green()
    banish_by_icon(4)
end

function banish_moon()
    banish_by_icon(5)
end

function banish_blue()
    banish_by_icon(6)
end

function banish_by_icon(icon)
    target_by_icon(icon)
    if (GetRaidTargetIndex("target")==6 then
        cast("Banish")
    end
end
