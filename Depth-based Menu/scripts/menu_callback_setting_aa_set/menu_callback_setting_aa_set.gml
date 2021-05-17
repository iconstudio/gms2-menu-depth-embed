/// @description menu_callback_setting_aa_set(value)
/// @function menu_callback_setting_aa_set
/// @param value { integer }
function menu_callback_setting_aa_set(argument0) {
	global.example_graphic_aa = 1 - argument0
	menu_callback_back()



}
