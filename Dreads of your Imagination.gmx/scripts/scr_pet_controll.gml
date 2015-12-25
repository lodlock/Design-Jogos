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

//show_debug_message(distance_to_object(obj_player));
if(distance_to_object(obj_player) > 1000){
    warn_player = true;
    obj_player.hp -= 0.1;
}
else warn_player = false;

torch = collision_circle(x, y, 50, obj_torch, 0, 1);


if (instance_exists(torch) &&  key_e){
    keyboard_clear(ord("E"));
    torch.can_light = true;
}

if(key_space){
   attack = true;
   with(instance_create(x,y,obj_dog_attack)){
        image_xscale = obj_pet.image_xscale * obj_pet.facing;
   }
}

if(attack){
    sprite_index = spr_pet_attack;
    if(image_index > 4){
     attack = false;
     
     sprite_index = spr_pet_idle;
    }

}
else if (move == 0 && !attack){ 
    sprite_index = spr_pet_idle;
    if(image_index > 3)
        image_index = 3;
}
else if (move != 0 && !attack){
    image_speed = 1;
    if(image_index > 6){
        sprite_index = spr_pet_move;
        image_speed = 0.2;
        }
}

/*if(collision_circle(x+25,y,5,obj_transformable_enemy,false,false) && key_space){
    enemy = collision_circle(x+25,y,5,obj_transformable_enemy,false,false);
    enemy.hp -= 10;
}
else if(collision_circle(x+25,y,25,obj_e,false,false) && key_space){
    enemy = collision_circle(x+25,y,25,obj_e,false,false);
    enemy.hp -= 10;
}*/


if(key_ff){
    keyboard_clear(ord("F"));
    x      = obj_player.x - player_sprite_width;
    y      = obj_player.y;
    pet_dy = 0;
    obj_player.state = states.normal;
    state = states.normal;
}

view_object[0] = obj_pet;
scr_pet_collision_controlled();
