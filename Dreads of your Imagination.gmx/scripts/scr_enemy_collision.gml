if (place_meeting(x,y, obj_player) && obj_player.sword_rdy && obj_player.attack){
    hp -= 10;
    x += 2 * obj_player.facing;
}

if(hp < 0) instance_destroy();

if (place_meeting(x,y, obj_arrow)){
    with(obj_arrow)
        instance_destroy();
    obj_player.can_shoot = true;
}

if (place_meeting(x,y, obj_laser)){
    with(obj_arrow)
        instance_destroy();
    hp -= 0.2;
}

if (place_meeting(x,y, obj_pet)){
    with(obj_player) hp -= 0.1;
}

if (place_meeting(x,y, obj_player)){
    with(obj_player) hp = 0;
}
