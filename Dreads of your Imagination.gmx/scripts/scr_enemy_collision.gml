if (place_meeting(x,y, obj_player) && (obj_player.sword_rdy)){
    instance_destroy();
}

if (place_meeting(x,y, obj_arrow)){
    with(obj_arrow)
        instance_destroy();
    obj_player.can_shoot = true;
}
