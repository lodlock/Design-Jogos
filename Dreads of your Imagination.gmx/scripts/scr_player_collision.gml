//Horizontal Collision
if (place_meeting(x+hsp,y, obj_box))
{
    yplus = 0;
    while(place_meeting(x+hsp,y-yplus, obj_box) && yplus <= abs(1*hsp)) yplus+=1;
    if place_meeting(x+hsp,y-yplus,obj_box)
    {
        while(!place_meeting(x+sign(hsp),y,obj_box)) x += sign(hsp);
        hsp = 0;
    }
    else
    {
        y -= yplus;
    }
}


x += hsp;

//Vertical Collision
if (place_meeting(x,y+vsp, obj_box))
{
    while(!place_meeting(x,y+sign(vsp),obj_box)) y += sign(vsp);
    vsp = 0;
}

if (place_meeting(x,y+1,obj_box))
{

    yminus = abs(hsp);
    while (place_meeting(x+hsp,y+yminus,obj_box) && yminus >0) yminus--;
    y += yminus;
}


y += vsp;


