///scr_itempickup_slot(item, quantity, slot)
var toID = argument0;
var quantity = argument1;
var slot = argument2;

/*if (global.inventory[slot, 0] == -1 || global.inventory[slot, 0] = item) { //Check if "slot" is empty
    global.inventory[slot, 0] = item;
    global.inventory[slot, 1] += quantity;
    return(1);
}
return(0);
*/
for (i = 0; i < maxItems; i++) {
    if (global.inventory[i, 0] == toID) {
        addList(toID, quantity);
        break;
    }
    
    if (i == maxItems-1) {
        if (global.inventory[slot, 0] == -1) {
            global.inventory[slot, 0] = toID;
            global.inventory[slot, 1] += quantity;
            break;
        }
    }
}
