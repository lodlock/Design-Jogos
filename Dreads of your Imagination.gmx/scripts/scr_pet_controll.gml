scr_get_input();
obj_player.sprite_index = spr_player_idle;
//React to inputs
move = key_left + key_right;
if(move == 1) facing = 1; else if (move == -1) facing = -1;

hsp = move * movespeed;
if (vsp < 10) vsp += grav;

//Check if object can Jump
if (place_meeting(x,y+1, obj_box)){
    vsp = key_jump * -jumpspeed;
}

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

button = collision_circle(x, y, 50, obj_button, 0, 1);

if (instance_exists(button) &&  key_e && button.visible){
    keyboard_clear(ord("E"));
    button.activated = true;
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
}
else if (move != 0 && !attack){
    sprite_index = spr_pet_move;
}

if(instance_nearest(x,y,obj_transformable_enemy) && key_space){
    enemy = instance_nearest(x,y,obj_transformable_enemy);
}
if(instance_nearest(x,y,obj_frog) && key_space){
    enemy = instance_nearest(x,y,obj_transformable_enemy);
}


if(key_ff){
    keyboard_clear(ord("F"));
    pet_out_of_view = true;
    obj_player.state = states.normal;
    state = states.normal;
}

if(obj_player.hp <= 0) scr_death();

if (obj_player.state = states.transforming) {
    state = states.transforming; 
}

scr_pet_collision_controlled();
