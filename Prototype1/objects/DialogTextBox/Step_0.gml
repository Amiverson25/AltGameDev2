/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(interact_key)){
	if(counter < str_l){ counter = str_l; }
	else if(page < array_length_1d(text) - 1){
		page++;
		event_perform(ev_other, ev_user1);
	} else {instance_destroy(); }
}