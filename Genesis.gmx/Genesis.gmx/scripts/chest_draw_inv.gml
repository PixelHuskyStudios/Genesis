///chest_draw_inv()
draw_self();

var x1, x2, y1, y2;
x1 = view_xview[0];
x2 = x1+view_wview[0];
y1 = view_yview[0]+((view_hview[0]/6)*5)
y2 = y1 + 48;

if (draw = true) {
    depth = -100;
    draw_set_color(c_black);
    draw_set_alpha(0.8);
    draw_rectangle(x1,y1,x2,y2,0);
    draw_set_alpha(1);
    image_index = 1;
    for (i = 0; i < items; i += 1) 
    {   
        var ix, iy;
        ix = x1+24+(i * 40);
        iy = y2 - 24;
        buttons[i].x = ix;
        buttons[i].y = iy;
    
        draw_sprite(spr_border,0,x1+24+(i * 40), y2 - 24);
    }
} else if (draw = false) {
    image_index = 0;
    depth = 0;
}
