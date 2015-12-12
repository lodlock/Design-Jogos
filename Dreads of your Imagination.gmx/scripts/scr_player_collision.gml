//Horizontal Collision
if (place_meeting(x+hsp,y, obj_box)){
    while(!place_meeting(x+sign(hsp),y,obj_box)){
        x += sign(hsp);
    }
    hsp = 0;
}

if (place_meeting(x+hsp,y, obj_crate)){
    while(!place_meeting(x+sign(hsp),y,obj_crate)){
        x += sign(hsp);
    }
    hsp = 0;
}

x += hsp;

//Vertical Collision
if (place_meeting(x,y+vsp, obj_box)){
    while(!place_meeting(x,y+sign(vsp),obj_box)){
        y += sign(vsp);
    }
    vsp = 0;
}

if (place_meeting(x,y+vsp, obj_crate)){
    while(!place_meeting(x,y+sign(vsp),obj_crate)){
        y += sign(vsp);
    }
    vsp = 0;
}

y += vsp;
