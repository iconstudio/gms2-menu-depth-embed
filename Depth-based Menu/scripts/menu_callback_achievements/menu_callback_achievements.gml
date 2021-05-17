/// @description menu_callback_achievements()
/// @function menu_callback_achievements
function menu_callback_achievements() {
	menu_item_clear(1)
	for (var i = 0; i < global.example_achievement_number; ++i)
		menu_item_add(1, global.example_achievement_name[i] + " - " + global.example_achievement_info[i], noone, "", 0 < global.example_achievement_value[i] ? 1 : 0.5)
	menu_item_add(1, "뒤로", menu_callback_back)
	menu_depth_change(1)



}
