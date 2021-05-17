/// @description menu_callback_setting_shadow()
/// @function menu_callback_setting_shadow
function menu_callback_setting_shadow() {
	menu_item_clear(2, 2 - global.example_graphic_shadow)
	menu_item_add(2, "상", menu_callback_setting_shadow_set)
	menu_item_add(2, "중", menu_callback_setting_shadow_set)
	menu_item_add(2, "하", menu_callback_setting_shadow_set)
	menu_item_add(2, "뒤로", menu_callback_back)
	menu_depth_change(2)



}
