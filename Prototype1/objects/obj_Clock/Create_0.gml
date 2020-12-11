/// @description Insert description here
// You can write your code in this editor

if (global.day = 7) {
	if (global.pollution >= 70) {
		obj_Clock.image_index = global.day; }
		else 
{
obj_Clock.image_index = global.day-1;
}
}
else 
{
obj_Clock.image_index = global.day-1;
}