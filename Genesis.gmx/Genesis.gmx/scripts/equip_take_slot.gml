///equip_take_slot(slot);
var slot = argument0;
if (chest.inventory[slot, 0] != -1) {
    chest.inventory[slot, 0] = -1;
    chest.inventory[slot, 1] = 0;
    return(1);
}
return(0);
