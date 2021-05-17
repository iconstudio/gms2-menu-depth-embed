/// @description menu_item_clear(depth, [select])
/// @function menu_item_clear
/// @param depth { integer }
/// @param [select] { integer }
function menu_item_clear() {
	var mdepth = argument[0]
	var mselect = argument_count > 1 ? argument[1] : 0
	if menu_depth_max < mdepth
		menu_depth_max = mdepth

	menu_items_number[mdepth] = 0
	menu_items[mdepth, 0] = []
	menu_items_position_y[mdepth] = menu_draw_y_start - mselect * menu_item_height_px
	menu_items_alpha[mdepth] = 0
	menu_items_alpha_time[mdepth] = 0

	menu_item_selected[mdepth] = mselect
	menu_item_selected_previous[mdepth] = mselect



}
