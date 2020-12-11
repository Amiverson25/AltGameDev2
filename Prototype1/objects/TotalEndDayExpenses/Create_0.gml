/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

//Total = real(global.largFish*200 + global.mediFish*100 + global.smallFish*50);
dangit = global.largFish*150 + global.mediFish*100 + global.smallFish*50 - global.caughtTrash*20 - global.caughtsickfish*50 - global.rent - global.gas - global.electric - global.Food
text = string (dangit);//"\n";

dangit += global.savings;

	
global.new_total_savings = dangit;

global.savings = global.new_total_savings