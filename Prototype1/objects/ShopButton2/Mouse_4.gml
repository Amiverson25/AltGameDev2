/// @description Insert description here
// You can write your code in this editor

audio_play_sound(Select, 0, false);

curFrame = 2;
global.shop += 500;
global.savings -= 500;
global.nets+=1;
//global.pollution = global.pollution - 3;
objPierBoat.startDayOfFishing2++;
global.nomasNets = 2;
/*if(instance_exists(objPierMan)){
	objPierMan.counterTimer++;
}
else if(instance_exists(objTownMan)){
	objTownMan.counterTimer++;
}*/