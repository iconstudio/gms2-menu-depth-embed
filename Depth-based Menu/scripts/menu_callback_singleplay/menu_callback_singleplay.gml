/// @description menu_callback_singleplay()
/// @function menu_callback_singleplay
function menu_callback_singleplay() {
	menu_item_clear(1)
	menu_item_add(1, "캠페인", noone)
	menu_item_add(1, "인공지능 대전", noone)
	menu_item_add(1, "사용자 정의 게임", noone)
	menu_item_add(1, "뒤로", menu_callback_back)
	menu_depth_change(1)



}
