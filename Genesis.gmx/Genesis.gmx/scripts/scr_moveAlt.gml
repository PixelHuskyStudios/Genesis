///scr_moveAlt()
var key_down = ord("S"), down = false;
var key_up = ord("W"), up = false;
direction = dir;
fimage_angle = dir;
if (keyboard_check(key_up)) {
    speed = 4
    image_speed = 0.7;
    up = true;
} else {
    up = false;
}
if (keyboard_check(key_down)) {
    speed = -4;
    image_speed = 0.7;
    down = true;
} else {
    down = false;
}
if (down = false && up = false) {
    image_speed = 0;
    image_index = 0;
    speed = 0;
}
