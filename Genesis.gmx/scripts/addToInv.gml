///addToInv(ID)
var inv = obj_inventory;
var toID = argument0;

for (i = 0; i < maxItems; i++) {
    if (global.inventory[i, 0] == toID) {
        addList(toID, argument1);
        break;
    }
    
    if (i == maxItems-1) {
        for(j = 0; j < maxItems; j++) {
            if (global.inventory[j, 0] == -1) {
                global.inventory[j, 0] = toID;
                global.inventory[j, 1] += 1;
                break;
            }
        }
    }
}
