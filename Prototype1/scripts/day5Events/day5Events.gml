// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function day5Events(){
	//obj_Clock.image_index = 4;
	if(instance_exists(townPersonPier)){
		if(instance_exists(objDialogBubble)){
			objDialogBubble.x = townPersonPier.x+25;
			objDialogBubble.y = townPersonPier.y-50;
			
			objDialogBubble.text = "Fishing, fishing...";
			
			/*AButton.visible = true;
			BButton.visible = true;
			
			objDialogBubble.text = "That's good to see. I should sign up to help sometime... But I have bigger fish to fry now, but maybe i should help...";
			AButton.x = objDialogBubble.x;
			AButton.y = objDialogBubble.y + objDialogBubble.height;
			AButton.text = "Help";
			
			BButton.x = AButton.x+180;
			BButton.y = objDialogBubble.y + objDialogBubble.height;
			BButton.text = "Don't Help";
			
			
			if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, AButton)){
				global.pollution -= 10;
				global.dialog5 = 1;
				//objDialogBubble.text = "Thats okay";
			}
			if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y,BButton)){
				global.pollution += 10;
				global.dialog5 = 2;
			}
			*/
			//objDialogBubble.text = "Fisherman Help! I'm in need of some money to donate to our local Recycling center. I'm afraid I need 1000 dollars but I promise you it'll be well worth it;";
		}
	}
	
/*
(player finds a community service team picking up trash on the coast)
“That's good to see. I should sign up to help sometime… But I have bigger fish to fry now, but maybe i should help...”

Help: (Reduced Boat Capacity by 10 when you fish later for the day. But you lower pollution level -10.)
Don't Help: ( Without the fishermans awesome presence the service team is forced off the beach by Jenkin's Industries) (Pollution level raise +10)

(Player finds some teenagers left some used trash on his boat)

“What the.. Some leftover trash is on my boat...those dang kids! If I take it to the dump now I won't be able to fish today.. What to do..”

Take to the Dump: (Limited fishing capacity day, but raise pollution + 5)
Take to the Recycle Center: (Cost 500, reduce capacity by 10 for the day,  lower pollution -5)
Have a local take it for you: “Hey you there can you help a fisherman out. Take this trash out for me will you? I'll throw in some of my catch from today as incentive.” (raise pollution by 10)

(fish for the day, if able to)

*/
}