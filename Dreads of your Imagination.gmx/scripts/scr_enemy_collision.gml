if (place_meeting(x,y, obj_player) && (obj_player.sprite_index == spr_player_sword || 
                                       obj_player.sprite_index == spr_player_sword_swipe_down || 
                                       obj_player.sprite_index == spr_player_sword_swipe_front)){
    swords -=1;
    instance_destroy();
}

if (place_meeting(x,y, obj_arrow)){
    instance_destroy();
    with(obj_arrow)
        instance_destroy();
}
