///scr_move_down()

var vspd = 5;
var not_wall = !place_meeting(x, y+vspd, obj_box);

if (not_wall){
    y += vspd * global.timeMultiplier;
} else{
    up_or_down = scr_move_up;
}
