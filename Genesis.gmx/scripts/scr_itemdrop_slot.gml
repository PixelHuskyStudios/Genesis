///scr_itemdrop_slot(slot);
var slot = argument0;
if (global.inventory[slot, 0] != -1) {
    global.inventory[slot, 0] = -1;
    global.inventory[slot, 1] = 0;
    return(1);
}
return(0);
