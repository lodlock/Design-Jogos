switch(mpos) {
    case 0: //Level 1
    {
        aux = instance_create(0,0,obj_fade);
        aux.room_to_fade = lvl_room;
        break;
    }
    case 1: //Level 2
    {
        aux = instance_create(0,0,obj_fade);
        aux.room_to_fade = lvl_room2;
        break;
    }
    case 2: //Level 3
    {
        aux = instance_create(0,0,obj_fade);
        aux.room_to_fade = lvl_room3;
        break;
    }
    case 3: //Back to Main Menu
    {
        aux = instance_create(0,0,obj_fade);
        aux.room_to_fade = rm_initialize;
        break;
    }
    default: break;
}
