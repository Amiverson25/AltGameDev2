/// @description Insert description here
// You can write your code in this editor

if(Net.scoreFish >= 5){
	if(x - sprite_width/2 < 0){
		x = room_width + sprite_width/2;
		y = random_range(100,600);
	}
	hspeed = -random_range(2,10);
}