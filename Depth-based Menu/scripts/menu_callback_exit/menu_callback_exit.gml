/// @description menu_callback_exit()
/// @function menu_callback_exit
function menu_callback_exit() {
	menu_item_clear(1, 1)
	menu_item_add(1, "예", menu_callback_exit_confirmed)
	menu_item_add(1, "아니오", menu_callback_back)
	menu_depth_change(1)



}
