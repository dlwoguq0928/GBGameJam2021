/// @descr



//set angle according to direction
image_angle = direction;

//attack player
if place_meeting(x,y,p)
{
	instance_destroy();
	if (p.alarm[1] == -1)
	{
		if (p_invincible == 0)
		{
			//knockback
			p.knockback_spd = 10;
			p.knockback_dir = point_direction(x,y,p.x,p.y);
				
			p_hp -= 1;
			p_invincible = room_speed*0.5;
			//p.x += lengthdir_x(10,point_direction(x,y,p.x,p.y));
			//p.y += lengthdir_y(10,point_direction(x,y,p.x,p.y));
			if (p_hp <= 0)	scr_gameover();
		}
	}
}

//solid processing
if place_meeting(x,y,ob_wall)
{
	instance_destroy();
}

//depth processing
depth = -y;