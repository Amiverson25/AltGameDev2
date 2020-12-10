/// @description Insert description here
// You can write your code in this editor




portrait_index = 6;
voice = snd_voice2;
name = "townPersonPier"
global.day2_took_money = false;
global.day3_took_money = false;

if(global.day == 1){
	text = ["Just another working day huh, I don't mind it at all. I'm doing what I love most and I can enjoy the fresh air and the clear oceans.",
			"Looks like something is in the process of being built in the bay over there, they've been working on it for awhile now. I wonder what it will be.",
			["I'll have to check it out!"
			],
			"Awesome, at some point today, you should go down to the pier dock and look through the binoculars!",
			"Hi Fisherman, I'm here to help you on your way to Fishing Mastery! First, move around with WASD. Lets get over to the shop and get some supplies for the day. Huh? What's that? How can you understand me? I don’t really know myself, I guess it just works out that way. Let's get going.",
			["Hmm, okay. This is really weird. A talking seal telling me what to do? I must have drank way too much last night."]
	
	];
	speakers = [townPersonPier,townPersonPier, objTownMan , objTownMan,tutotheseal, objTownMan];
	next_line = [0,0,[0], 0,0, [0]];
	scripts = [
		-1,
		-1,
		[
			-1,//[change_savings, "savings", 200],
		],
		-1,
		-1,
		[ -1, ],
		//portrait_index = 2,
	];
	
}

/*if(global.day == 2){// and global.day2_took_money = false){
	//Hello, (fisherman name) I just wanted to let you know that my kids will only eat the fish you catch! It's a wonder really, before buying from you they refused to eat fish. Here's something to show my gratitude.
	text = ["Hello, Fisherman I just wanted to let you know that my kids will only eat the fish you catch! It's a wonder really, before buying from you they refused to eat fish. Here's something to show my gratitude.",
			["Oh! Thanks dude!"
			],
			"No, No, than YOU Fisherman."
	
	];
	speakers = [id,objTownMan, id];
	next_line = [0, [2], -1];
	scripts = [
		-1,
		[
			[change_savings, "savings", 200],
		],
		-1,
	];
	
}*/

