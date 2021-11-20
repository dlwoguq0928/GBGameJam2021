/// @descr
/// @descr/// @descr

draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(ft_40);
draw_set_color(c_red);
draw_text(room_width/2,280,"게임오버!");
draw_set_font(ft_32);
draw_set_color(c_white);
draw_text(room_width/2,360,"흡수한 생명체 + "+string(xp));
draw_text(room_width/2,440,"기억의 조각 + "+string(300));