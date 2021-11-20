// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function draw_macro(valign,halign,colour,fontSize,func)
{
	//#
	//# This can be used like:
	//# draw_macro(16,function() {
	//#		// Your Draw Code
	//# });
	//# 
	
	draw_set_valign(valign);
	draw_set_halign(halign);
	draw_set_colour(colour);
	draw_set_font_added(fontSize,false);
	func();
}
