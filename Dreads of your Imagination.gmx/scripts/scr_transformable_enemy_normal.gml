script_execute(right_or_left);

if(hp < 25){
    ask_transform = true;
    if(keyboard_check(ord("E"))){
        keyboard_clear(ord("E"));
        obj_pet.state = states.transforming;
    }
    
} 
if (obj_pet.state == states.transforming) {
    state = states.transforming;
}

scr_enemy_collision();
