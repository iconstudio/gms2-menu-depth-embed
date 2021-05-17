/// @description menu_callback_setting_profile()
/// @function menu_callback_setting_profile
function menu_callback_setting_profile() {
	menu_item_clear(2, 0)
	menu_item_add(2, "이름", noone, "example_profile_name")
	menu_item_add(2, "등급", noone, "example_profile_rank")
	menu_item_add(2, "승리 수", noone, "example_profile_win")
	menu_item_add(2, "패배 수", noone, "example_profile_lose")
	menu_item_add(2, "무승부 수", noone, "example_profile_draw")
	menu_item_add(2, "프로필 초기화", menu_callback_setting_profile_reset)
	menu_item_add(2, "뒤로", menu_callback_back)
	menu_depth_change(2)



}
