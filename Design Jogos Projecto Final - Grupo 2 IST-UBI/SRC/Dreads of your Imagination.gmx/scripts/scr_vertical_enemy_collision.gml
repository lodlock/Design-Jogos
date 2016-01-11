if (instance_exists(obj_pet) && place_meeting(x,y, obj_pet) && invulnerable){
    with(obj_player) hp -= 0.1;
}

if (place_meeting(x,y, obj_player) && invulnerable){
    with(obj_player) hp = 0;
}
