/// @descr


visible = (selected_stage <= 1) ? true : false;


image_blend = c_white;
if position_meeting(mouse_x,mouse_y,id)
{
	if mouse_check_button(mb_left)
	{
		image_blend = c_ltgray;
	}
	if mouse_check_button_released(mb_left)
	{
		if (selected_stage <= 1)
			selected_stage += 1;
	}
}