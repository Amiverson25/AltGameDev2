/// @description Insert description here
// You can write your code in this editor


objDialogBubble.x = tutotheseal.x-10;
objDialogBubble.y = tutotheseal.y-10;
YesButton.x = objDialogBubble.x +objDialogBubble.width/4;
YesButton.y = objDialogBubble.y+ objDialogBubble.height;
if (global.nets > 0) 
{
	
	if(global.day == 3){
		objDialogBubble.visible = true;
		objDialogBubble.text = "Fisherman: “Hmm.. Looks like I'll have to dump off some of my used supplies that are of no use to me. If I take a trip to the recycling center it’s going to eat up some of my fishing day today. What to do..";
		AButton.y = objDialogBubble.y+ objDialogBubble.height;
		BButton.y = objDialogBubble.y+ objDialogBubble.height;
	
		AButton.text = "Take to the dump";
		BButton.text = "Take to recycle center";
		
		AButton.x = objDialogBubble.x;
		BButton.x = AButton.x + objDialogBubble.width - BButton.sprite_width;//-BButton.sprite_width;//AButton.x + AButton.sprite_width;
	
		if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, AButton)){
			global.pollution = global.pollution + 5;
			global.savings = global.savings + 300;
		}
		if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, BButton)){
			global.pollution = global.pollution - 5;
			global.savings = global.savings - 500;
		}
	}
	else{
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
