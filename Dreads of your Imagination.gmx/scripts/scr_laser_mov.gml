if(obj_player.facing == -1 && !already_done) {
    facing = 1;
    hspd = -5;
    already_done = true;

}
if(obj_player.facing == 1 && !already_done){
    facing = -1;
    hspd = 5;
    already_done = true;
}
var not_wall = !place_meeting(x+hspd, y, obj_box);
var not_ledge = instance_position(x-(sprite_width/2)-1, y+(sprite_height/2)+1, obj_box);

if not_wall{
    x+= hspd;
}else{
    instance_destroy();
    already_done = false;
}


if (obj_player.state = states.transforming) {
    state = states.transforming;
}
