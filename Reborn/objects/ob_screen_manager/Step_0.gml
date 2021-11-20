/// @descr


//close up
var cam = view_camera[0];
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);
if (cam_w < 1280)
{
	camera_set_view_size(cam,cam_w+5,cam_h+5);
}

