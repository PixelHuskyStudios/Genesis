///chest_init(lvl)
lvl = argument0;
items = round(random(3))+lvl;
draw = false;
for (i = 0; i < items; i+= 1) {
    inventory[i, 0] = round(random(3));
    inventory[i, 1] = round(random(2))+lvl;
}
