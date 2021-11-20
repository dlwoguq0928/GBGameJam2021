// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_instant(func){
	
	//
	//	THIS USE AS LIKE:
	//
	//	draw_instant(function() {
	//		//draw scripts
	//	});
	//
	
	var orig;
	orig[0] = draw_get_alpha()
	orig[1] = draw_get_color()
	orig[2] = draw_get_font()
	orig[3] = draw_get_halign()
	orig[4] = draw_get_lighting()
	orig[5] = draw_get_swf_aa_level()
	orig[6] = draw_get_valign()
	
	func();
	
	draw_set_alpha(orig[0]);
	draw_set_color(orig[1]);
	draw_set_font(orig[2]);
	draw_set_halign(orig[3]);
	draw_set_lighting(orig[4]);
	draw_set_swf_aa_level(orig[5]);
	draw_set_valign(orig[6]);
	
}