//Horizontal
if(place_meeting(x + pet_dx, y, obj_box)){
    while(!place_meeting(x + sign(pet_dx), y, obj_box)){
        x += sign(pet_dx);
    }
    pet_dx = 0;
}
//Vertical
if(place_meeting(x, y + pet_dy, obj_box)){
    while(!place_meeting(x, y + sign(pet_dy), obj_box)){
        y += sign(pet_dy);
    }
    pet_dy = 0;
}

//Horizontal
if(place_meeting(x + pet_dx, y, obj_crate)){
    while(!place_meeting(x + sign(pet_dx), y, obj_crate)){
        x += sign(pet_dx);
    }
    pet_dx = 0;
}
//Vertical
if(place_meeting(x, y + pet_dy, obj_crate)){
    while(!place_meeting(x, y + sign(pet_dy), obj_crate)){
        y += sign(pet_dy);
    }
    pet_dy = 0;
}

x += pet_dx;
y += pet_dy;

pet_dy += pet_grav;
