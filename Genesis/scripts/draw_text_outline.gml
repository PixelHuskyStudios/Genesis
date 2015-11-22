///draw_text_outline(x, y, string, margin, color)
var strng = argument2;
var margin = argument3;
var stx = argument0;
var sty = argument1;
var color = argument4;

// TOP LEFT -1 -1
// TOP RIGHT +1 -1
// BOTTOM LEFT -1 +1
// BOTTOM RIGHT +1 +1
// LEFT -1 0
// RIGHT +1 0
draw_set_color(c_black);
//TOP LEFT
draw_text(stx-1, sty-1, strng);
//TOP RIGHT
draw_text(stx+1,sty-1, strng);
//BOTTOM LEFT
draw_text(stx-1,sty+1, strng);
//BOTTOM RIGHT
draw_text(stx+1, sty+1, strng);
//LEFT
draw_text(stx-1,sty,strng);
//RIGHT
draw_text(stx+1,sty,strng);
//ACTUAL TEXT
draw_set_color(color);
draw_text(stx,sty,strng);
