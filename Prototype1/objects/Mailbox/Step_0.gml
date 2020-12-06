/// @description Insert description here
// You can write your code in this editor

if(global.day == 2 and global.day2_took_money = true){
	text = ["I just wanted to let you know that my kids will only eat the fish you catch! It's a wonder really, before buying from you they refused to eat fish. Here's something to show my gratitude.",
			"Thanks Again Fisherman."
	
	];
	speakers = [id, id];
	next_line = [0, -1];
	scripts = [
		-1,
		-1,
	];
}


if(global.day == 3 and global.day3_took_money = true){
	text = ["Dear Fisherman: I come with an offer today from yours truly Jenkin's Mc WasteBin. Your notorious catching methods have reached my ears and I am most interested in forming a small investment in your business.",
			" Don’t worry I wont butt in too much. All I ask is a fair share in your caught fish each day. I'll even give you some money to help out. Sounds like a fair deal right?",
			"Oh, this must be from the nearby Factory everyone is talking about.",
			"I should keep an eye on this."
	
	];
	speakers = [id, id, objTownMan, objTownMan];
	next_line = [0, 0, 0, -1];
	scripts = [
		-1,
		-1,
		-1,
		-1,
	];
	
}