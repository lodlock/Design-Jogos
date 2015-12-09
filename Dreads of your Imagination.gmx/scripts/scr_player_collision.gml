//argument0 = obj that called the script

//Horizontal Collision
if (place_meeting(argument0.x+argument0.hsp,argument0.y, obj_box)){
    while(!place_meeting(argument0.x+sign(argument0.hsp),argument0.y,obj_box)){
        argument0.x += (sign(argument0.hsp) * global.timeMultiplier);
    }
    argument0.hsp = 0;
}

argument0.x += (argument0.hsp * global.timeMultiplier);

//Vertical Collision
if (place_meeting(argument0.x,argument0.y+argument0.vsp, obj_box)){
    while(!place_meeting(argument0.x,argument0.y+sign(argument0.vsp),obj_box)){
        argument0.y += (sign(argument0.vsp) * global.timeMultiplier);
    }
    argument0.vsp = 0;
}
argument0.y += (argument0.vsp * global.timeMultiplier);


