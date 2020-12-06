/// @description Insert description here
// You can write your code in this editor

audio_play_sound(Select, 0, false);

curFrame = 2;

//obj_Clock.image_index++;
//global.dialogTownMan = global.dialogTownMan + 1;
global.day = global.day + 1;
global.pollution = global.pollution + 10;
global.shop = 0;
global.totalexpenses = 0;
global.new_total_savings = 0;

global.largFish = 0;
global.mediFish = 0;
global.smallFish = 0;
room = Town_Map;

audio_stop_sound(FishingGame);
audio_stop_sound(FishingGame)//, 0, false);
audio_play_sound(TownMusic, 0, false);