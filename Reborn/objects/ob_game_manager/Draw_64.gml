/// @descr


//# draw wanted
draw_set_color(c_ltgray);
draw_rectangle(view_wport[0]/2-60,0,view_wport[0]/2+60,100,false);
if (wanted)
{
	draw_sprite(p.sprite_index,0,view_wport[0]/2,50);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_font(ft_32);
	draw_set_color(c_red);
	draw_text(view_wport[0]/2,75,"Wanted");
}

//# draw xp
var ratio = xp/max_xp;
var bar_w = view_wport[0];
var bar_h = 20;
draw_set_color(c_yellow);
draw_rectangle(view_wport[0]/2-bar_w/2,0,view_wport[0]/2-bar_w/2+bar_w*ratio,0+bar_h,false);
draw_rectangle(view_wport[0]/2-bar_w/2,0,view_wport[0]/2+bar_w/2,0+bar_h,true);