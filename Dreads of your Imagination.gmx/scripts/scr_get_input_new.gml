//Get the player's input
key_right = keyboard_check(ord("D")) || (gamepad_axis_value(0,gp_axislh) > 0); //boolean
key_left = -(keyboard_check(ord("A")) || (gamepad_axis_value(0,gp_axislh) < 0));
key_jump = keyboard_check(ord("W")) || (gamepad_button_check_pressed(0,gp_face1));
key_space = keyboard_check_pressed(vk_space);
key_e = keyboard_check(ord("E"));
key_ff = keyboard_check(ord("F")) || gamepad_button_check_pressed(0,gp_face2);

key_f = 0;
