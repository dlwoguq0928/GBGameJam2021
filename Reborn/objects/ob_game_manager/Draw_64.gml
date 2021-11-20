/// @descr



//# draw xp
var ratio = xp/max_xp;
var bar_w = 1180;
var bar_h = 20;
draw_set_alpha(0.5);
draw_set_color(c_white);
draw_rectangle(101,0,100+bar_w,0+bar_h,false);
draw_set_alpha(1);
draw_set_color(c_yellow);
draw_rectangle(101,0,100+bar_w*ratio,0+bar_h,false);

//# draw wanted
draw_set_alpha(1);
draw_set_color(c_dkgray);
draw_rectangle(0,0,100,100,false);
if (wanted)
{
	draw_sprite(p.sprite_index,0,50,50);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_font(ft_24);
	draw_set_color(c_red);
	draw_text(50,75,"Wanted");
}