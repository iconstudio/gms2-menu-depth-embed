/// @function ease_in_expo(delta)
/// @param delta { real }
function ease_in_expo(argument0) {
	if argument0 == 0
		return 0

	return power(2, 10 * (argument0 - 1))
}
