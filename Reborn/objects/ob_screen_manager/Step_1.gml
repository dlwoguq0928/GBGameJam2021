/// @descr

//shake
if (screen_shake > 0)
{
	var cam = view_camera[0];
	var cam_x = camera_get_view_x(cam);
	var cam_y = camera_get_view_y(cam);
	camera_set_view_pos(cam,cam_x+random_range(-screen_shake,screen_shake),cam_y+random_range(-screen_shake,screen_shake))
	
	screen_shake -= 1;
	if (screen_shake < 0)
	{
		screen_shake = 0;
	}
}