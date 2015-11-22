///scr_moveNorm()
var key_left = ord("A"), left = false;;
var key_right = ord("D"), right = false;
var key_down = ord("S"), down = false;
var key_up = ord("W"), up = false;

if (keyboard_check(key_left)) {
    x-=5;
    fimage_angle = 180;
    image_speed = 0.7;
    left = true;
} else {
    left = false;
}
if (keyboard_check(key_right)) {
    x+=5;
    fimage_angle = 0;
    image_speed = 0.7;
    right = true;
} else {
    right = false;
}
if (keyboard_check(key_up)) {
    y-=5;
    fimage_angle = 90;
    image_speed = 0.7;
    up = true;
} else {
    up = false;
}
if (keyboard_check(key_down)) {
    y+=5;
    fimage_angle = 270;
    image_speed = 0.7;
    down = true;
} else {
    down = false;
}
if (left = false && right = false && up = false && down = false) {
    image_speed = 0;
    image_index = 0;
}
