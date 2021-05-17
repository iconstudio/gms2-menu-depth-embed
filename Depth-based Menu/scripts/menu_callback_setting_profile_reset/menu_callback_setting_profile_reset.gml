/// @description menu_callback_setting_profile_reset()
/// @function menu_callback_setting_profile_reset
function menu_callback_setting_profile_reset() {
	menu_item_clear(3, 1)
	menu_item_add(3, "예", menu_callback_setting_profile_reset_confirmed)
	menu_item_add(3, "아니오", menu_callback_back)
	menu_depth_change(3)



}