if(global.day == 3){// and global.day3_took_money = false){
	text = ["Dear Fisherman: I come with an offer today from yours truly Jenkin's Mc WasteBin. Your notorious catching methods have reached my ears and I am most interested in forming a small investment in your business.",
			" Don't worry I wont butt in too much. All I ask  is a fair share in your caught fish each day. I'll even give you some money to help out. Sounds like a fair deal right?",
			["Take 500", 
			"Don't Take"
			],
			["Oh, this must be from the nearby Factory everyone is talking about."
			],
			//["He thinks he can get his hands on my fish, I like to see him try."
			//],
			"Hmm, I better get to fishing then."
	
	];
	speakers = [id, id, objTownMan, objTownMan, objTownMan];
	next_line = [0, 0, [3,3], [4], -1];
	scripts = [
		-1,
		-1,
		[
			[change_savings_mail_day3, "savings", 500],			
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


if(global.day == 7){
	text = ["Keep our bay clean! Reduce, Reuse, Recycle! Please help us in the fight against pollution. Donate now. Only 3000 dollars to help our foundation get a real boost in the fight.",
			"Oh, should I donate?"
	];
	speakers = [id,objTownMan];
	next_line = [0,-1];
	scripts = [
		-1,
		-1,
	];
}

/*
	if(instance_exists(objTownMan)){
		//i suppose if they collide I can call this function?
		//but I still will want to position the dialog bubble in the collision stuffs
		switch(global.dialogTownMan){
			case 1:
				objDialogBubble.text = "Just another working day huh, I don't mind it at all. I'm doing what I love most and I can enjoy the fresh air and the clear oceans.";
				YesButton.text = "For playtest purposes this is all the dialog for all the days";
				YesButton.visible = true;
				break;
			case 2:
				objDialogBubble.text = "Looks like something is in the process of being built in the bay over there, they've been working on it for awhile now. I wonder what it will be.";
				YesButton.text = "Lets check it out!";
				//go to the other room to look at the thing
				//being built
				//a button on that should have them go back to this map.
				YesButton.visible = true;
				break;
			//below will be the begining of day 2
			case 3:
				//when check mail, this dialog script will be triggered'
				//and it will start here.
				//I can change the dialog bubble characteristics and such.
				objDialogBubble.text = "Hello, (fisherman name) I just wanted to let you know that my kids will only eat the fish you catch! It's a wonder really, before buying from you they refused to eat fish. Here's something to show my gratitude.";
				YesButton.text = "Thats cool!";
				YesButton.visible = true;
				break;
			case 4:
				//did we want tuto the seal in the town also?
				//otherwise this would be in the switch statment above
				objDialogBubble.text = "Tuto: Wow that's Amazing!, You must really make an impression on these townsfolk. They must really feel safe getting seafood from such a responsible fisherman.";
				YesButton.text = "I guess so! Wait, hold up...";
				YesButton.visible = true;
				break;
			case 5:
				//maybe make the thought bubble different here?
				//I could maybe ask if we can make the dialog bubble have diff colors for thoughts, and characters
				objDialogBubble.text = "Fisherman: What the.. That seal again?.... Wait, what? Where did he go??";
				//button gone tuto is gone. Everyone is sad
				YesButton.text = "";
				YesButton.visible = true;
				break;
			//below is the begining of day 3
			case 6:
				objDialogBubble.text = "Dear Fisherman: I come with an offer today from yours truly (Jenkin's Mc WasteBin). Your notorious catching methods have reached my ears and I am most interested in forming a small investment in your business. Don't worry I wont butt in too much. All I ask  is a fair share in your caught fish each day. I'll even give you some money to help out. Sounds like a fair deal right? ";
				YesButton.text = "";
				YesButton.visible = true;
				break;
			case 7:
				objDialogBubble.text = "Hmm Looks like that seal isn't around today… Good I was starting to think I was going mad.";
				YesButton.text = "";
				YesButton.visible = true;
				break;
			//day 4 begins
			case 8:
				objDialogBubble.text = "We are looking for hard working employees in the Bay Area - do you have what it takes to help your community? Apply online or by mail!";
				YesButton.text = "";
				YesButton.visible = true;
				break;
			case 9:
				objDialogBubble.text = "Looks like that factory is going to be completed soon.";
				YesButton.visible = true;
				break;
			case 10:
				objDialogBubble.text = "Looks like that factory is going to be completed soon.";
				/*Tutor appears: “Hey Fisherman! I hope you've been responsible for your fishing activities. I hate for other innocent mammals to get sick from pollution. You have been keeping on top of it right? Hmm lets see.. (The game will tell the players a brief pollution level check)
				-OH MY!! It's way higher than when you first started. We need to be active on a daily basis fighting pollution.
				Or 
				-Wow! Good Job. Looks like the pollution is at a minimal level. We should continue fighting off pollution. Have you tried using better materials on your fishing boat?”
				YesButton.visible = true;
				break;
			case 11:
				objDialogBubble.text = "You: What the, Again? Hey.. wait..“I swear I didn't drink last night.. Hmm maybe he's right.. I should be more active in the fight against pollution."
				YesButton.visible = true;
				//event after this... I think I will have these events on the pier?
				//also, a lot of tuto events should be in the pier dialog... will fix later
				break;
			//begining of day 5
			case 12:
				objDialogBubble.text = "We have officially opened! We have all your manufacturing needs right at your doorstep. If you would like something made on a large scale or if you would like to work with us, let us know! We would be pleased to make business with you.";
				YesButton.visible = true;
				//after this there is a dialog about the sad dead seagull
				break;
				//
			//begining of day 6
			case 13:
				objDialogBubble.text = "Is this (fisherman name)? I wanted to file a complaint. I bought some cod from you the other day and when we cooked it we found a bottle cap in its stomach. Your seafood is usually so high quality but I can't let my children eat food that's so contaminated.";
				YesButton.visible = true;
				break;
			case 14:
				objDialogBubble.text = "What? It's not my fault it swallowed a bottle cap. Maybe I should try fishing further down the coast today?";
				YesButton.visible = true;
				//again even happens.
				break;
			//day 7
			case 15:
				obj_Clock.image_index = 7;
				objDialogBubble.text = "tuto: Fisherman, I really hope you have been taking my advice to heart over these past days. I'm afraid my time with you is at an end. You see I'm actually a spirit sent back from the powers above to send a message. Please help the planet earth as it struggles from human done pollution.";
				YesButton.visible = true;
				break;
			case 16:
				objDialogBubble.text = "Tuto: If you wont listen to me then look only to yourself as to why you're able to speak to me this day. Your past fishing practices for gaining profit have polluted the ocean and as a result I was a victim to your actions. I no longer can swim the open waters and enjoy life's beauties. But you still can and your fellow humans… Please hear my  plea, fisherman..";
				YesButton.visible = true;
				break;
			case 17:
				objDialogBubble.text = "You:  I don't know what to say.. Tuto I'm sorry , I tried my best over these past days to be more active but perhaps it's time after today. That I should evaluate my business on whether to continue fishing or not."
				YesButton.visible = true;
				break;
			default:
				//you are done with the main day dialog, time to go fishing!
				break;
		}
		//insert town dialog
	}

*/





