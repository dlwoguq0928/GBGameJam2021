/// @descr


if mouse_check_button_released(mb_left)
{
	tutorial_index += 1;
	
	if (tutorial_index == 5) room_goto(rm_main);
}
