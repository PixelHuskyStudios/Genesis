///drawStats(x, y)
xx = argument0;
yy = argument1;
XP_DIV = ((obj_player.XP/obj_player.XP_MAX)*150);
draw_set_color(c_black);
draw_rectangle(xx, yy, xx + 150, yy + 16, 0);
col = make_color_rgb(0, 80, 0);
draw_set_color(col);
draw_rectangle(xx + 2, yy + 1, (xx) + XP_DIV, yy + 15, 0);
col = make_color_rgb(0, 120, 0);
draw_text_outline_transformed(xx - 32, yy,1.5,1.5, "XP: ", 1, col);
