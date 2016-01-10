switch(mpos) {
    case 0: //Start
    {
        aux = instance_create(0,0,obj_fade);
        aux.room_to_fade = lvl_room;
        break;
    }
    case 1: //Levels
    {
        aux1 = instance_create(0,0,obj_fade);
        aux1.room_to_fade = rm_choose_lvl;
        break;
    }
    case 2: //Exit
    {
        game_end();
        break;
    }
    default: break;
}
