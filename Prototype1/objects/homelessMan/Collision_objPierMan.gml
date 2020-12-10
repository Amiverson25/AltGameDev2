/// @description Insert description here
// You can write your code in this editor
if(global.day == 4 && global.talkedToHomeless = 0){
	objDialogBubble.visible = true;
	objDialogBubble.x = homelessMan.x - objDialogBubble.width + 50;

	objDialogBubble.y = homelessMan.y;
	AButton.x = objDialogBubble.x;
	BButton.x = AButton.x + objDialogBubble.width - BButton.sprite_width;//-BButton.sprite_width;//AButton.x + AButton.sprite_width;
	
	AButton.y = objDialogBubble.y+ objDialogBubble.height;
	BButton.y = objDialogBubble.y+ objDialogBubble.height;
	
	AButton.visible = true;
	BButton.visible = true;
	objDialogBubble.text = "Hello there fisherman. Do you think you can loan me 500 and a trip down to the city? I have some trash I need to take to the dump. I just really need the help right now. What do you say?";
	AButton.text = "Accept";//: ( Results of this comes later)";
	BButton.text = "Don't Accept";//:(Results of this comes later)";
	
	if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, AButton)){
		
		global.talkedToHomeless = 1;
		global.savings -= 500;
	}
	if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, BButton)){
		global.talkedToHomeless = 2;
		global.acceptedHomeless = 1;
	}
}

else if (global.day == 4 && global.talkedToHomeless == 1){
	objDialogBubble.visible = true;
	objDialogBubble.x = homelessMan.x - objDialogBubble.width + 50;
	objDialogBubble.y = homelessMan.y;
	
	AButton.y = 10000;//objDialogBubble.y+ objDialogBubble.height;
	BButton.y = 10000;//objDialogBubble.y+ objDialogBubble.height;
	
	objDialogBubble.text = "Thanks my dude!";
}
else if (global.day == 4 && global.talkedToHomeless == 2){
	objDialogBubble.visible = true;
	objDialogBubble.x = homelessMan.x - objDialogBubble.width + 50;
	objDialogBubble.y = homelessMan.y;
	
	AButton.y = 10000;//objDialogBubble.y+ objDialogBubble.height;
	BButton.y = 10000;//objDialogBubble.y+ objDialogBubble.height;
	
	
	objDialogBubble.text = "Okay >:(";
}
else if (global.day == 6 && global.acceptedHomeless == 1){
	objDialogBubble.x = homelessMan.x - objDialogBubble.width + 50;
	objDialogBubble.y = homelessMan.y;
	objDialogBubble.visible = true;
	AButton.visible = true;
	AButton.x = objDialogBubble.x + objDialogBubble.width/2-50;
	AButton.y = objDialogBubble.y + objDialogBubble.height;
	BButton.y = 10000;//objDialogBubble.y+ objDialogBubble.height;
	AButton.text = "Hmmm...";
	objDialogBubble.text = "Hey there fisherman, Don't mind me I’ve been just dumping my trash into the ocean in accord that I have no way to get to the  dump from here. You Wouldn't help me earlier so I had no choice. I wouldn’t worry about it Fisherman, what we humans do only affects mother nature by a miniscule amount. HAHA.";
	
	if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, AButton)){
		global.talkedToHomeless = 3;
		global.pollution += 20;
		AButton.x = 10000;
		
		//global.acceptedHomeless = 1;
	}
	if (global.talkedToHomeless == 3){
		objDialogBubble.x = homelessMan.x - objDialogBubble.width + 50;
		objDialogBubble.y = homelessMan.y;
		objDialogBubble.visible = true;
	
		AButton.y = 10000;//objDialogBubble.y+ objDialogBubble.height;
		BButton.y = 10000;//objDialogBubble.y+ objDialogBubble.height;
		//AButton.text = "Hmmm...";
		objDialogBubble.text = ">:)";
	}
	
}