/// @description Insert description here
// You can write your code in this editor
if(instance_exists(objDialogBubble) && instance_exists(YesButton)){
	objDialogBubble.visible = true;
	
	YesButton.x = objDialogBubble.x +objDialogBubble.width/4;
	YesButton.y = objDialogBubble.y+ objDialogBubble.height;
	//YesButton.text = "sure";
	dialog();
	//objDialogBubble.text = "Just another working day huh, I don't mind it at all. I'm doing what I love most and I can enjoy the fresh air and the clear oceans.";
}

//instance_create(townPersonPier.x, townPersonPier.y,objdialogTown);
