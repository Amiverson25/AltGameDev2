/// @description Insert description here
// You can write your code in this editor


objDialogBubble.visible = true;
//objDialogBubble.x = 100;
//objDialogBubble.y = 100;
YesButton.x = objDialogBubble.x +objDialogBubble.width/4;
YesButton.y = objDialogBubble.y+ objDialogBubble.height;
switch (counterTimer){
	case 3:
		objDialogBubble.text = "Are you ready to go fishing?";
		YesButton.visible = true;
		YesButton.text = "Yes!";
		break;
	case 4:
		room = Ocean_Map;
		audio_stop_sound(TownMusic);
		audio_play_sound(FishingGame, 0, false);
	default:	
		objDialogBubble.text = "Looks like you need to start the tutorial still, go to the house to start it!";
		YesButton.visible = false;
		break;
}
