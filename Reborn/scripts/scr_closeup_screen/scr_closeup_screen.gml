// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_closeup_screen(arg) {
	var cam = view_camera[0];
	var cam_w = camera_get_view_width(cam);
	var cam_h = camera_get_view_height(cam);
	camera_set_view_size(cam,1280-arg,720-arg);
}