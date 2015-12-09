target = collision_circle(mouse_x, mouse_y, 2, obj_transformable_enemy, 0, 1);
if (instance_exists(target) && mouse_check_button_pressed(mb_left)) {
    
    switch(target.sprite_index){
        case spr_enemy:
            target.sprite_index = spr_bow;
            transform = true;
            mouse_clear(mb_left);
            break;
        case spr_bow:
            target.sprite_index = spr_crate;
            transform = true;
            mouse_clear(mb_left);
            break;
        case spr_crate:
            target.sprite_index = spr_sword;
            transform = true;
            mouse_clear(mb_left);
            break;
        case spr_sword:
            target.sprite_index = spr_enemy;
            transform = false;
            mouse_clear(mb_left);
            break;
        default:
            break;  
       
    }
}


if !keyboard_check(vk_control) {
    argument0.state = states.normal; 
}

