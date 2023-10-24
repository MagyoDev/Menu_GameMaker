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

if (accept){
	switch(image_index) {
	case 0:
		//Create game
		instance_create_layer(0,0, "Instances", obj_server)
		room_goto_next()
	break
	
	case 1:
		//Join game
		room_goto_next()
	break
	
	case 2:
		room_goto_previous()
	break
	}
}