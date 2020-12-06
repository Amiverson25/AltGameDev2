/// @description Insert description here
// You can write your code in this editor


portrait_index = 2;
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
	next_line = [0,0,0,-1]
	scripts = [
		-1,
		-1,
		-1,
		-1,	
	];
}
