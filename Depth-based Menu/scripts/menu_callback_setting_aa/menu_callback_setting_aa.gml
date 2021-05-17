/// @description menu_callback_setting_aa()
/// @function menu_callback_setting_aa
function menu_callback_setting_aa() {
	menu_item_clear(2, 1 - global.example_graphic_aa)
	menu_item_add(2, "켜기", menu_callback_setting_aa_set)
	menu_item_add(2, "끄기", menu_callback_setting_aa_set)
	menu_item_add(2, "뒤로", menu_callback_back)
	menu_depth_change(2)



}
