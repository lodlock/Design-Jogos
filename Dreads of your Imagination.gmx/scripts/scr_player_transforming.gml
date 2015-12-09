target = collision_circle(mouse_x, mouse_y, 2, obj_enemy, 0, 1);
if (instance_exists(target) && mouse_check_button_pressed(mb_left)) {
    
    switch(target.sprite_index){
        case spr_enemy:
            target.sprite_index = spr_bow;
            argument0.transform = true;
            mouse_clear(mb_left);
            break;
        case spr_bow:
            target.sprite_index = spr_crate;
            argument0.transform = true;
            mouse_clear(mb_left);
            break;
        case spr_crate:
            target.sprite_index = spr_sword;
            argument0.transform = true;
            mouse_clear(mb_left);
            break;
        case spr_sword:
            target.sprite_index = spr_enemy;
            argument0.transform = false;
            mouse_clear(mb_left);
            break;
        default:
            break;  
       
    }
    /*if(obj_timeController.slowDown == false){
        obj_timeController.slowDown = true;
    }  */ 
}


if !keyboard_check(vk_control) {
   
    
    /*if(obj_timeController.slowDown == true){
        obj_timeController.slowDown = false;
    }*/
    argument0.state = states.normal;
    
}

