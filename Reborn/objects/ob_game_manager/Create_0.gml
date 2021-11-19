/// @descr

globalvar p;  //player instance
p = ob_player;

globalvar p_dir, p_spd, p_spd_std, p_max_hp, p_hp;  //player variables
p_dir = -1; 
p_spd = 0;
p_spd_std = 10;  //player standard speed
p_max_hp = 100;
p_hp = p_max_hp;

globalvar t_spd_std;  //tracker variables
t_spd_std = 7;

globalvar wanted, timeline_max, timeline;
wanted = "지명수배";
timeline_max = 20;  //seconds
timeline = timeline_max;

alarm[0] = room_speed*1;  //start loop : generates trackers