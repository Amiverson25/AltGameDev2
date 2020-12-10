/// @description Insert description here
// You can write your code in this editor

if(!can_move) exit;



x=clamp(x, -20, room_width);
y=clamp(y, 0, room_height);

/*switch(objTownMan.counterTimer){
	case 0:
		YesButton.visible = true;
		YesButton.text = "sure";
		objDialogBubble.text = "Just another working day huh, I don't mind it at all. I'm doing what I love most and I can enjoy the fresh air and the clear oceans.";
		break;
	case 1:
		YesButton.visible = true;
		YesButton.text = "Okay, let's check it out.";
		objDialogBubble.text = "Looks like something is in the process of being built in the bay over there, they've been working on it for awhile now. I wonder what it will be.";
		break;
	case 2:
		//YesButton.visible = false;
		objDialogBubble.text = "Go down and check out what is being built!"
		break;
	case 3:
		//objDialogBubble.text = "“Hello, (fisherman name) I just wanted to let you know that my kids will only eat the fish you catch! It's a wonder really, before buying from you they refused to eat fish. Here's something to show my gratitude.”
		break;	
	case 4:
		objDialogBubble.text = "";*/
//}

if (global.nets <= 0) and (global.savings <= 0){
		room = Game_Over;
	}
	
		if (global.day == 8){
			if (global.pollution <= 70) {
				room = Win_Room;
			}
			if (global.pollution > 70) {
				room = Game_Over
			}
		}
		
	
			


//UPDATE Input

input_interact = keyboard_check_pressed(ord("F"));


//TextBox Collision Check
if(input_interact){
	
	if(active_textbox == noone){
	
		var inst = collision_rectangle(x-radius, y-radius, x+radius, y+radius, parNPC, false, false);
		can_move = false;
	
		if(inst != noone){
			with(inst){
			var tbox = create_textbox(text, speakers, next_line, scripts);
			can_move = false;
			}
			active_textbox = tbox;
		}
	} else {
		if(!instance_exists(active_textbox)){
			active_textbox = noone;
			can_move = true;
		}
	}
}
