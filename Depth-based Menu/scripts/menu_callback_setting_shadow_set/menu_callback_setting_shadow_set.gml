/// @description menu_callback_setting_shadow_set(value)
/// @function menu_callback_setting_shadow_set
/// @param value { integer }
function menu_callback_setting_shadow_set(argument0) {
	global.example_graphic_shadow = 2 - argument0
	menu_callback_back()



}
