/// @descr


if !audio_is_playing(snd_bgm)
{
	audio_stop_all();
	audio_play_sound(snd_bgm,0,true);  //bgm 재생
}