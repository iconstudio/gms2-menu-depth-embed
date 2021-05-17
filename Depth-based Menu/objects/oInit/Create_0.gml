/// @description 초기화
/*
	 예시용 프로필 변수들입니다.
*/
global.example_profile_name = "예시 이름"
global.example_profile_rank = 0
global.example_profile_win = 0
global.example_profile_lose = 0
global.example_profile_draw = 0

/*
	 예시용 설정 변수들입니다. 실제 사용에서는 example 접두사 대신 option 등을 
	붙이는 것을 추천드립니다.
*/
global.example_volume_bgm = 7
global.example_volume_sfx = 10
global.example_graphic_texture = 2
global.example_graphic_effect = 2
global.example_graphic_particle = 2
global.example_graphic_shadow = 2
global.example_graphic_aa = 1

/*
	 예시용 도전과제 변수들입니다. 실제 사용에서는 이 세 전역 배열들을 배열 하나에 모두 
	넣고 사용하는 것이 권장됩니다.
*/
global.example_achievement_number = 3
global.example_achievement_value = array_create(global.example_achievement_number, 0)
global.example_achievement_name = array_create(global.example_achievement_number, "")
global.example_achievement_info = array_create(global.example_achievement_number, "")

global.example_achievement_name[0] = "도전과제 1"
global.example_achievement_info[0] = "설명 1"

global.example_achievement_value[1] = 1
global.example_achievement_name[1] = "도전과제 2"
global.example_achievement_info[1] = "설명 2"

global.example_achievement_name[2] = "도전과제 3"
global.example_achievement_info[2] = "설명 3"

alarm[0] = 1
