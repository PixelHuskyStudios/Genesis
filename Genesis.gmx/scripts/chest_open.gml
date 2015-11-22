///chest_open()
if (distance_to_point(obj_player.x,obj_player.y) <= 24 && obj_player.closest_chest = id) {
    if (keyboard_check_pressed(key_INTERACT)) {
        if (draw = true) {
            draw = false;
        } else if (draw = false) {
            draw = true;
        }
    }
} else {
    draw = false;
}
if (draw = true) {
    for (i = 0; i < items; i += 1) {
        if (instance_number(chest_invbutton) < items) {
            buttons[i] = instance_create(0,0,chest_invbutton);
        }
        //Pass inventory variables
        buttons[i].slot = i;
        buttons[i].inventory[i, 0] = inventory[i, 0];
        buttons[i].quantity = inventory[i, 1];
    }
}
