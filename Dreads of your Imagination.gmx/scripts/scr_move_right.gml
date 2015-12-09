///scr_move_right()

var hspd = 2;
var not_wall = !place_meeting(x+hspd, y, obj_box);
var not_ledge = instance_position(x+(sprite_width/2)+1, y+(sprite_height/2)+1, obj_box);

if (not_wall && not_ledge){
    x += hspd * global.timeMultiplier;
} else{
    right_or_left = scr_move_left;
}
