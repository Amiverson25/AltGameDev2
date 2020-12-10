/// @description Insert description here
// You can write your code in this editor


portrait_index = 3;
voice = snd_voice2;
name = "Dany";


if(global.day == 1){
	text = ["Hi Fisherman, My mom says I need to eat my vegetables to grow big and strong",
			"Thats good kid, listen to your Mom.", 
			"Do you think someday I can get a ride on your boat?", 
			["Sure thing kid, just remember to behave around town. No vandalism.",
			"No way kid, You'll only slow me down."],
			"Jee Thanks Fisherman!",
			"Awww man"
			
			];
	speakers = [id, objTownMan, id, objTownMan, id, id];
	next_line = [0, 0, 0, [4,5], -1, -1];
	scripts = [
		-1,
		-1,
		-1,
		[
			[change_variable, id, "portrait_index", 2],
			[change_variable, id, "portrait_index", 2],
		],
		-1,
		-1,
	];
}

if(global.day == 2){
	text = ["Hey Fisherman, My mom fed me some of your fish last night. It was Great!", 
			"Oh really Kid? Thats good to hear.",
			"Yeah! Soon I'll grow big and strong.", 
			"I'm sure you will. I got to go work now. Stay safe out here kid."];
	speakers = [id, objTownMan, id, objTownMan];
	next_line = [0,0,0,-1];
	scripts = [
		-1,
		-1,
		-1,
		-1,	
	];
}


if(global.day == 3){
	text = ["I was down at the beach the other day. I found some soda bottles washed up on the shore.", 
			"Some people probably just accidently left their trash on the beach kid. I wouldn't worry about it.",
			"You're probably right. I'm going to go play cops and robbers with my friends now.", 
			"You bet kid, careful not to break any bones."];
	speakers = [id, objTownMan, id, objTownMan];
	next_line = [0,0,0,-1];
	scripts = [
		-1,
		-1,
		-1,
		-1,	
	];
}


if(global.day == 4){
	text = ["Fisherman, My friends and I saw a cool looking fish in nearby bay.", 
			"Oh, what did it look like kid?",
			"It was so cool, it had glowing green scales and a cool plastic bag on it head. My friend said it was a fish from Mars!", 
			"Theres no fish on Mars kid, thats a bunch of Hogwash. Good to see you're having fun though. Got to go to work now."];
	speakers = [id, objTownMan, id, objTownMan];
	next_line = [0,0,0,-1];
	scripts = [
		-1,
		-1,
		-1,
		-1,	
	];
}


if(global.day == 5){
	text = ["My Dad said that he was going to apply to that new factory nearby. You think that have awesome laser gun robots there?", 
			"I don't think its that kind of factory kid.",
			"But my friend said he saw them fisherman and crates of weird looking fish.", 
			"I think you should be focusing on school work kid, don't believe everything you hear."];
	speakers = [id, objTownMan, id, objTownMan];
	next_line = [0,0,0,-1];
	scripts = [
		-1,
		-1,
		-1,
		-1,	
	];
}

if(global.day == 6){
	text = ["Fisherman, I ate some fish last night and now I don't feel so good..", 
			"Hmm must be a common cold. I'm sure you'll be fine kid.",
			];
	speakers = [id, objTownMan];
	next_line = [0,-1];
	scripts = [
		-1,
		-1,
	];
}