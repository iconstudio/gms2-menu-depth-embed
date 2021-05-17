/// @description menu_callback_setting_bgm_set(volume)
/// @function menu_callback_setting_bgm_set
/// @param volume { integer }
function menu_callback_setting_bgm_set(argument0) {
	global.example_volume_bgm = 10 - argument0
	menu_callback_back()



}
