script_execute(right_or_left);

if(hp < 25){
    ask_transform = true;
    depth = -999;
    if(room != lvl1_1 && room != lvl1_2 && room != lvl1_3 && room != lvl1_4){
        if(keyboard_check(ord("E")) || gamepad_button_check_pressed(0,gp_face2)){
            keyboard_clear(ord("E"));
            if(instance_exists(obj_pet))
                obj_pet.state = states.transforming;
            obj_player.state = states.transforming;
        }
    }else{
        if(instance_exists(obj_pet) && obj_pet.state == states.petcontroll && (keyboard_check(ord("E")) || gamepad_button_check_pressed(0,gp_face2))){
            keyboard_clear(ord("E"));
            if(instance_exists(obj_pet))
                obj_pet.state = states.transforming;
            obj_player.state = states.transforming;
        }
    }
    
} 
if (obj_player.state == states.transforming) {
    state = states.transforming;
}

scr_enemy_collision();
