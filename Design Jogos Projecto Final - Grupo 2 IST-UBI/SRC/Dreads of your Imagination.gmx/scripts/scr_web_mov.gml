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

if(collision_circle(x,y,10,obj_e2,false,false) && first_contact){
    alarm[1] = -1;
    first_contact = false;
    stop_enemy = collision_circle(x,y,10,obj_e2,false,false);
    stop_enemy.movespeed = 0;
    stop_enemy.invulnerable = false;
    alarm[0] = 5*room_speed;
    hspd = 0;
}

if(collision_circle(x,y,10,obj_bee,false,false) && first_contact){
    alarm[1] = -1;
    first_contact = false;
    stop_enemy = collision_circle(x,y,10,obj_bee,false,false);
    stop_enemy.stoppath = true;
    stop_enemy.invulnerable = false;
    alarm[2] = 5*room_speed;
    hspd = 0;
}

if (obj_player.state = states.transforming) {
    state = states.transforming;
}
