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


//GRAB LEDGE

var was_free = !position_meeting(x+(17*hsp_dir), yprevious-4,obj_box);
var is_not_free = position_meeting(x+(17*hsp_dir), y-4, obj_box);
var moving_down = yprevious < y;

if(was_free && is_not_free && moving_down){
    hsp = 0;
    vsp = 0;
    
    while(!place_meeting(x+hsp_dir, y, obj_box)){
        x+=hsp_dir;
    }
    
    while(position_meeting(x+(17*hsp_dir), y-5, obj_box)){
        y-=1;
    }
    
    state = states.grab_ledge;
}
