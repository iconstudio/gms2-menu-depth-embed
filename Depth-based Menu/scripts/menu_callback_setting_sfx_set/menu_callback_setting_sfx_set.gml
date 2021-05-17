/// @description menu_callback_setting_sfx_set(volume)
/// @function menu_callback_setting_sfx_set
/// @param volume { integer }
function menu_callback_setting_sfx_set(argument0) {
	global.example_volume_sfx = 10 - argument0
	menu_callback_back()



}
