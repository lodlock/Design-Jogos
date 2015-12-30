//argument0 = instance of obj_dialogue

scr_get_input()

show_debug_message(argument0);

if(key_dialogue) {
    if(argument0.line < array_length_1d(argument0.text) - 1) {
        argument0.end_of_line = 0;
        argument0.line++;
    }
    
    else {
        //instance_deactivate_object(argument0);
        with(argument0) instance_destroy();
        obj_player.state = states.normal;
    }
}
