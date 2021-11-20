/// @descr

//# draw hp bar
var ratio = p_hp/p_max_hp;
var bar_w = 100;
var bar_h = 10;
draw_set_color(c_red);
draw_rectangle(p.x-bar_w/2,p.y-60,p.x-bar_w/2+bar_w*ratio,p.y-50,false);

//# draw timeline
var ratio = timeline/timeline_max;
var bar_w = 100;
var bar_h = 10;
draw_set_color((wanted) ? c_yellow : c_lime);
draw_rectangle(p.x-bar_w/2,p.y-50,p.x-bar_w/2+bar_w*ratio,p.y-40,false);