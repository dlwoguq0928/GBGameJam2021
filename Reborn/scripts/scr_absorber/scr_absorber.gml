// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_absorber_st(absorber_creature){
	instance_create_layer(p.x,p.y,"Instances_1",ob_player_absorber);

	//p.alarm[1] = room_speed*2; //call absorber_nd
	if instance_exists(absorber_creature)
	{
		absorber_creature.speed = 0;
		absorber_creature.image_blend = c_black;
		
		absorber_cooldown = absorber_cooldown_std;
		
		//p.sprite_index = spr_player; //괴물 스프라이트로 잠시 되돌리기
			
		absorber_creature_confirmed_spr = absorber_creature.sprite_index; //변경할 스프라이트 확정
		
		//흡수한 대상 제거
		with(absorber_creature)
		{
			instance_destroy();
		}
		
		p_invincible = room_speed*1;
		
		//efs
		audio_play_sound(snd_efs_tentacle,1,false);
	}
}

function scr_absorber_nd(){
	var absorber_spr = absorber_creature_confirmed_spr;
	if (p.sprite_index != absorber_spr)
	{
		p.sprite_index = absorber_spr;
		xp += 1;
		timeline = timeline_max;
			
		scr_closeup_screen(300);
	}
	
}