///world_gen(world_width, world_height)
var w_width = argument0;
var w_height = argument1;
var ii = 0, i = 0;
//Setting objects for spawning
obj[0, 0] = obj_player;
obj[1, 0] = obj_tree;
obj[2, 0] = orc_enemy;
obj[3, 0] = obj_rocks;
obj[4, 0] = chest_basic;
obj[5, 0] = obj_hud;
obj[0,1] = 1;
obj[1,1] = ceil(random(15))+(w_width/40);  //II MAX = 40 ii/4*1 10 ii/2 20 ii/4*3 30 ii 40
obj[2,1] = ceil(random(15))+(w_width/200);
obj[3, 1] = ceil(random(20))+(w_width/40);;
obj[4, 1] = ceil(random(5))+(w_width/480);
obj[5, 1] = 1;
for (i = 0; i < array_height_2d(obj); i++) {
    for(ii = 0; ii < obj[i, 1]; ii ++) {
            instance_create(random(w_width), random(w_height), obj[i, 0]);
    }
}
/*&if (step - 941) mod 205 = 0
{
    alarm[0] = 1
}
for (i = 0; i < array_height_2d(obj); i += 1) {
    for (ii = 0; ii < obj[i,1]; ii += 1) {
        if (ii <= 10 && i != 1) {
            //TOPLEFT QUAD
            instance_create(random(w_width/2),random(w_height/2),obj[i, 0]);
        }
        else if (ii > 10 && ii <= 20) { 
            //TOPRIGHT QUAD
            instance_create(random(w_width/2)+(w_width/2),random(w_height/2),obj[i, 0]);
        }
        else if (ii > 20 && ii <= 30) {
            //BOTTOMLEFT QUAD
            instance_create(random(w_width/2),random(w_height/2)+(w_height/2),obj[i, 0]);
        }
        else if (ii > 30) {
            //BOTTOMRIGHT QUAD
            instance_create(random(w_width/2)+(w_width/2),random(w_height/2)+(w_height/2),obj[i, 0]);
        }
    }
}*/
if (!instance_exists(obj_inventory)) {
    instance_create(x,y,obj_inventory);
}
if (!instance_exists(equip_screen)) {
    instance_create(x,y,equip_screen);
}
/*+(w_height/2)

TOP LEFT QUADRANT = 0
TOP RIGHT QUADRANT = w_width/2
BOTTOMLEFT QUADRANT = 0 w_height/2
BOTTOMRIGHT QUADRANT = w_width/2 w_height/2
