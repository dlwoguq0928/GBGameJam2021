/// @descr

image_blend = c_white;
if position_meeting(mouse_x,mouse_y,id)
{
	if mouse_check_button(mb_left)
	{
		image_blend = c_ltgray;
	}
	if mouse_check_button_released(mb_left)
	{
		if (selected_stage == 0)
		{
			var rm_idx = asset_get_index("rm_stage"+string(selected_stage));
			room_goto(rm_idx);
			tutorial_cleared = true;
		}
		else
		{
			if (tutorial_cleared)
			{
				var rm_idx = asset_get_index("rm_stage"+string(selected_stage));
				room_goto(rm_idx);
			}
			else
			{
				show_message_async("스테이지 0을 먼저 클리어 해야 합니다!");
			}
		}
	}
}