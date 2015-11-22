///ai_init(level)
lvl = argument0;
mob_hp = 12*lvl;
hp_max = 12*lvl;
hp_percent = mob_hp/hp_max*24;
state = e_state.idle;
vsp = 0;
hsp = 0;
