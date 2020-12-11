/// @description Insert description here
// You can write your code in this editor

if(global.day == 7){
	GhostTuto.visible = true;
	
	portrait_index = 7;
voice = snd_voice2;
name = "Tuto";


//if(global.day == 1){
	text = ["Fisherman, I really hope you have been taking my advice to heart over these past days. I am afraid my time with you is at an end. You see, I'm actually a spirit sent back from the powers above to send a message to you.", 
			"I came to you because it was one of your discarded fishing nets which killed me. This is the last time you will see me.", 
			["I'm so sorry, Tuto. Perhaps I could have done more to limit my own footprint on the environment...",
			"And you're blaming me for it?"],
			"I do not resent you, Fisherman. I know my death was acciental, but it could have been prevented. There are other seals out there who are at risk of suffocating without the help of cleanup efforts. Now, however, you should make haste to the pier, and you will see how your choices have impacted the ocean. Farewell.",
			"You may think yourself free of responsibility, but, in truth, most of humanity has a part to play in the oceanic trash buildup. I only hope you have done your best to slow the pollution these last few days. Farewell, Fisherman."
			
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
	
	
	
	
}
else{
	GhostTuto.visible = false;
	x += 600;
}