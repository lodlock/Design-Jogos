//Get the player's input
key_right = keyboard_check(ord("D")) || gamepad_axis_value(0,gp_axislh) > 0; //boolean
key_left = -(keyboard_check(ord("A")) || (gamepad_axis_value(0,gp_axislh) < 0));
key_jump = keyboard_check(ord("W")) || gamepad_button_check_pressed(0,gp_face1);
key_space = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0,gp_face4);
key_e = keyboard_check(ord("E")) || gamepad_button_check_pressed(0,gp_face2);
key_f = keyboard_check(ord("F")) || gamepad_button_check_pressed(0,gp_shoulderlb);
key_ff = keyboard_check(ord("F")) || gamepad_button_check_pressed(0,gp_shoulderrb);
key_dialogue = keyboard_check(vk_enter) || keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0,gp_face1);

//Set deadzone for stick in gamepad
gamepad_set_axis_deadzone(0, 0.3);
