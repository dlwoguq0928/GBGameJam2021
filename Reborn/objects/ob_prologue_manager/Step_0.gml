/// @descr

//아무곳이나 터치하면 프롤로그 진행
switch(prologue_index)
{
	default:	break;
	case 0:
		if mouse_check_button_released(mb_left)
		{
			prologue_index ++;
			audio_play_sound(snd_efs_brokenglass,1,false);
		}
		capsule_angle += capsule_toggle;
		if (capsule_angle >= 10) capsule_toggle = -1;
		if (capsule_angle <= -10) capsule_toggle = 1;
		break;
	case 1:
		if mouse_check_button_released(mb_left)
		{
			room_goto_next();
		}
		break;
}