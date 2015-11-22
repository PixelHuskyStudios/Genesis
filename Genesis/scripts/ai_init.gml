///ai_init(level)
lvl = argument0;
can_change = true;
moving = false;
state = 'idle';
dir_to_p = -1;
b = 0;
mob_hp = 12*lvl;
hp_max = 12*lvl;
hp_percent = mob_hp/hp_max*24;
spd = (lvl*0.25)+3.75+b;
dist_to_p = -1;
obj[0] = obj_tree;
obj[1] = obj_enemy;
los = -1;
laststate = 'idle';
if (instance_exists(obj_player)) {
    dir_to_p = point_direction(x,y,obj_player.x,obj_player.y);
    dist_to_p =  distance_to_point(obj_player.x,obj_player.y);
}
