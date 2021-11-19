/// @descr


//# draw wanted
draw_set_color(c_white);
draw_rectangle(view_wport[0]/2-60,0,view_wport[0]/2+60,100,false);

//# draw timeline
var ratio = timeline/timeline_max;
var bar_w = 120;
var bar_h = 10;
draw_set_color(c_white);
draw_rectangle(view_wport[0]/2-60,110,view_wport[0]/2-60+bar_w*ratio,110+bar_h,false);