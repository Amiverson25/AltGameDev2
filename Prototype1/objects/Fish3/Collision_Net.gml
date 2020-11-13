/// @description Insert description here
// You can write your code in this editor
smallFish++;
scoreObject.fishCaught++;
scoreObject.smolFish++;
Net.scoreFish++;
audio_play_sound(GetFish, 0, false);
x = room_width + sprite_width/2;
y = random_range(100,600);