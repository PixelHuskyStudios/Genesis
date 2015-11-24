///update_stats()
if (XP >= XP_MAX) {
    var r;
    r = XP - XP_MAX;
    XP = r;
    LEVEL += 1;
    HP = HP_MAX;
}
XP_MAX = LEVEL * 50;
HP_MAX = 90 + (LEVEL * 10);
HPPERCENT = HP/HP_MAX*100;
XPPERCENT = XP/XP_MAX*200;
if (instance_exists(chest_parent)) {
if (distance_to_point(instance_nearest(x,y,chest_parent).x,instance_nearest(x,y,chest_parent).y) <= 24) {
    closest_chest = instance_nearest(x,y,chest_parent);
} else {
    closest_chest = -1;
}
}
