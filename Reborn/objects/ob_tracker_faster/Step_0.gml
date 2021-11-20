/// @descr


	
if (speed != 0) 
{
	image_xscale = sign(hspeed);
	image_speed = 0.25;
}
else
{
	image_speed = 0;
}


//if wanted
if (wanted)
{
	//tracker move
	if (p.alarm[1] == -1) && !instance_exists(ob_player_absorber)
	{
		direction = point_direction(x,y,p.x,p.y);
		speed = t_spd_std + 2;
	}
	else
	{
		speed = 0;
	}
	
	//attack player
	if place_meeting(x,y,p)
	{
		speed = 0;
	
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
				scr_shake_screen(10);
				
				//particle & attack_effect
				repeat(5) scr_particle_generate();
				ob_screen_manager.alarm[2] = room_speed*0.25;
	
				if(p_hp <= 0) scr_gameover();
			}
		}
	}
}

//solid processing
if place_meeting(x+hspeed,y,ob_wall)
{
	hspeed = 0;
}

if place_meeting(x,y+vspeed,ob_wall)
{
	vspeed = 0;
}

//depth processing
depth = -y;