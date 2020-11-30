/// @description Insert description here
// You can write your code in this editor


//objDialogBubble.visible = true;
//objDialogBubble.x = 100;
//objDialogBubble.y = 100;
objDialogBubble.x = tutotheseal.x-10;
objDialogBubble.y = tutotheseal.y-10;
YesButton.x = objDialogBubble.x +objDialogBubble.width/4;
YesButton.y = objDialogBubble.y+ objDialogBubble.height;
if (global.nets > 0) 
{
	objDialogBubble.visible = true;
	objDialogBubble.text = "Are you ready to go fishing?";
	YesButton.visible = true;
	YesButton.text = "Yes!";
	
	if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, YesButton)){
		room = Ocean_Map;
		audio_stop_sound(TownMusic);
		audio_stop_sound(FishingGame)//, 0, false);
		audio_play_sound(FishingGame, 0, false);
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
}
else{
	objDialogBubble.visible = true;
	objDialogBubble.text = "It looks like you do not have any nets. You can purchase those at the shop.";
	YesButton.visible = false;
	YesButton.text = "Go Back";
}

/*switch (objPierBoat.startDayOfFishing){
	case 0:
	
	
	case 1:
		objDialogBubble.text = "Are you ready to go fishing?";
		YesButton.visible = true;
		YesButton.text = "Yes!";
		break;
	case 2:
	
		room = Ocean_Map;
		audio_stop_sound(TownMusic);
		audio_play_sound(FishingGame, 0, false);
}*/
