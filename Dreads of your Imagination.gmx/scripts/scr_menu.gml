switch(mpos) {
    case 0: //Start
    {
        room_goto_next();
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
