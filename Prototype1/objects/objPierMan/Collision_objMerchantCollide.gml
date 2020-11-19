/// @description Insert description here
// You can write your code in this editor

/// @description OBJMERCHANTCOLLIDE
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

objDialogBubble.visible = true;

YesButton.x = objDialogBubble.x +objDialogBubble.width/4;
YesButton.y = objDialogBubble.y+ objDialogBubble.height;
YesButton.visible = false;
ShopButton.visible = false;

//NoButton.x = objDialogBubble.x+objDialogBubble.width/2;
//NoButton.y = objDialogBubble.y+ objDialogBubble.height;
switch(counterTimer){
	case 1:
		objDialogBubble.text = "Merchant: Hey there, Fisherman. Are you here to buy some fishing supplies?";
		YesButton.text = "Sure am."
		YesButton.visible = true;
		ShopButton.visible = false;
		ShopButton2.visible = false;
		//NoButton.text = "Sure!"
		break;
	case 2:
		objDialogBubble.text = "Right now, I am selling a standard fishing net ($100) as well as a new one created with recycled material ($500).";
		YesButton.text = "Nevermind.";
		YesButton.visible = true;
		ShopButton.visible = true;
		ShopButton2.visible = true;

		//NoButton.text = "It was easy!"
		break;
	case 3:
		objDialogBubble.text = "Thank you for stopping by!";
		YesButton.visible = false;
		ShopButton.visible = false;
		ShopButton2.visible = false;
		break;
	default:
		objDialogBubble.text = "See you tomorrow, fisherman.";
		YesButton.visible = false;
		NoButton.visible = false;
}