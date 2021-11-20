/// @descr


if (alarm[1] == -1) && !instance_exists(ob_player_absorber)
{
	direction = p_dir;
	speed = (sprite_index == spr_player) ? p_spd*3/4 : p_spd;
}
else
{
	direction = p_dir;
	speed = 0;
}
	
if (hspeed != 0) 
{
	image_xscale = sign(hspeed);
	if (sprite_index == spr_player) image_speed = 1;
	else image_speed = 0.25;
}
else
{
	image_speed = 0;
}


//흡수 타겟 정하기
absorber_creature = instance_nearest(x,y,ob_parent_creature);

//show_debug_message(sprite_get_name(absorber_creature.sprite_index))

//knockback
if(knockback_spd > 0) 
{
	if (alarm[1] == -1) && !instance_exists(ob_player_absorber)
	{
		direction = p_dir;
		speed = (sprite_index == spr_player) ? p_spd*3/4 : p_spd;
	}
	else
	{
		direction = p_dir;
		speed = 0;
	}
	
	motion_add(knockback_dir,knockback_spd);
	knockback_spd -= 1;
	if (knockback_spd < 0)
	{
		knockback_spd = 0;
	}
}

//solid processing
if place_meeting(x+hspeed,y,ob_parent_walls)
{
	hspeed = 0;
}

if place_meeting(x,y+vspeed,ob_parent_walls)
{
	vspeed = 0;
}

//튜토리얼 무적
if (room == rm_stage0)
{
	p_invincible = 2;
}

//depth processing
depth = -y;

//룸 바깥 못 나가게 처리
var spr_w = sprite_get_width(sprite_index);
var spr_h = sprite_get_height(sprite_index);
if (x < spr_w/2) x = spr_w/2;
if (x > room_width - spr_w/2) x = room_width - spr_w/2;
if (y < spr_h/2) y = spr_h/2;
if (y > room_height - spr_h/2) y = room_height - spr_h/2;








