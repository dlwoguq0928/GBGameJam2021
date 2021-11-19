// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function device_mouse_x_view(i){
	return device_mouse_x(i) - camera_get_view_x(view_camera[0]);
}