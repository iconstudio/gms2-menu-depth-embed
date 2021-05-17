/// @description menu_callback_setting_effect_set(value)
/// @function menu_callback_setting_effect_set
/// @param value { integer }
function menu_callback_setting_effect_set(argument0) {
	global.example_graphic_effect = 2 - argument0
	menu_callback_back()



}
