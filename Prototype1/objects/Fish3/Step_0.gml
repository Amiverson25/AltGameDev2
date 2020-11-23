if(Net.scoreFish < 20){
	if(x - sprite_width/2 < 0){
		x = room_width + sprite_width/2;
		y = random_range(100,600);
	}
}
else{
	x = -100;
	y = -100;
	hspeed = 0;
}

