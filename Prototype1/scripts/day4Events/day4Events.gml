// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function day4Events(){
	obj_Clock.image_index = 3;
	if(instance_exists(townPersonPier)){
		if(instance_exists(objDialogBubble)){
			//switch(global.dialog4){
				if(global.dialog4 == 0){
					AButton.visible = true;
					BButton.visible = true;
					CButton.visible = true;
					AButton.x = objDialogBubble.x;
					AButton.y = objDialogBubble.y + objDialogBubble.height;
					AButton.text = "Give him some of your used Fuel and 100.";
			
					BButton.x = AButton.x + 180;
					BButton.y = AButton.y;
					BButton.text = "Don't give him anything.";
			
					CButton.y = objDialogBubble.y + objDialogBubble.height;
					CButton.x = BButton.x + 180;//0;
					CButton.text = "Give him 500 for fuel at the station.";
		
					objDialogBubble.x = townPersonPier.x+25;
					objDialogBubble.y = townPersonPier.y-50;
					objDialogBubble.text = "Hey there Fisherman, You think you can lend me some of your fuel and money so I can make it really quick to the station. I promise it won't take long and I'll pay you back.";
					if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, AButton)){
						global.pollution += 5;
						global.dialog4 = 1;
						global.savings += 100;	
					}
					if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y,BButton)){
						global.pollution += 5;
						global.dialog4 = 2;
					}
					if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y,CButton)){
						global.pollution -= 5;
						global.dialog4 = 3;
						global.savings += 500;
					}
				}
				else if(global.dialog4 == 1){
					objDialogBubble.text = "Thank you fisherman!";
					AButton.x = -1000;
					BButton.x = -1000;
					CButton.x = -1000;
				}
				else if(global.dialog4 == 2){
					objDialogBubble.text = "Thats okay :(";
					AButton.x = -1000;
					BButton.x = -1000;
					CButton.x = -1000;
				}
				else if(global.dialog4 == 3){
					objDialogBubble.text = "Thank you fisherman!";
					AButton.x = -1000;
					BButton.x = -1000;
					CButton.x = -1000;
				}
					//objDialogBubble.text = "Fisherman Help! I'm in need of some money to donate to our local Recycling center. I'm afraid I need 1000 dollars but I promise you it'll be well worth it;";
			//}
			
		}
	}
/*
“Fisherman Help! I'm in need of some money to donate to our local Recycling center. I'm afraid I need 1000 dollars but I promise you it'll be well worth it.

Give 1000: (Reduces Pollution -10)
Do not Give: (Pollution Raises +10)

“Hey there Fisherman, You think you can lend me some of your fuel and money so I can make it really quick to the station. I promise it won't take long and I'll pay you back.”

Give him some of your used Fuel and 100: (Raises pollution +5)
Don't give him anything: (Raises pollution due to him using cheap fuel at the station +5)
Give him 500 for fuel at the station: (he buys good fuel at the station. pollution -5.)

(Homeless Man on the dock) //gets own script? or this be when the dude collides with homelessman

“Hello there fisherman, Do you think you can loan me 500 and a trip down to the city. My business is my own. I just really need the help right now. What do you say?”

Accept: ( Results of this comes later)
Don't Accept:(Results of this comes later)

*/
}