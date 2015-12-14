scr_get_input();



//React to inputs
move = key_left + key_right;
if(move == 1) facing = 1; else if (move == -1) facing = -1;
hsp = move * movespeed;
if (vsp < 10) vsp += grav;

//Check if object can Jump
if (place_meeting(x,y+1, obj_box) || place_meeting(x,y+1, obj_crate)){
    vsp = key_jump * -jumpspeed;
}

if(hsp != 0){
    hsp_dir = sign(hsp);
}

scr_player_collision(self);

//Begin Transforming
if (keyboard_check(ord("E")) && can_see) {
    keyboard_clear(ord("E"));
    obj_player.state = states.transforming;
}
else if(obj_pet.state = states.normal || obj_pet.state = states.petidle){
    obj_player.state = states.normal;
}

//Give controll to pet
if(keyboard_check(ord("F"))){
    keyboard_clear(ord("F"));
    obj_pet.state = states.petcontroll;
}
//Call pet
if(keyboard_check(ord("Q"))){
    keyboard_clear(ord("Q"));
    obj_pet.state = states.petidle;
}
//Change player state if pet is being controlled
if(obj_pet.state = states.petcontroll){
    obj_player.state = states.petcontroll;
}


//CHANGE THIS LATER

//Shoot Arrows
if (mouse_check_button(mb_left) && arrows > 0 && sprite_index == spr_player_bow && !crate){
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
if ((place_meeting(x,y, obj_transformable_enemy)  || place_meeting(x,y, obj_e)) && sprite_index != spr_player_sword || place_meeting(x,y, obj_e2)){
    room_restart();
}



