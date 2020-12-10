/// @description Insert description here
// You can write your code in this editor

global.caughtTrash++
scoreObject.garbage++;
audio_play_sound(GetTrash, 0, false);
x = room_width + sprite_width/2;
y = random_range(100,600);