//IDLE PET

if(keyboard_check(ord("I"))){
    keyboard_clear(ord("I"));
    state = states.normal;
}
if(keyboard_check(ord("H"))){
    keyboard_clear(ord("H"));
    argument0.state = states.petcontroll;
}

view_object[0] = obj_player;
