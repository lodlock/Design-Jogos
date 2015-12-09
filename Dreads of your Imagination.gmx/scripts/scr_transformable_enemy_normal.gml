script_execute(right_or_left);
if (obj_player.state == states.normal && transform) {
   
    if(sprite_index == spr_bow) instance_change(obj_bow,1);
    if(sprite_index == spr_sword) instance_change(obj_sword,1);
    if(sprite_index == spr_crate) instance_change(obj_crate,1);
    
}
if (obj_player.state = states.transforming) {
    argument0.state = states.transforming;
}
