/// @description menu_callback_loadsaved()
/// @function menu_callback_loadsaved
function menu_callback_loadsaved() {
	menu_item_clear(1)
	menu_item_add(1, "마지막으로 저장된 게임 불러오기", noone)
	menu_item_add(1, "다른 파일에서 불러오기", noone)
	menu_item_add(1, "탐색기에서 저장 폴더 열기", noone)
	menu_item_add(1, "뒤로", menu_callback_back)
	menu_depth_change(1)



}
