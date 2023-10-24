var up, down, accept, back;

up		  = keyboard_check_pressed(ord("W")) or gamepad_button_check_pressed(0, gp_padu);
down	  = keyboard_check_pressed(ord("S")) or gamepad_button_check_pressed(0, gp_padd);
accept	  = keyboard_check_pressed(ord("F")) or gamepad_button_check_pressed(0, gp_face1);
back	  = keyboard_check_pressed(ord("D")) or gamepad_button_check_pressed(0, gp_face2);

if up and image_index > 0 {
	image_index--;
}

if down and image_index < image_number-1 {
	image_index++;
}

if image_index == 0 and accept {
	room_goto(r_creategame)
}

if image_index == 1 and accept {
	room_goto(r_options)
}

if image_index == 2 and accept {
	game_end();
}