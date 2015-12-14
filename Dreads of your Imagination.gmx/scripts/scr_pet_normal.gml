player_xdistance     = obj_player.x - x;
player_sprite_width  = abs(obj_player.sprite_width);
player_sprite_height = abs(obj_player.sprite_height);

if player_xdistance < 0 facing = -1;
else facing = 1;


if (pet_out_of_view)
{
    x      = obj_player.x - player_sprite_width;
    y      = obj_player.y;
    pet_dy = 0;
    
    pet_out_of_view = false;
}
else if (abs(player_xdistance) > 2 * player_sprite_width)
{
    pet_dx = pet_speed * sign(player_xdistance) * 1.5;
}
else if (abs(player_xdistance) > 1.5 * player_sprite_width)
{  
    pet_dx = pet_speed * sign(player_xdistance);
}
else pet_dx = 0;



//=========================================//
//catch up vertically
//=========================================//
player_ydistance = y - obj_player.y;

if (player_ydistance > 1.5 * player_sprite_height)
{
    if (place_meeting(x, y + 1, obj_box)) pet_dy = obj_player.jumpspeed * -1;
}
if (obj_player.hsp != 0 || obj_player.vsp != 0) sprite_index = spr_pet;
else sprite_index = spr_pet_idle;

scr_pet_collisions();

if (obj_player.state = states.transforming) {
    state = states.transforming; 
}

if(keyboard_check(ord("H"))){
    keyboard_clear(ord("H"));
    state = states.petcontroll;
}
if(keyboard_check(ord("I"))){
    keyboard_clear(ord("I"));
    state = states.petidle;
}

view_object[0] = obj_player;
