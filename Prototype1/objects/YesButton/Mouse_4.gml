/// @description Insert description here
// You can write your code in this editor

audio_play_sound(Select, 0, false);

curFrame = 2;
if(instance_exists(objPierMan)){
	objPierMan.counterTimer++;
}
else if(instance_exists(objTownMan)){
	objTownMan.counterTimer++;
}