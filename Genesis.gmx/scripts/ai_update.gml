///ai_update();
switch (state) 
{
    case e_state.idle:
    {
        speed = 2;
        image_speed = .75;
        if (alarm[0] = -1) {
            alarm[0] = 45;
            direction = random(360);
        }
        if (distance_to_object(obj_player) < 96 && !collision_line(x,y,obj_player.x,obj_player.x,detection_mask,1,1)) state = e_state.chase;
        break;
    }
    case e_state.chase:
    {
        image_speed = 1.25;
        if (distance_to_object(obj_player) > 8) {
            mp_potential_step(obj_player.x,obj_player.y,4,0);
        } else {
            state = e_state.attack;
            speed = 0;
            image_speed = 0;
            image_index = 0;
        }
        if (distance_to_object(obj_player) > 128) state = e_state.idle;
    }
    break;
    case e_state.attack:
    {   
        hands.attack = true;
        image_angle = point_direction(x,y,obj_player.x,obj_player.y);
        if (distance_to_object(obj_player) > 8 && alarm[1] = -1) {
            state = e_state.chase;
        }
        if (alarm[1] = -1) {
            alarm[2] = 25;
        }
        if (alarm[2] = -1) {
            alarm[1] = 20;
        }
    }
}
