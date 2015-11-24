///drawStats(val)
/*
var atk = 3;
var def = 1
var wis = 1;
var vit = 1;
var dex = 3;
*/
val = argument0;
xpos = 220;
ypos = 12
tex_col = make_colour_rgb(val, val, val);
draw_set_color(tex_col);
draw_text(x1 + xpos, y1 + ypos + 16*1, "ATTACK: " + string(atk));
draw_text(x1 + xpos, y1 + ypos + 16*2, "DEFENSE: " + string(def));
draw_text(x1 + xpos, y1 + ypos + 16*3, "WISDOM: " + string(wis));
draw_text(x1 + xpos, y1 + ypos + 16*4, "VITALITY: " + string(vit));
draw_text(x1 + xpos, y1 + ypos + 16*5, "DEXTERITY: " + string(dex));

