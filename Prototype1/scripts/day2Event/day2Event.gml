// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
///call this event when the fisherman goes to the person on the dock

function day2Event(){
	
					obj_Clock.image_index = 1;
	objDialogBubble.x = townPersonPier.x+25;
	objDialogBubble.y = townPersonPier.y-50;
	AButton.x = objDialogBubble.x - 50;
	AButton.y = objDialogBubble.y + 100;
	AButton.text = "Yes!";
	if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, AButton)){
		global.day2Dialog = 2;
		global.pollution += 5;
	}
	else if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, BButton)){
		global.day2Dialog = 3;
	}
	else if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, CButton)){
		global.day2Dialog = 4;
	}
	switch (global.day2Dialog){
		case 1:
			objDialogBubble.text = "Hi (fisherman name) yesterday I wasn't able to buy some fish because it was sold out! I'm really craving fish so would it be alright if I got first dibs on your catch tonight? I'll even throw in this net I found by the dock here, What do you say?" + string(day2Dialog);
			
			break;
		case 2:
			AButton.visible = false;
			objDialogBubble.text = "Tuto: (Using the net causes unforeseen pollution when used";
			break;
	}
}
	//dialog: “Hi (fisherman name) yesterday I wasn't able to buy some fish because it was sold out! I'm really craving fish so would it be alright if I got first dibs on your catch tonight? I'll even throw in this net I found by the dock here, What do you say?”
/*>Yes (Using the net causes unforeseen pollution when used) Pollution +5
“Thank you so much, I seriously can't wait!”
>Early bird gets the worm
“Can't fight you on that, I'll be there early just you wait!”

>No that's okay, we all need to wait patiently for our food. I can't give special treatment to anyone.”
“
>proceed as normally

(fish for the day)

	*/