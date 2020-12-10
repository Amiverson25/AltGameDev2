/// @description Insert description here
// You can write your code in this editor


portrait_index = 4;
voice = snd_voice2;
name = "Tuto";


//if(global.day == 1){
	text = ["Oh my! That seagull has definitely seen better days.", 
			"I hope you didn't have a hand in this, Fisherman.", 
			["How awful. This must be because of the factory's pollution!",
			"I should have done better to stop the pollution."],
			"Maybe, but you should also ask yourself if you have been doing your part to protect the environment.",
			"There is still time, Fisherman. Do your best, for the planet's sake."
			
			];
	speakers = [id, id, objTownMan, id, id];
	next_line = [0, 0, [3,4], -1,-1];
	scripts = [
		-1,
		-1,
		
		[
			[change_variable, id, "portrait_index", 4],
		
			[change_variable, id, "portrait_index", 4],
		],
		-1,
		-1
		
	];
//}