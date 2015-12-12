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

pet_dy += pet_grav;

if(place_meeting(x, y + pet_dy, obj_box)){
    while(!place_meeting(x, y + sign(pet_dy), obj_box)){
        y += sign(pet_dy);
    }
    pet_dy = 0;
}
y += pet_dy;
