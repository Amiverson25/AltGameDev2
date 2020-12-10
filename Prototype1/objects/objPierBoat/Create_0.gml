/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor




portrait_index = 0;
voice = snd_voice2;
name = "Boat";

if(global.day == 3 && global.day3Visited == false){
	global.day3Visited = true;
	text = ["Hmm.. Looks like I’ll have to dump off some of my used supplies that are of no use to me. If I take a trip to the recycling center it’s going to eat up some of my fishing day today. What to do..",
			["Take to the dump","Take to recycle center"],
			"Interesting choice"
			];
	speakers = [objTownMan,objTownMan,objTownMan,tutotheseal];
	next_line = [0,[2,3],-1];
	scripts = [
		-1,
		[
			[change_savings_donate_day7, "savings", 3000], //
			[change_savings_donate_day7_no, "savings", 0],
		],
		-1,
	];
}







