function stop_wand()
	PickupAction(63)
	PlaceAction(62)
end

function use_wand()
	if not IsCurrentAction(62) then
		UseAction(62)
		PickupAction(62)
		PlaceAction(63)
	end
end

function casting()
    return CastingBarFrame.casting
end

function channeling()
    return CastingBarFrame.channeling
end

function castingOrChanneling()
    return casting() or channeling()
end
