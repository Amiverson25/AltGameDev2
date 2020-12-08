/// @description Insert description here
// You can write your code in this editor




portrait_index = 0;
voice = snd_voice2;
name = "Mailbox"
global.day2_took_money = false;
global.day3_took_money = false;
global.day_7_donate = false;

if(global.day == 1){
	text = ["Hello Fisherman, Theres talk of Pollution out in the seas. But we all know that's Hogwash. They say you're considering moving your business in 7 days if it gets worse..",
			"But like I said, pollution is consipiracy talk. Like those U.F.O nut jobs. Anyways, let us continue our fishing enterprise and get the big one. From: Fisherman Larry"];
	speakers = [id,id];
	next_line = [0,-1];
	scripts = [
		-1,
		-1,
	];
}

if(global.day == 2 and global.day2_took_money = false){
	text = ["I just wanted to let you know that my kids will only eat the fish you catch! It's a wonder really, before buying from you they refused to eat fish. Here's something to show my gratitude.",
			["Take $200"
			],
			["This will come in handy."
			],
			"Wow that's Amazing!, You must really make an impression on these townsfolk. They must really feel safe getting seafood from such a responsible fisherman.",
			"Thanks Again Fisherman."
	
	];
	speakers = [id,objTownMan, objTownMan, tutotheseal,id];
	next_line = [0, [2], [3], 0,-1];
	scripts = [
		-1,
		[
			[change_savings, "savings", 200],
		],
		[
			[change_global,"day2_took_money", true],
		],
		-1,
		-1,
	];
	
}

if(global.day == 3 and global.day3_took_money = false){
	text = ["Dear Fisherman: I come with an offer today from yours truly Jenkin's Mc WasteBin. Your notorious catching methods have reached my ears and I am most interested in forming a small investment in your business.",
			" Don't worry I wont butt in too much. All I ask  is a fair share in your caught fish each day. I'll even give you some money to help out. Sounds like a fair deal right?",
			["Take 500", 
			"Don't Take"],
			["Oh, this must be from the nearby Factory everyone is talking about."],
			"Hmm, I better get to fishing then."
	
	];
	speakers = [id, id, objTownMan, objTownMan, objTownMan];
	next_line = [0, 0, [3,3], [4], -1];
	scripts = [
		-1,
		-1,
		[
			[change_savings_mail_day3, "savings", 500],
			[change_savings_mail_day3_no, "savings", 0],
		],
		[
			[change_global,"day3_took_money", true],
		],
		-1,
	];
	
}

if(global.day == 4){
	text = ["We are looking for hard working employees in the Bay Area - do you have what it takes to help your community? Consider a friendly donation to our cause. The bay needs industry and industry needs you. Jenkin's Industries",
			"Oh, it looks like this is from that factory nearby again, Why do I keep getting these."
	];
	speakers = [id,objTownMan];
	next_line = [0,-1];
	scripts = [
		-1,
		-1,
	];
}


if(global.day == 5){
	text = ["We have officially opened! We have all your manufacturing needs right at your doorstep. If you would like something made on a large scale or if you would like to work with us, let us know! We would be pleased to make business with you. Jenkin's Industries",
			"Oh wow it's finally open. Maybe I should see what's happening over there."
	];
	speakers = [id,objTownMan];
	next_line = [0,-1];
	scripts = [
		-1,
		-1,
	];
}

if(global.day == 6){
	text = ["Hello is this the Fisherman? I wanted to file a complaint. I bought some cod from you the other day and when we cooked it we found a bottle cap in its stomach. Your seafood is usually so high quality but I can't let my children eat food that's so contaminated.",
			"HogWash! It's not my fault it swallowed a bottle cap. Maybe I should try fishing further down the coast today?"
	];
	speakers = [id,objTownMan];
	next_line = [0,-1];
	scripts = [
		-1,
		-1,
	];
}


if(global.day == 7 and global.day_7_donate = false){
	text = ["Keep our bay clean! Reduce, Reuse, Recycle! Please help us in the fight against pollution. Donate now. Only 3000 dollars to help our foundation get a real boost in the fight.",
			"Oh, should I donate?",
			["Donate 3000", 
			"Don't Donate"
			],
			["I hope this donation does some good."
			],
			"Bah! I don't need to donate to some foolish cause.",
			"I better get going now."
	];
	speakers = [id, objTownMan, objTownMan, objTownMan, objTownMan, objTownMan];
	next_line = [0, 0, [3,4], [5], 0, -1];
	scripts = [
		-1,
		-1,
		[
			[change_savings_donate_day7, "savings", 3000],
			[change_savings_donate_day7_no, "savings", 0],
		],
		[
			[change_global, "day_7_donate", true],
		],
		-1,
		-1,
	];
}







