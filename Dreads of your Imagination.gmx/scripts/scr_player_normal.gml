scr_get_input();

//React to inputs
move = key_left + key_right;
if(move == 1) facing = 1; else if (move == -1) facing = -1;
hsp = move * movespeed;
if (vsp < 10) vsp += grav;

//Check if object can Jump
if (place_meeting(x,y+1, obj_box)){
    vsp = key_jump * -jumpspeed;
}

scr_player_collision(self);


//Shoot Arrows
if (mouse_check_button(mb_left) && arrows > 0 && !keyboard_check(vk_control) && sprite_index == spr_player_bow && !crate){
    arrows -= 1;
    var arrow_id;
    arrow_id = instance_create(x + lengthdir_x(lenx, image_angle) - lengthdir_y(leny, image_angle), y + lengthdir_y(lenx,image_angle)+lengthdir_x(leny, image_angle), obj_arrow);
    arrow_id.direction = 90 * (1-facing);    
    arrow_id.image_angle = arrow_id.direction;
    mouse_clear(mb_left);
}

//Sword attack
if (mouse_check_button(mb_left) && swords > 0 && !keyboard_check(vk_control) && !crate){
    
    switch(sprite_index){
            case spr_player_sword:
                sprite_index = spr_player_sword_swipe_front;
                mouse_clear(mb_left);
                break;
            case spr_player_sword_swipe_front:
                sprite_index = spr_player_sword_swipe_down;
                mouse_clear(mb_left);
                break;
            case spr_player_sword_swipe_down:
                sprite_index = spr_player_sword;
                mouse_clear(mb_left);
                break;
            default:
                break;
    }
}

//Enemy Collision (Devia tirar vida não dar logo restart)
if ((place_meeting(x,y, obj_enemy)  || place_meeting(x,y, obj_e)) && sprite_index != spr_player_sword || place_meeting(x,y, obj_e2)){
    room_restart();
}

if (keyboard_check(vk_control) && can_see) {
    obj_player.state = states.transforming;
}
