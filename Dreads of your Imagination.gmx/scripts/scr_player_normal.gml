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
        if(instance_exists(obj_pet))
            obj_pet.sprite_index = spr_pet_idle;
    }
    else{
        if(sprite_index != spr_player_move) image_index = 0;
        sprite_index = spr_player_move;
        if(instance_exists(obj_pet))
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


//LASER GUN ATTACK
if (key_space && laser_gun_rdy && can_shoot){
    
    ammo_x = (x+32)*facing;
    ammo_y = y;
    laser = instance_create(x + lengthdir_x(lenx, image_angle) - lengthdir_y(leny, image_angle), y + lengthdir_y(lenx,image_angle)+lengthdir_x(leny, image_angle), obj_laser);   
    can_shoot = false;   
}
with laser obj_player.target = collision_circle(x, y, 50, obj_transformable_enemy, 0, 1);
if(target != noone)
    enemy = target;
//WEB ATTACK
if (key_space && web_rdy){
    
    ammo_x = (x+32)*facing;
    ammo_y = y;
    if(instance_exists(web))
        with web instance_destroy();
    web = instance_create(x + lengthdir_x(lenx, image_angle) - lengthdir_y(leny, image_angle), y + lengthdir_y(lenx,image_angle)+lengthdir_x(leny, image_angle), obj_web);

}

//LIGHTBALL ATTACK
if (key_space && fireball_rdy){
    
    ammo_x = (x+32)*facing;
    ammo_y = y;
    
    if(instance_exists(fireball))
        with fireball instance_destroy();
    fireball = instance_create(x + lengthdir_x(lenx, image_angle) - lengthdir_y(leny, image_angle), y + lengthdir_y(lenx,image_angle)+lengthdir_x(leny, image_angle), obj_fireball);
}

//DIALOGUE EVENT
dialogue = collision_circle(x, y, 2, obj_dialogue, 0, 1);
if(instance_exists(dialogue)) {
    with(dialogue) {
        obj_player.state = states.talking;
        end_of_line = 0;
        line = 0;
    }
}

//DEAD
if hp <= 0 scr_death();

view_object[0] = obj_player;
scr_player_collision();
