script_execute(right_or_left);
if (obj_player.state == states.normal && transform) {
   
    if(sprite_index == spr_bow) instance_change(obj_bow,1);
    if(sprite_index == spr_fireball_pickup) instance_change(obj_fireball_pickup,1);
    if(sprite_index == spr_healing_potion) instance_change(obj_healing_potion,1);
    if(sprite_index == spr_web_pickup) instance_change(obj_web_pickup,1);  
}

if(hp < 25){
    obj_pet.state = states.transforming;
} 
if (obj_pet.state == states.transforming) {
    state = states.transforming;
}

scr_enemy_collision();
