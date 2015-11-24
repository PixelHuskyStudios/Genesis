///check_world()
if (instance_exists(obj_player)) {
    var xx = obj_player.x;
    var yy = obj_player.y;
} else {
    var xx = -48;
    var yy = -48;
}
var borderX = room_width;
var borderY = room_height;

var pastBorderX = (xx > borderX);
var pastBorderY = (yy > borderY);
var behindBorderX = (xx < 0);
var behindBorderY = (yy < 0);

if (pastBorderX = true) {
    if (room = rm_centre) {
        room_goto(rm_right);
        world_gen(room_width,room_height);
        xx = 0;
    } else if (room = rm_left) {
        room_goto(rm_centre);
        world_gen(room_width,room_height);
        xx = 0;
    } else {
        x = room_width;
    }
}
if (pastBorderY = true) {
    if (room = rm_top) {
        room_goto(rm_centre);
        world_gen(room_width,room_height);
        yy = 0;
    }
    else if (room = rm_centre) {
        room_goto(rm_bottom);
        world_gen(room_width,room_height);
        yy = 0;
    } else {
        y = room_height;
    }
}

if (behindBorderX = true) {
    if (room = rm_right) {
        room_goto(rm_centre)
        world_gen(room_width,room_height);
        xx = room_height;
    } else if (room = rm_centre) {
        room_goto(rm_left);
        world_gen(room_width,room_height);
        xx = room_height;
    } else {
        x = 0;
    }
}
if (behindBorderY = true) {
    if (room = rm_bottom) {
        room_goto(rm_centre);
        world_gen(room_width,room_height);
        yy = room_height;
    } else if (room = rm_centre) {
        room_goto(rm_top);
        world_gen(room_width,room_height);
        yy = room_height;
    } else {
        y = 0;
    }
}
