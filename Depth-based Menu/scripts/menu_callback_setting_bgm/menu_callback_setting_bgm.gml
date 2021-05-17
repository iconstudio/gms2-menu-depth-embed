/// @description menu_callback_setting_bgm()
/// @function menu_callback_setting_bgm
function menu_callback_setting_bgm() {
	menu_item_clear(2, 10 - global.example_volume_bgm)
	for (var i = 10; 0 < i; --i)
		menu_item_add(2, string(i), menu_callback_setting_bgm_set)
	menu_item_add(2, "OFF", menu_callback_setting_bgm_set)
	menu_item_add(2, "뒤로", menu_callback_back)
	menu_depth_change(2)



}
