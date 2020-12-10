/// @description Insert description here
// You can write your code in this editor

portrait_index = 5;
voice = snd_voice2;
name = "Volunteer";


//if(global.day == 1){
	text = ["Hey, Fisherman! A few of us townsfolk have decided to work together to clean up waste along the coastline.", 
			"Do you want to help us out? We will be cleaning from now until dusk.", 
			["I would love to help! (Cannot fish today)",
			"I am busy, sorry."],
			"Thank you so much! Let's get started, then.",
			"Oh, that's too bad. Maybe another day, then?"
			
			];
	speakers = [id, id, objTownMan, id, id];
	next_line = [0, 0, [3,4], -1,-1];
	scripts = [
		-1,
		-1,
		
		[
			[Cleanup],
			//[Cleanup(), id, "portrait_index", 5],
		
			[change_variable, id, "portrait_index", 5],
		],
		-1,
		-1
		
	];
//}