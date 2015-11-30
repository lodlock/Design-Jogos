///scr_move_up()

var vspd = -10;
var not_wall = !place_meeting(x, y+vspd, obj_box);

if (not_wall){
    y += vspd * global.timeMultiplier;
} else{
    state = scr_move_down;
}
