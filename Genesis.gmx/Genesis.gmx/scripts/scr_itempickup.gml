///scr_itempickup(item)
for (i = 0; i < maxItems; i += 1) {
    if (global.inventory[i, 0] == argument0) { //If Slot "i" is empty
        global.inventory[i, 0] = argument0;
        global.inventory[i, 1] += 1;
        return(1);
    } else if (global.inventory[i, 0] == -1) {
        global.inventory[i, 0] = argument0;
        global.inventory[i, 1] += 1;
        return(1);
    }
}
return(0);
