///debug_button(x,y, outline)
var x1 = argument0,y1 = argument1, o = argument2;
draw_set_color(c_black);
draw_rectangle(view_xview+x1,view_yview+y1,view_xview+x1+150,view_yview+y1+36, o);
draw_set_color(c_dkgray);
draw_rectangle(view_xview+x1+4,view_yview+y1+4,view_xview+x1+146,view_yview+y1+32,o);
