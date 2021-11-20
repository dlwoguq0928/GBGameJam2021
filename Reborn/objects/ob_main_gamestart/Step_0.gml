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
		var rm_idx = asset_get_index("rm_stage"+string(selected_stage));
		room_goto(rm_idx);
	}
}