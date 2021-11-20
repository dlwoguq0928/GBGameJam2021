/// @descr


if mouse_check_button_released(mb_left)
{
	intro_index += 1;
	alarm[0] = room_speed*6 - 1;
	
	if (intro_index == 16)
	{
		room_goto_custom(rm_prologue);
	}
}