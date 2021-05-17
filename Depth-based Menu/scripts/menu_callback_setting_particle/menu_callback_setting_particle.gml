/// @description menu_callback_setting_particle()
/// @function menu_callback_setting_particle
function menu_callback_setting_particle() {
	menu_item_clear(2, 2 - global.example_graphic_particle)
	menu_item_add(2, "모두", menu_callback_setting_particle_set)
	menu_item_add(2, "중간", menu_callback_setting_particle_set)
	menu_item_add(2, "없음", menu_callback_setting_particle_set)
	menu_item_add(2, "뒤로", menu_callback_back)
	menu_depth_change(2)



}
