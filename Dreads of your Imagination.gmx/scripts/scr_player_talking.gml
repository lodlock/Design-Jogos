//argument0 = instance of obj_dialogue

scr_get_input()

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

with(argument0){
    if(argument0 == inst_B49C88C6)
    {
        show_debug_message(argument0.line);
        if(argument0.line < array_length_1d(argument0.text) - 1)
        {
            if(argument0.line == 5)
            {
                with(obj_boss_obscuro)
                    instance_change(obj_chicken,false);
            }
        }
        else{
            with(obj_torch) instance_destroy();
            with(obj_GM) instance_destroy();
            with(obj_inventory) instance_destroy();
            with(obj_musicBox) instance_destroy();
            
            room_goto_next();
            }
    }

}
