var jkey = keyboard_check_pressed(vk_space);
var dkey = keyboard_check(ord("S"));

if(jkey){
    vsp = -jumpspeed;
    state = states.petcontroll;
}

if(dkey){
    state = states.petcontroll;
}
