/// @description Insert description here
// You can write your code in this editor


objDialogBubble.visible = true;
//objDialogBubble.x = 100;
//objDialogBubble.y = 100;
YesButton.x = objDialogBubble.x +objDialogBubble.width/4;
YesButton.y = objDialogBubble.y+ objDialogBubble.height;

switch (objPierBoat.startDayOfFishing){
	case 1:
		objDialogBubble.text = "Are you ready to go fishing?";
		YesButton.visible = true;
		YesButton.text = "Yes!";
		break;
	case 2:
		room = Ocean_Map;
		audio_stop_sound(TownMusic);
		audio_play_sound(FishingGame, 0, false);
}
