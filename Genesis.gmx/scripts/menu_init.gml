///menu_init(x, y);
var xx = argument0;
var yy = argument1;
for (i = 0; i < menu_state[1]; i++) {
    if (instance_number(menu_button) < menu_state[1]) {
        menu[i] = instance_create(xx,yy,menu_button);
    }
    menu[i].image_speed = 0;
    menu[i].pressed = false;
}
