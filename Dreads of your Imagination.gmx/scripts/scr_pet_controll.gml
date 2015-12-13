scr_get_input();

//React to inputs
move = key_left + key_right;
if(move == 1) facing = 1; else if (move == -1) facing = -1;
hsp = move * movespeed;
if (vsp < 10) vsp += grav;

//Check if object can Jump
if (place_meeting(x,y+1, obj_box)){
    vsp = key_jump * -jumpspeed;
}

target = collision_circle(x, y, 50, obj_torch, 0, 1);

//scr_pet_collisions();

if (instance_exists(target) &&  keyboard_check(ord("F"))){
    keyboard_clear(ord("F"));
    target.can_light = true;
}

if(keyboard_check(ord("H"))){
    keyboard_clear(ord("H"));
    argument0.state = states.petidle;
}
view_object[0] = obj_pet;
scr_pet_collision_controlled();