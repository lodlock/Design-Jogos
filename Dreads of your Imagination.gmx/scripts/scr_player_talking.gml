scr_get_input()

if(key_dialogue) {
    if(obj_dialogue.line < array_length_1d(obj_dialogue.text) - 1) {
        obj_dialogue.end_of_line = 0;
        obj_dialogue.line++;
    }
    
    if(obj_dialogue.line == array_length_1d(obj_dialogue.text)) {
        obj_player.state = states.normal;
    }
}
