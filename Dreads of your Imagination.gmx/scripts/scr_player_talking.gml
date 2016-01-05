//argument0 = instance of obj_dialogue

scr_get_input()

if(key_dialogue) {
    if(argument0.line < array_length_1d(argument0.text) - 1) {
        argument0.end_of_line = 0;
        argument0.line++;
    }
    
    else {
        with(argument0) instance_destroy();
        obj_player.state = states.normal;
        
        //Cutscene events
        if(argument0 == cutscene_intro) {
            instance_create(0,0,obj_fade);
        }
    }
}

//Boss dialogue event LVL 1
with(argument0){
    if(argument0 == boss1_talk)
    {
        if(argument0.line < array_length_1d(argument0.text) - 1)
        {
            if(argument0.line == 5)
            {
                with(obj_boss_obscuro)
                    instance_destroy();
                if(first_chicken){
                    instance_create(952,3296,obj_chicken);
                    first_chicken = false;
                }
            }
        }
        else{
            with (all)
            {
                instance_destroy();
            }
            instance_create(0,0,obj_fade);
            }
    }

}

//Boss dialogue event LVL 2
with(argument0){
    if(argument0 == boss2_talk)
    {
        haze_death = true;
        view_object[0] = obj_boss_obscuro_lvl2;
        if(argument0.line < array_length_1d(argument0.text) - 1)
        {
            if(argument0.line == 9 && first_shot)
            {
                instance_create(2716,3264, obj_dark_special_ammo);
                first_shot = false;
                
            }
        }
        else{
            with (all)
            {
                instance_destroy();
            }
            instance_create(0,0,obj_fade);
            }
    }

}
