/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

//room = Town_Map;



objDialogBubble.visible = true;/*
objDialogBubble.x = 100;
objDialogBubble.y = room_height - 200;*/
//tutotheseal.x = objDialogBubble.x-50;
//tutotheseal.y = objDialogBubble.y-20;
YesButton.x = objDialogBubble.x +objDialogBubble.width/4;
YesButton.y = objDialogBubble.y+ objDialogBubble.height;
YesButton.visible = false;

//NoButton.x = objDialogBubble.x+objDialogBubble.width/2;
//NoButton.y = objDialogBubble.y+ objDialogBubble.height;
switch(counterTimer){
	case 1:
		objDialogBubble.text = "Tuto: Hi Fisherman, I'm here to help you on your way to Fishing Mastery! First, move around with WASD. Lets get over to the shop and get some supplies for the day. Huh? What's that? How can you understand me? I don’t really know myself, I guess it just works out that way. Let's get going.";
		YesButton.text = "Yup!"
		YesButton.visible = true;
		//NoButton.text = "Sure!"
		break;
	case 2:
		objDialogBubble.text = "Well, first of all you discovered the basic WASD controls";
		YesButton.text = "It was easy!";
		YesButton.visible = true;
		//NoButton.text = "It was easy!"
		break;
	case 3:
		objDialogBubble.text = "Go ahead and go to the boat to begin the tutorial for the mini game";
		YesButton.visible = false;
		break;
	default:
		objDialogBubble.text = "Seems like you finished the tutorial, go to the boat to get started with your gameplay.";
		YesButton.visible = false;
		NoButton.visible = false;
}