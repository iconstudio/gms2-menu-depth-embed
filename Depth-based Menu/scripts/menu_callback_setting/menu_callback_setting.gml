/// @description menu_callback_setting()
/// @function menu_callback_setting
function menu_callback_setting() {
	menu_item_clear(1)
	menu_item_add(1, "프로필 관리", menu_callback_setting_profile)
	menu_item_add(1, "배경음 음량", menu_callback_setting_bgm, "example_volume_bgm")
	menu_item_add(1, "효과음 음량", menu_callback_setting_sfx, "example_volume_sfx")
	menu_item_add(1, "텍스쳐 수준", menu_callback_setting_texture, "example_graphic_texture")
	menu_item_add(1, "효과 수준", menu_callback_setting_effect, "example_graphic_effect")
	menu_item_add(1, "입자 수준", menu_callback_setting_particle, "example_graphic_particle")
	menu_item_add(1, "그림자 수준", menu_callback_setting_shadow, "example_graphic_shadow")
	menu_item_add(1, "부드러운 가장자리", menu_callback_setting_aa, "example_graphic_aa")
	menu_item_add(1, "뒤로", menu_callback_back)
	menu_depth_change(1)



}
