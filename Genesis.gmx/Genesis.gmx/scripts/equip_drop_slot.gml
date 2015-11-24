///equip_drop_slot(item, quantity, slot);
/*var item = argument0;
var quantity = argument1;
var slot = argument2;

if (chest.inventory[slot, 0] == -1 && chest.inventory[slot, 0] != item) {
    if (m_quantity > 1) {
        m_quantity -= 1;
    } else {
        chest.inventory[slot, 0] = item;
        chest.inventory[slot, 1] = quantity;
    }
    return(1);
}
return(0);
