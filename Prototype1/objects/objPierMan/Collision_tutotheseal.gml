/// @description Insert description here
// You can write your code in this editor

/// @description Dialog here
objDialogBubble.visible = true;
YesButton.x = objDialogBubble.x +objDialogBubble.width/4;
YesButton.y = objDialogBubble.y+ objDialogBubble.height;
YesButton.visible = false;

if(global.day == 1){
	switch(global.pierManDialog){
			case 1:
				
				objDialogBubble.text = "Tuto: Hi Fisherman, I'm here to help you on your way to Fishing Mastery! First, move around with WASD. Lets get over to the shop and get some supplies for the day. Huh? What's that? How can you understand me? I don't really know myself, I guess it just works out that way. Let's get going.";
				YesButton.text = "What, a talking seal?";
				YesButton.visible = true;
				break;
			case 2:
				objDialogBubble.text = "Fisherman: Hmm, okay. This is really weird. A talking seal telling me what to do? I must have drank way too much last night.";
				YesButton.text = "Lets go to the shop!";
				YesButton.visible = true;
				break;
			case 3:
				//possibly trigger an event about shopping.
				//player goes through tutorial, still tbh when it comes to the supplies, and how we might do this
				objDialogBubble.text = "Okay, go ahead and go to the shop and we will begin the tutorial";
				YesButton.text = "Lets go!";
				YesButton.visible = true;
				//when the player goes through the store, increment the switch value by 1
				break;
			case 4:
				//this section of the dialog will be for day 1
				//this will go to the ocean, than the mini game
				//after the minigame there will be a report of how many fish they got 
				//that will be the end of the day, thus it will give an end of day report.
				objDialogBubble.text = "Okay, now that you learned about the shop and have your supplies, lets go fishing! Head on over to the boat.";
				YesButton.text = "This button will be gone";
				YesButton.visible = false;
				break;
}
}
