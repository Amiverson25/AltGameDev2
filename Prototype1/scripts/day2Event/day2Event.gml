// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
///call this event when the fisherman goes to the person on the dock

function day2Event(){
	
	obj_Clock.image_index = 1;
	objDialogBubble.x = townPersonPier.x+25;
	objDialogBubble.y = townPersonPier.y-50;
	
	if(instance_exists(AButton)){
		AButton.visible = true;
		AButton.x = objDialogBubble.x;
		AButton.y = objDialogBubble.y + objDialogBubble.height;
		AButton.text = "Yes";
		if(instance_exists(BButton)){
			BButton.visible = true;
			BButton.x = AButton.x+180;
			BButton.y = objDialogBubble.y + objDialogBubble.height;
			BButton.text = "No";
				if(instance_exists(CButton)){
					CButton.x = BButton.x +180;
					CButton.y = objDialogBubble.y + objDialogBubble.height;
					CButton.text = "Early bird gets the worm";
				}
		}
	}
	
	if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, AButton)){
		global.day2Dialog = 2;
		global.pollution += 5;
		//add net;
	}
	else if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, BButton)){
		if(global.day2Dialog == 2){
			global.day2Dialog = 5;
		}
		else{
			global.day2Dialog = 4;
		}
	}
	else if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, CButton)){
		global.day2Dialog = 3;
	}
	switch (global.day2Dialog){
		case 1:
			objDialogBubble.text = "Hi (fisherman name) yesterday I wasn't able to buy some fish because it was sold out! I'm really craving fish so would it be alright if I got first dibs on your catch tonight? I'll even throw in this net I found by the dock here, What do you say?" + string(day2Dialog);
			break;
		case 2:
			AButton.visible = false;
			CButton.visible = false;
			BButton.visible = true;
			BButton.text = "Oh?!"
			objDialogBubble.text = "Tuto: (Using the net causes unforeseen pollution when used";
			break;
		case 3:
			AButton.visible = false;
			CButton.visible = false;
			BButton.visible = false;
			objDialogBubble.text = "Can't fight you on that, I'll be there early just you wait!"
			break;
		case 4:
			AButton.visible = false;
			CButton.visible = false;
			BButton.visible = false;
			objDialogBubble.text = "No that's okay, we all need to wait patiently for our food. I can't give special treatment to anyone."
			break;
		case 5:
			AButton.visible = false;
			CButton.visible = false;
			BButton.visible = false;
			objDialogBubble.text = "Thank you so much, I seriously can't wait!"
			break;
	
	}
}