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



//NoButton.x = objDialogBubble.x+objDialogBubble.width/2;
//NoButton.y = objDialogBubble.y+ objDialogBubble.height;
if(instance_exists(ShopButton) && instance_exists(ShopButton2)){
	//ShopButton.visible = false;
	if(objPierBoat.startDayOfFishing >= 2){
		objPierBoat.startDayOfFishing = 0;
	}
	switch(objPierBoat.startDayOfFishing){
			case 0:
				objDialogBubble.text = "Merchant: Hey there, Fisherman. Are you here to buy some fishing supplies?";
				YesButton.text = "Sure am."
				YesButton.visible = true;
				NevermindButton.visible = false;
				ShopButton.visible = false;
				ShopButton2.visible = false;
				//NoButton.text = "Sure!"
				break;
			case 1:
				objDialogBubble.text = "Right now, I am selling a standard fishing net ($100) as well as a new one created with recycled material ($500).";
				NevermindButton.text = "Nevermind.";
			
				YesButton.x = -1000;
				YesButton.visible = false;
				NevermindButton.x = objDialogBubble.x +objDialogBubble.width/4;
				NevermindButton.y = objDialogBubble.y+ objDialogBubble.height;
				NevermindButton.visible = true;
				ShopButton.visible = true;
				ShopButton2.visible = true;

				//NoButton.text = "It was easy!"
				break;
			case 2:
				objDialogBubble.text = "Thank you for stopping by!";
				YesButton.visible = false;
				NevermindButton.visible = false;
				ShopButton.visible = false;
				ShopButton2.visible = false;
				break;
			//default:
				//objDialogBubble.text = "See you tomorrow, fisherman.";
				//YesButton.visible = false;
				//NoButton.visible = false;
		}
}