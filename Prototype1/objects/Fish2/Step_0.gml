if(Net.scoreFish < 22){
	if(x <= 0 - sprite_width){
		x = room_width + sprite_width/2;
		y = random_range(100,600);
	}
}
else{
	x = -100;
	y = -100;
	hspeed = 0;
}

