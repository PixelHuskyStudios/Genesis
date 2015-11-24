///manageEquip()

//    armor_slot[0, 0] = HEAD
//    armor_slot[1, 0] = CHEST
//    armor_slot[2, 0] = LEGGINS
//    armor_slot[0, 1] = UNDEFINED;
    var n;
    for (n = 0; n < equip_slots[0]; n += 1) 
    {
            ix = x1+24;
            iy = y1 + 24+(n * 40);
        if (instance_exists(equip_slot)) {
            armor_slot[n, 0].x = ix;
            armor_slot[n, 0].y = iy;
        }
        if (equip_screen.show_EQUIP = true) {
            draw_sprite(spr_border,0,ix,iy);
        }
    }
