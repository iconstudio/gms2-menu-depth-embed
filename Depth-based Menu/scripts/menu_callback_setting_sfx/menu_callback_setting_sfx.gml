/// @description menu_callback_setting_sfx()
/// @function menu_callback_setting_sfx
function menu_callback_setting_sfx() {
	menu_item_clear(2, 10 - global.example_volume_sfx)
	for (var i = 10; 0 < i; --i)
		menu_item_add(2, string(i), menu_callback_setting_sfx_set)
	menu_item_add(2, "OFF", menu_callback_setting_sfx_set)
	menu_item_add(2, "뒤로", menu_callback_back)
	menu_depth_change(2)



}
