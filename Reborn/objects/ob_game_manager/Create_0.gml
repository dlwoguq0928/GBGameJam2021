/// @descr

globalvar p;  //player instance
p = ob_player;

globalvar p_dir, p_spd, p_spd_std, p_max_hp, p_hp, p_invincible;  //player variables
p_dir = -1; 
p_spd = 0;
p_spd_std = 8;  //player standard speed
p_max_hp = 10;
p_hp = p_max_hp;
p_invincible = 0;

globalvar absorber_radius, absorber_creature, absorber_cooldown_std, absorber_cooldown, absorber_creature_confirmed_spr;
absorber_radius = 100;  //흡수 가능 범위 (px)
absorber_creature = noone;
absorber_cooldown_std = room_speed*10;
absorber_cooldown = absorber_cooldown_std;
absorber_creature_confirmed_spr = noone;

globalvar t_spd_std;  //tracker variables
t_spd_std = 3;

globalvar wanted, timeline_max, timeline;
wanted = false;
timeline_max = 12;  //seconds
timeline = timeline_max;

globalvar xp, max_xp;  //energy bar
xp = 0;
max_xp = 5;

alarm[0] = room_speed*1;  //start loop : generates trackers

tracker_number = [
	5,
	10,
	15,
];
tracker_objs = [
	[ob_tracker],
	[ob_tracker,ob_tracker_faster],
	[ob_tracker,ob_tracker_gun,ob_tracker_riple],
];