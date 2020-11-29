/// @description Insert description here
// You can write your code in this editor

x=clamp(x, -20, room_width);
y=clamp(y, 0, room_height);
YesButton.visible = false;
if(instance_exists(ShopButton) &&  instance_exists(ShopButton2)){
	ShopButton.visible = false;
	ShopButton2.visible = false;
}
if(objPierBoat.startDayOfFishing2 == 2 && !position_meeting(x, y, objPierMan)){
	objPierBoat.startDayOfFishing2 = 0;
}




