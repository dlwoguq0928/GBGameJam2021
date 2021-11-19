// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function device_mouse_y_view(i){
	return device_mouse_y(i) - camera_get_view_y(view_camera[0]);
}