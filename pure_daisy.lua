--while true
--refuel
--assume given chest, pure daisy (floating)
--check a 3x3x2 (lxwxh) area, plus space/chest for the output chest
--place daisy, input chest
--enter inner loop:
--	extract up to a stack of either wood or stone from the input chest
--	if  > 0 non-living materials
--		replace all living blocks surrouding the pure daisy with non-living
--	wait 60 seconds (to allow purification)
--	put all living materials into output chest

print("initializing pure_daisy automation script")
print("turtle has equipped " .. assert(turtle.getEquippedRight()))
--refuel function
function do_refuel()
	--todo check for surrounding chests
	local toReselect = turtle.getSelectedSlot()
	for i = 1, 16 do
		turtle.select(i)
		local isFuel, reason = turtle.refuel(0) --ignore reason
		if isFuel then
			turtle.refuel()
		end
	end
	turtle.select(toReselect)
end

do_refuel()

		
