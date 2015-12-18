if (place_meeting(x,y, obj_pet)){
    with(obj_player) hp -= 0.1;
}

if (place_meeting(x,y, obj_player)){
    with(obj_player) hp = 0;
}
