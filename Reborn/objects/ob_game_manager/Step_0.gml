/// @descr

//player move
with(ob_parent_not_players)
{
	direction = p_dir - 180;
	speed = p_spd;
}

//reduce the timeline
if (timeline > 0)
{
	timeline -= 1/room_speed;
	if (timeline < 0)
	{
		timeline = 0;
		
		//wanted 해제 
		wanted = false;
		p.sprite_index = spr_player;
	}
}

//if full charge energy, game clear
if (xp >= max_xp)
{
	scr_gameclear();
}

//reduce the absorber cooldown
if (absorber_cooldown > 0)
{
	absorber_cooldown -= 1;
	if (absorber_cooldown < 0)
	{
		absorber_cooldown = 0;
	}
}

//일시 무적
if (p_invincible > 0)
{
	p_invincible -= 1;
	if (p_invincible < 0)
	{
		p_invincible = 0;
	}
}


//지명수배
if (timeline <= 9) 
{
	wanted = true;
}
else
{
	wanted = false;
}