/// @description Insert description here
// You can write your code in this editor

//Total = real(global.largFish*200 + global.mediFish*100 + global.smallFish*50);

text = string(real(global.largFish*200 + global.mediFish*100 + global.smallFish*50 - global.caughtTrash*20 - global.caughtsickfish*50 - global.shop - global.rent - global.gas - global.electric - global.Food)) + "\n";

	
global.new_total_savings = string(global.savings + real(text))

global.savings = global.new_total_savings