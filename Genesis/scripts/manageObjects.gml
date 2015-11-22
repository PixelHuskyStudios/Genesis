///manageObjects()
/*
    item[0, 0] = 0; SWORD
    item[1, 0] = 1; HEALTH POT
    item[2, 0] = 2; MANA POT
    item[3] 0] = 3; COINS
*/
for (i = 0; i < maxItems; i ++) {
    if (global.inventory[i, 0] = 0) {
        draw_sprite(spr_items, global.item[0, 0], button[i].x,button[i].y)
        draw_text(button[i].x+6, button[i].y+6, string(global.inventory[i, 1]));
    }
}
