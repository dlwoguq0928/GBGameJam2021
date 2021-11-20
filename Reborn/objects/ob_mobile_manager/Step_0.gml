/// @descr



var rm_prev = room_previous(room);
if (rm_prev == -1 || rm_prev == rm_init || rm_prev == rm_prologue)
{
	if (exit_delay > 0)
	{
		exit_delay -= 1;
	
		if keyboard_check_pressed(vk_backspace)
		{
			game_end();
			game_restart();
		}
	}
	else
	{
		if keyboard_check_pressed(vk_backspace)
		{
			exit_delay = exit_delay_std;
		}
	}
}
else if (room == rm_stage0 || room == rm_stage1 || room == rm_stage2)
{
	if keyboard_check_pressed(vk_backspace)
	{
		room_goto_custom(rm_main);
	}
}
else
{
	if keyboard_check_pressed(vk_backspace)
	{
		room_goto_custom_previous();
	}
}