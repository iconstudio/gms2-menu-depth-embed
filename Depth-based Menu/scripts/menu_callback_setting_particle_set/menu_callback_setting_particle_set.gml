/// @description menu_callback_setting_particle_set(value)
/// @function menu_callback_setting_particle_set
/// @param value { integer }
function menu_callback_setting_particle_set(argument0) {
	global.example_graphic_particle = 2 - argument0
	menu_callback_back()



}
