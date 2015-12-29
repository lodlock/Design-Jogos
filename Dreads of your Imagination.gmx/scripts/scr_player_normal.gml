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
if(frog_rdy){
    jumpspeed = 10;
}
else jumpspeed = 5;

//PLAYER ANIMATION AND PET
if(place_meeting(x,y+1, obj_box)){
    if(hsp == 0){
        sprite_index = spr_player_idle;
        obj_pet.sprite_index = spr_pet_idle;
    }
    else{
        if(sprite_index != spr_player_move) image_index = 0;
        sprite_index = spr_player_move;
        obj_pet.sprite_index = spr_pet_move;
    }   
}
else{
    if(vsp < 0){
        sprite_index = spr_player_jump;
        image_index = 1;
    }
    else{
        sprite_index = spr_player_jump;
        image_index = 0;
    }

}

//Begin Transforming SAVE FOR BOSS MECHANIC
/*
if (key_e && can_see && is_boss) {
    keyboard_clear(ord("E"));
    obj_player.state = states.transforming;
}*/


//IF PET IS IN THE ROOM
if(instance_exists(obj_pet)){
    
    if(obj_pet.state = states.normal){
    obj_player.state = states.normal;
    } 
    //Give controll to pet
    if(key_f){
        keyboard_clear(ord("F"));
        obj_pet.state = states.petcontroll;
        state = states.petcontroll;
    }
    //Change player state if pet is being controlled
    if(obj_pet.state = states.petcontroll){
        obj_player.state = states.petcontroll;
    }   
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

if (key_space && laser_gun_rdy){
    
    ammo_x = (x+32)*facing;
    ammo_y = y;
    if (can_shoot)
    {
        laser = instance_create(x + lengthdir_x(lenx, image_angle) - lengthdir_y(leny, image_angle), y + lengthdir_y(lenx,image_angle)+lengthdir_x(leny, image_angle), obj_laser);
        can_shoot = false;
    }
    

}

if (key_space && web_rdy){
    
    ammo_x = (x+32)*facing;
    ammo_y = y;
    if(instance_exists(web))
        with web instance_destroy();
    web = instance_create(x + lengthdir_x(lenx, image_angle) - lengthdir_y(leny, image_angle), y + lengthdir_y(lenx,image_angle)+lengthdir_x(leny, image_angle), obj_web);

}

if (key_space && fireball_rdy){
    
    ammo_x = (x+32)*facing;
    ammo_y = y;
    
    if(instance_exists(fireball))
        with fireball instance_destroy();
    fireball = instance_create(x + lengthdir_x(lenx, image_angle) - lengthdir_y(leny, image_angle), y + lengthdir_y(lenx,image_angle)+lengthdir_x(leny, image_angle), obj_fireball);
}


//Sword attack
if (key_space && sword_rdy){
    image_index = 0;
    attack = true;
}


if hp <= 0 scr_death();



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
view_object[0] = obj_player;
scr_player_collision(self);
