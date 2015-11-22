///scr_itempickup(item)
for (i = 0; i < maxItems; i += 1) {
    if (global.inventory[i, 0] == argument0) { //If Slot "i" is empty
        return(1);
    }
}
return(0);
