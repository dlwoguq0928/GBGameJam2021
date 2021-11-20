/// @descr


/*
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(ft_32);
draw_set_color(c_red);
draw_text(room_width/2,room_height/2,"버그가 아니라 기능이에요..!!");
*/


switch(prologue_index)
{
	default:	break;
	case 0:
		draw_sprite_ext(spr_capsule_before,0,room_width/2,room_height/2,1,1,capsule_angle,c_white,1);
		break;
	case 1:
		draw_sprite(spr_capsule_after,0,room_width/2,room_height/2);
		break;
}
