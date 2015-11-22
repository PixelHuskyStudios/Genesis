toID = argument0;
quantity = argument1;
/*for (i = 0; i < array_height_2d(global.item); i++) {
    if (toID == global.item[i]) {
        global.inventory[i, 1] ++;
        global.inventory[i, 0] = toID = argument0;
    }
}*/
for (i = 0; i < array_height_2d(global.item); i++) {
    if (toID == global.item[i, 0]) {
        global.inventory[i, 1]+= quantity;
        global.inventory[i, 0] = toID;
    }
}
