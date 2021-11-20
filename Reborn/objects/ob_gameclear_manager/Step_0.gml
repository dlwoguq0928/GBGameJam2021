/// @descr

//화면 터치 시 메인으로 이동
if mouse_check_button_released(mb_left)
{
	room_goto(rm_main);
	
	selected_stage = min(2,selected_stage+1);
}