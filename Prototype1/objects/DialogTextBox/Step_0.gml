/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(interact_key)){
	
	audio_play_sound( select, 10, false);
	
	if(!choice_dialogue and counter < str_l){ counter = str_l; }
	else if(page < array_length_1d(text) - 1){
		event_perform(ev_other, ev_user2);
		
		
		var line = next_line[page];
		if(choice_dialogue) line = line[choice];
		
		if(line == 0) page++;
		else if(line == -1){ instance_destroy(); exit; }
		else page = line;
		
		event_perform(ev_other, ev_user1);			
	}  
	
	else {instance_destroy(); }
	
}

if(choice_dialogue){
	choice += keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"));
	
	if(choice > text_array_l -1) choice = 0;
	if(choice < 0) choice = text_array_l-1;
	
}