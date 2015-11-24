///drawSlot()
var click = mouse_check_button_pressed(mb_left);
    if (abs(mouse_x - x) < 16) && (abs(mouse_y - y) < 16) {
            depth = -115;
            draw_set_color(c_white);
            draw_rectangle(x-16,y-16,x+16,y+16,0);
            depth = -101;
            if (click) {
                if (item[slot, 0] != -1) {
                    equip_take_slot(slot);
                    
                }
                if (mouseItem != -1) {
                    equip_drop_slot(mouseItem, m_quantity, slot);
                }
                mouseItem = item[slot, 0];
            }   
    }
