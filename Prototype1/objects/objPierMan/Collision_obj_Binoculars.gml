/// @description Insert description here
// You can write your code in this editor


objDialogBubble.x = tutotheseal.x-10;
objDialogBubble.y = tutotheseal.y-10;
YesButton.x = objDialogBubble.x +objDialogBubble.width/4;
YesButton.y = objDialogBubble.y+ objDialogBubble.height;

	objDialogBubble.visible = true;
	objDialogBubble.text = "Do you want to look through the binoculars";
	YesButton.visible = true;
	YesButton.text = "Yes!";
	
	if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, YesButton)){
		room = FactoryScene;
		
	}
	/*switch (objPierBoat.startDayOfFishing){
		case 1:
			objDialogBubble.visible = true;
			objDialogBubble.text = "Are you ready to go fishing?";
			YesButton.visible = true;
			YesButton.text = "Yes!";
			break;
		case 2:
			room = Ocean_Map;
			//audio_stop_sound(TownMusic);
			//audio_play_sound(FishingGame, 0, false);
			break; }*/ 
