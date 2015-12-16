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
if(obj_pet.state = states.petidle){
    if(keyboard_check(ord("Q"))){
        keyboard_clear(ord("Q"));
        obj_pet.state = states.normal;
    }
}
//Change player state if pet is being controlled
if(obj_pet.state = states.petcontroll){
    obj_player.state = states.petcontroll;
}


//CHANGE THIS LATER

//Shoot Arrows
if (mouse_check_button(mb_left) && bow_rdy){
    
    ammo_x = mouse_x;
    ammo_y = mouse_y;
    
    sprinte_index = spr_player_bow;
    image_speed = 0.5;
    
    if (can_shoot)
    {
        arrow = instance_create(x + lengthdir_x(lenx, image_angle) - lengthdir_y(leny, image_angle), y + lengthdir_y(lenx,image_angle)+lengthdir_x(leny, image_angle), obj_arrow);
        can_shoot = false;
        if instance_exists(rope) with(rope) instance_destroy();
    }   
    mouse_clear(mb_left);
}


if (mouse_check_button(mb_left) && web_rdy){
    
    ammo_x = mouse_x;
    ammo_y = mouse_y;
    
    web = instance_create(x + lengthdir_x(lenx, image_angle) - lengthdir_y(leny, image_angle), y + lengthdir_y(lenx,image_angle)+lengthdir_x(leny, image_angle), obj_web);
    mouse_clear(mb_left);
}

if (mouse_check_button(mb_left) && fireball_rdy){
    
    ammo_x = mouse_x;
    ammo_y = mouse_y;
    
    fireball = instance_create(x + lengthdir_x(lenx, image_angle) - lengthdir_y(leny, image_angle), y + lengthdir_y(lenx,image_angle)+lengthdir_x(leny, image_angle), obj_fireball);
    mouse_clear(mb_left);
}


//Sword attack
if (mouse_check_button(mb_left) && sword_rdy){
    //sprinte_index = spr_player_sword;
    //image_speed = 0.5;
    image_index = 0;
    attack = true;
    mouse_clear(mb_left);
}


if ((place_meeting(x,y, obj_transformable_enemy)  || place_meeting(x,y, obj_e)) && !attack || place_meeting(x,y, obj_e2)){
    hp -= 0.5;
}

if (hp < 0) room_restart();

if instance_exists(rope){
    if point_distance(x, y, rope.x, rope.y) > 5
    {
    move_towards_point(rope.x, rope.y, 2);
    grav = 0;
    }
    else {
        speed = 0;
        grav = 0.2;
        with(rope) instance_destroy();
        can_shoot = true;
    }
}
scr_player_collision(self);
