/// @description 초기화
/*
	 메뉴 전체에 관련하는 변수들입니다.
	
	 menu_mode는 유한 상태 기계 방식으로 메뉴의 작동 방식을 정의하는데 쓰입니다. 쉽게 말해 값마다 완전히 
	다른 방법으로 메뉴가 작동한다는 뜻입니다. MODE_NONE일 때를 제외하면 모든 경우에서 메뉴가 페이드 아웃
	합니다.

	 menu_depth_max는 현재 메뉴 상태에서 가장 깊은 수준의 크기를 의미합니다. 이 값보다 더 깊이 
	들어갈 수 없습니다(= menu_depth의 최댓값입니다).
*/
menu_depth_max = 0
menu_depth = 0

MODE_NONE = 0
MODE_EXAMPLE = 1
MODE_EXIT = 99
menu_mode = MODE_NONE
fade_time = 0
fade_period = seconds(1.5)

/*
	 메뉴 항목에 관련된 변수들입니다. 각 변수들의 이름에 유의하세요. menu_items_* 계열은 항목 여러개에 
	영향을 주며 menu_item_* 계열은 한 항목에만 영향을 줍니다.
*/
menu_items = []
menu_items_number = []
menu_items_position_y = []
menu_items_alpha = []
menu_items_alpha_time = [] // 깊이가 바뀔 때마다 0으로 바뀝니다.
menu_items_alpha_period = seconds(0.3)

menu_item_selected = []
menu_item_selected_previous = []

/*
	 메뉴를 그릴 때 참조되는 변수들입니다. menu_draw_x_* 계열의 변수들은 모든 깊이의 메뉴들이 
	그려질 시작 x 좌표를 결정하는데 사용됩니다. 이 좌표는 현재 깊이에서 더 높은 메뉴는 왼쪽으로 
	밀려나고, 더 깊은 메뉴는 오른쪽으로 밀려나며 페이드 아웃 후 사라집니다.

	 반면 menu_draw_y_* 계열의 변수들은 현재 선택된 깊이에서만의 메뉴 항목들에 영향을 줍니다.

	 이 모든 과정에는 지연 시간이 존재합니다 time과 period 변수가 그것입니다. 각 주석에 있는 것 
	처럼 x 변수는 깊이에만 관여하며, y 변수는 항목에만 관여합니다. 한편 y 변수는 깊이 단위로 
	보면 지역적이지만 메뉴를 선택하고 실행하는 과정에도 연관이 있습니다. 항목을 넘길 때마다 메뉴가 
	부드럽게 움직이는데, 이 움직임이 다 끝나야 메뉴를 실행시킬 수 있습니다. 이는 버그를 방지함에 
	목적이 있습니다. 즉 menu_draw_y_transition_time == menu_draw_y_transition_period 일때만 메뉴 
	깊이를 전환할 수 있습니다. 그런데 둘이 같으면 항목 전환 동작을 하지 않으므로 만약 다른 깊이로 
	전환할 때는 불필요한 항목 전환 애니메이션을 볼 필요가 없습니다.
*/
menu_item_width_px = 230
menu_item_height_px = 32

menu_draw_x_start = 480
menu_draw_x = menu_draw_x_start
menu_draw_x_before = menu_draw_x_start // 깊이가 바뀔 때마다 현재 항목을 저장합니다.
menu_draw_x_transition_time = 0 // 깊이가 바뀔 때마다 0으로 바뀝니다.
menu_draw_x_transition_period = seconds(0.4)

menu_draw_y_start = 200
menu_draw_y = menu_draw_y_start
menu_draw_y_transition_time = 0 // 메뉴 항목이 바뀔 때마다 0으로 바뀝니다. 깊이는 상관없습니다.
menu_draw_y_transition_period = seconds(0.1)

/*
	 기타 메뉴 설정입니다. Enter 키룰 누르면 Space 키나 A 글쇠를 누른 것과 동일한 이벤트가 발생하게 
	만듭니다.
*/
keyboard_set_map(vk_space, vk_enter)
keyboard_set_map(ord("A"), vk_enter)

/*
	 게임메이커에서는 스크립트 자체가 하나의 자료형으로 취급됩니다. C의 함수 포인터와는 다르고, 
	C++의 함자, 파이썬과 자바스크립트의 함수와 동일한 구조입니다. 그렇지만 현재 2019-06-26 
	기준으로는 GML 개선이 이루어지지 않아서 script_execute 함수로만 실행시킬 수 있습니다. 추후에 
	GML 업데이트가 이루어지면 이 예제 역시 수정하여 올릴 예정입니다.

	 한편 게임메이커 특성 상 콜백을 구분하기 위해 이름을 길게 지을 수 밖에 없습니다. GML 개선이 
	이루어지면 스크립트를 만들 필요없이 함수를 곧바로 코드에서 만들어낼 수 있으므로 가독성과 성능이 
	향상됩니다.

	 이렇게 다른 함수에서 인자로 전달되어 호출되는 함수들을 콜백(Callback) 이라고 부릅니다.

	 시연용 메뉴를 추가합니다. 이 예제에서 가장 자세한 구현이 되있는 건 설정 항목입니다. 수많은 
	콜백들이 겹겹히 쌓여있습니다. 소위 말하는 '콜백 지옥'에 빠지지 않도록 조심하세요. 콜백이 너무 
	많으면 코드를 이해하기가 아주 힘들어집니다. 복잡하게 꼬인 코드를 일컫는 '스파게티 코드'와는 
	다른 종류의 어려움이 있습니다.
*/
menu_item_clear(0, 1)
menu_item_add(0, "멀티 플레이", menu_callback_multiplay, "", 0.5)
menu_item_add(0, "싱글 플레이", menu_callback_singleplay)
menu_item_add(0, "게임 불러오기", menu_callback_loadsaved)
menu_item_add(0, "달성 과제", menu_callback_achievements)
menu_item_add(0, "설정", menu_callback_setting)
menu_item_add(0, "게임 종료", menu_callback_exit)

/*
	 그리기 설정입니다.
*/
draw_set_color($ffffff)
draw_set_halign(0)
draw_set_valign(0)
