/// @description menu_callback_setting_effect()
/// @function menu_callback_setting_effect
function menu_callback_setting_effect() {
	menu_item_clear(2, 2 - global.example_graphic_effect)
	menu_item_add(2, "상", menu_callback_setting_effect_set)
	menu_item_add(2, "중", menu_callback_setting_effect_set)
	menu_item_add(2, "하", menu_callback_setting_effect_set)
	menu_item_add(2, "뒤로", menu_callback_back)
	menu_depth_change(2)



}
