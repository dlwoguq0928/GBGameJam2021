/// @descr

//check if mouse clicked (device 0~1)
var mse_chk_btn, mse_chk_btn_pressed, mse_chk_btn_released;
mse_chk_btn[0] = false; mse_chk_btn[1] = false;
mse_chk_btn_pressed[0] = false; mse_chk_btn_pressed[1] = false;
mse_chk_btn_released[0] = false; mse_chk_btn_released[1] = false;
for (i=1;i>=0;i--)
{
	if device_mouse_check_button(i,mb_left)
	{
		mse_chk_btn[i] = true;
	}
	if device_mouse_check_button_pressed(i,mb_left)
	{
		mse_chk_btn_pressed[i] = true;
	}
	if device_mouse_check_button_released(i,mb_left)
	{
		mse_chk_btn_released[i] = true;
	}
}

//if pressed, on joystick controlling
for(i=1;i>=0;i--)
{
	var mouse_view_x = device_mouse_x_view(i);
	var mouse_view_y = device_mouse_y_view(i);
	
	if mse_chk_btn_pressed[i]
	{
		var dist;
		
		//# joystick
		dist = point_distance(joystick_origin_x,joystick_origin_y,mouse_view_x,mouse_view_y);
		if (dist <= joystick_radius)
		{
			if (joystick_control == -1)
			{
				joystick_control = i;
			}
		}
		
		//# button
		dist = point_distance(button_origin_x,button_origin_y,mouse_view_x,mouse_view_y);
		if (dist <= button_radius)
		{
			if instance_exists(absorber_creature)
			{
				dist = point_distance(p.x,p.y,absorber_creature.x,absorber_creature.y);
				if (dist <= absorber_radius)
				{
					if (absorber_cooldown == 0)
					{
						scr_absorber_st(absorber_creature);  //'흡수'
					}
				}
			}
		}
		
	}

	//if clicked, move joystick
	if mse_chk_btn[i]
	{
		if (joystick_control == i)
		{
			joystick_point_x = mouse_view_x;
			joystick_point_y = mouse_view_y;
	
			var dist = point_distance(joystick_origin_x,joystick_origin_y,mouse_view_x,mouse_view_y);
			if (dist > joystick_radius)
			{
				var dir = point_direction(joystick_origin_x,joystick_origin_y,mouse_view_x,mouse_view_y);
				var delta_x = lengthdir_x(joystick_radius,dir);
				var delta_y = lengthdir_y(joystick_radius,dir);
				joystick_point_x = joystick_origin_x + delta_x;
				joystick_point_y = joystick_origin_y + delta_y;
			}
	
			if (p.alarm[1] == -1) && !instance_exists(ob_player_absorber)
			{
				p_dir = point_direction(joystick_origin_x,joystick_origin_y,joystick_point_x,joystick_point_y);
				p_spd = p_spd_std;
			}
		}
	}

	//if released, off joystick controlling
	if mse_chk_btn_released[i]
	{
		if (i == joystick_control)
		{
			joystick_control = -1;
		
			joystick_point_x = joystick_origin_x;
			joystick_point_y = joystick_origin_y;
	
			p_dir = -1;
			p_spd = 0;
		}
	}
}