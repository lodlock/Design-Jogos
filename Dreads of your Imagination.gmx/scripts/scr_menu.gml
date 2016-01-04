switch(mpos) {
    case 0: //Start
    {
        instance_create(0,0,obj_fade);
        break;
    }
    case 1: //Options
    {
        break;
    }
    case 2: //Exit
    {
        game_end();
        break;
    }
    default: break;
}
