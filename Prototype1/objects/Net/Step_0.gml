/// @description Insert description here
// You can write your code in this editor

if(y - sprite_height/2 < 0){
	y = sprite_height/2;
	//vspeed = random_range(1,10);
}

else if(y + sprite_height > room_height){
	y = room_height - sprite_height;
	//vspeed = random_range(-10,-1);
}