/// @descr

draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(ft_24);

var str = str_arr[tutorial_index];
var str_w = string_width(str);
var str_h = string_height(str);

draw_set_colour(c_black);
draw_set_alpha(0.5);
draw_rectangle(view_wport[0]/2-str_w/2,240-str_h/2,view_wport[0]/2+str_w/2,240+str_h/2,false);

draw_set_colour(c_white);
draw_set_alpha(1);
draw_text(view_wport[0]/2,240,str);