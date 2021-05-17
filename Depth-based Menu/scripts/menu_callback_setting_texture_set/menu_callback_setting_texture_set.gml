/// @description menu_callback_setting_texture_set(value)
/// @function menu_callback_setting_texture_set
/// @param value { integer }
function menu_callback_setting_texture_set(argument0) {
	global.example_graphic_texture = 2 - argument0
	menu_callback_back()



}
