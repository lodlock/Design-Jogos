//Pet is being controlled

if(obj_pet.state = states.normal){
    obj_player.state = states.normal;
}

if ((place_meeting(x,y, obj_transformable_enemy)  || place_meeting(x,y, obj_e)) || place_meeting(x,y, obj_e2)){
    hp -= 0.05;
}
vsp += grav;

if (place_meeting(x,y+vsp, obj_box)){
    while(!place_meeting(x,y+sign(vsp),obj_box)){
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;


