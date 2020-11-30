/// @description Insert description here
// You can write your code in this editor

/// @description OBJMERCHANTCOLLIDE
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

//objDialogBubble.visible = true;

NevermindButton.x = objDialogBubble.x +objDialogBubble.width/4;
NevermindButton.y = objDialogBubble.y+ objDialogBubble.height;
NevermindButton.visible = false;
ShopButton.visible = false;
ShopButton2.visible = false;



//NoButton.x = objDialogBubble.x+objDialogBubble.width/2;
//NoButton.y = objDialogBubble.y+ objDialogBubble.height;
if(instance_exists(ShopButton) && instance_exists(ShopButton2)){
	switch(objPierBoat.startDayOfFishing2){
			case 0:
				objDialogBubble.visible = true;
				objDialogBubble.text = "Merchant: Hey there, Fisherman. Are you here to buy some fishing supplies?";
				NevermindButton.text = "Sure am."
				NevermindButton.visible = true;
			
				ShopButton.visible = false;
				ShopButton2.visible = false;
				//NoButton.text = "Sure!"
				break;
			case 1:
				objDialogBubble.visible = true;
				objDialogBubble.text = "Right now, I am selling a standard fishing net ($100) as well as a new one created with recycled material ($500).";
				NevermindButton.text = "Nevermind.";
				NevermindButton.visible = true;
				//NevermindButton.x = objDialogBubble.x +objDialogBubble.width/4;
				//NevermindButton.y = objDialogBubble.y+ objDialogBubble.height;
				//NevermindButton.visible = true;
				ShopButton.visible = true;
				ShopButton2.visible = true;

				//NoButton.text = "It was easy!"
				break;
			case 2:
				objDialogBubble.visible = true;
				objPierBoat.startDayOfFishing2 = 0;
				objDialogBubble.text = "Thank you for stopping by!";
				NevermindButton.visible = false;
				//NevermindButton.visible = false;
				ShopButton.visible = false;
				ShopButton2.visible = false;
				break;
		}
}

