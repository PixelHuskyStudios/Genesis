///ai_update();
/*switch (stete) 
{
    case e_state.idle:
    {
        hsp = 0;
        vsp = 0;
    }
    case e_state.chase:
    {
        
    }




}


*/







































var i = 0;
var rxn = (x >= room_width);
var rxr = (x <= 0);
var ryn = (y >= room_width);
var ryr = (y <= 0);
var laststate = 'idle';
if (los = true && dist_to_p <= 128+(lvl*6)) {
    state = 'chasing';
    laststate = 'chasing';
} else if (los = false || dist_to_p > 128+(lvl*6) && laststate = 'chasing') {
    state = 'finding';
    laststate = 'finding';
    alarm[3] = 45;
}
//Chase Code
if (state = 'chasing') {
    moving = true;
} 
//Idle code
else if (state = 'idle') {
    if (can_change = true) {
        direction = random(360);
        can_change = false;
        alarm[0] = 55;
    }
    speed = 3;
    if (alarm[0] = -1 && timer = false) {
        can_change = true;
        speed = 0
        image_speed = 0;
        image_index = 0;
        alarm[7] = 15;
        timer = true;
    }
    if (alarm[7] = -1) {
        timer = false;
        speed = 2;
        image_speed = 0.7
    }
    b = 0;
    if (ryr = true || ryn = true || rxr = true || rxn = true) {
        direction = random(360);
    }
//Finding Code
} else if (state = 'finding') {
    speed = 0;
    var lastdir = direction
    if (direction <= lastdir-45) {
        image_angle += 1;
        direction += 1;
    } else if (direction >= lastdir+45) {
        image_angle -= 1;
        direction -= 1;
    }
}
if (alarm[3] = -1) {
    state = 'idle';
    laststate = 'idle';
}
if (moving = true) {
    if (dist_to_p >= 4) {
    mp_potential_step(obj_player.x,obj_player.y,3,0);
    } else {
        speed = 0;
        image_index = 0;
    }
    image_speed = 1.25;
} else if (moving = false) {
    state = 'idle';
    image_speed = 0.75;
}
if (instance_exists(obj_player)) {
    dir_to_p = point_direction(x,y,obj_player.x,obj_player.y);
    dist_to_p =  distance_to_point(obj_player.x,obj_player.y);
    los = !collision_line(x,y,obj_player.x,obj_player.y,detection_mask,true,true);
}
