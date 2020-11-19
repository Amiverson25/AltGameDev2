/// @description Insert description here
// You can write your code in this editor



x=clamp(x, -20, room_width);
y=clamp(y, 0, room_height);

switch(objTownMan.counterTimer){
	case 0:
		YesButton.visible = true;
		YesButton.text = "sure";
		objDialogBubble.text = "Just another working day huh, I don't mind it at all. I'm doing what I love most and I can enjoy the fresh air and the clear oceans.";
		break;
	case 1:
		YesButton.visible = true;
		YesButton.text = "Okay, let's check it out.";
		objDialogBubble.text = "Looks like something is in the process of being built in the bay over there, they’ve been working on it for awhile now. I wonder what it will be.";
		break;
	case 2:
		YesButton.visible = false;
		objDialogBubble.text = "Go down and check out what is being built!"
		break;
}