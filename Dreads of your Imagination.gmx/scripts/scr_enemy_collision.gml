if(hp < 0){
    instance_destroy();
    if(room == lvl_2 || room == lvl_3)
        obj_player.hp = 100;
}

if (place_meeting(x,y, obj_arrow)){
    with(obj_arrow){
        instance_destroy();
    }
    hp -= 30;
    obj_player.can_shoot = true;
}

if(instance_exists(obj_pet)){
    if (place_meeting(x,y, obj_pet)){
        with(obj_player) hp -= 0.1;
    }
}

if (place_meeting(x,y, obj_player)){
    if(room == room0 || room == lvl_2)
        obj_player.hp = 0;
    else
        obj_player.hp -= 0.1;
    
}
