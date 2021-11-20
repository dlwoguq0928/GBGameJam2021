/// @descr



if (exit_delay > 0)
{
	draw_instant(function() {
		draw_set_valign(fa_middle);
		draw_set_halign(fa_center);
		draw_set_font(exit_font);
		var drw_x = room_width/2;
		var drw_y = room_height - 80 - font_get_size(exit_font);
		var str_w = string_width(exit_confirm);
		var str_h = string_height(exit_confirm);
		var padding_w = 16;
		var padding_h = 16;
		draw_set_color(c_white);
		draw_set_alpha(0.75);
		draw_roundrect_ext(
			drw_x-str_w/2-padding_w,
			drw_y-str_h/2-padding_h,
			drw_x+str_w/2+padding_w,
			drw_y+str_h/2+padding_h,
			str_h+padding_h+padding_h,
			str_h+padding_h+padding_h,
			false
		);
		draw_set_color(c_black);
		draw_set_alpha(1);
		draw_text(drw_x,drw_y,exit_confirm);
	});
}