/// @descr

if (hspeed != 0) 
{
	image_xscale = sign(hspeed);
	image_speed = 0.25;
}
else
{
	image_speed = 0;
}


//룸 바깥 못 나가게 처리
var spr_w = sprite_get_width(sprite_index);
var spr_h = sprite_get_height(sprite_index);
if (x < spr_w/2) x = spr_w/2;
if (x > room_width - spr_w/2) x = room_width - spr_w/2;
if (y < spr_h/2) y = spr_h/2;
if (y > room_height - spr_h/2) y = room_height - spr_h/2;