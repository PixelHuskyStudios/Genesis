///draw_text_outline_transformed(x, y, xscale, yscale, string, margin, color)
var stx = argument0;
var sty = argument1;
var xscale = argument2;
var yscale = argument3;
var strng = argument4;
var margin = argument5;
var color = argument6;

// TOP LEFT -1 -1
// TOP RIGHT +1 -1
// BOTTOM LEFT -1 +1
// BOTTOM RIGHT +1 +1
// LEFT -1 0
// RIGHT +1 0
draw_set_color(c_black);
//TOP LEFT
draw_text_transformed(stx-1, sty-1, strng, xscale, yscale, 0);
//TOP RIGHT
draw_text_transformed(stx+1,sty-1, strng, xscale, yscale, 0);
//BOTTOM LEFT
draw_text_transformed(stx-1,sty+1, strng, xscale, yscale, 0);
//BOTTOM RIGHT
draw_text_transformed(stx+1, sty+1, strng, xscale, yscale, 0);
//LEFT
draw_text_transformed(stx-1,sty,strng, xscale, yscale, 0);
//RIGHT
draw_text_transformed(stx+1,sty,strng, xscale, yscale, 0);
//ACTUAL TEXT
draw_set_color(color);
draw_text_transformed(stx,sty,strng, xscale, yscale, 0);
