//IDLE PET
if(keyboard_check(ord("Q"))){
    state = states.normal;
    show_debug_message("VEM CA");
    keyboard_clear(ord("Q"));
}
if(keyboard_check(ord("F"))){
    keyboard_clear(ord("F"));
    show_debug_message("CONTROL");
    argument0.state = states.petcontroll;
}

view_object[0] = obj_player;

pet_dy += pet_grav;

if(place_meeting(x, y + pet_dy, obj_box)){
    while(!place_meeting(x, y + sign(pet_dy), obj_box)){
        y += sign(pet_dy);
    }
    pet_dy = 0;
}
y += pet_dy;
