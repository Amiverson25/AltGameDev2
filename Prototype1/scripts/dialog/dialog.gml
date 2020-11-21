// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dialog(){
	if(instance_exists(objPierMan)){
		//TODO: these will have to be global variables!!
		switch(objPierMan.counterTimer){
			case 1:
				objDialogBubble.text = "Tuto: Hi Fisherman, I'm here to help you on your way to Fishing Mastery! First, move around with WASD. Lets get over to the shop and get some supplies for the day. Huh? What's that? How can you understand me? I don’t really know myself, I guess it just works out that way. Let's get going.";
				YesButton.text = "What, a talking seal?";
				YesButton.visible = true;
				break;
			case 2:
				objDialogBubble.text = "Fisherman: Hmm, okay. This is really weird. A talking seal telling me what to do? I must have drank way too much last night.";
				YesButton.text = "Lets go to the shop!";
				YesButton.visible = true;
				break;
			case 3:
				//player goes through tutorial, still tbh when it comes to the supplies, and how we might do this
				objDialogBubble.text = "Okay, go ahead and go to the shop and we will begin the tutorial";
				YesButton.text = "This button will be gone";
				YesButton.visible = true;
				//when the player goes through the store, increment the switch value by 1
				break;
			case 4:
				//this section of the dialog will be for day 1
				//this will go to the ocean, than the mini game
				//after the minigame there will be a report of how many fish they got 
				//that will be the end of the day, thus it will give an end of day report.
				objDialogBubble.text = "Okay, now that you learned about the shop and have your supplies, lets go fishing! Head on over to the boat.";
				YesButton.text = "This button will be gone";
				YesButton.visible = true;
				break;
			//day 2
			case 5:
				day2Event();
				//objDialogBubble.text = "Hi (fisherman name) yesterday I wasn’t able to buy some fish because it was sold out! I’m really craving fish so would it be alright if I got first dibs on your catch tonight? I’ll even throw in this net I found by the dock here, What do you say?";
				//this is where I get three button's in?
				/*>Yes (Using the net causes unforeseen pollution when used) “Thank you so much, I seriously can’t wait!”
				  >Early bird gets the worm “Can’t fight you on that, I’ll be there early just you wait!”
				  >No that’s okay, we all need to wait patiently for our food. I can’t give special treatment to everyone.”
				*/
				//YesButton.text = "testing";
				//YesButton.visible = true;
				//than you can procceed for the rest of the day as normal
				break;
			//day 3!!!!
			case 6:
				day3Events();
				//eventTwoScript(); 
				break;
				/*Two Events:
				Local Townsman: “Hey fisherman! I’ve been meaning to talk to you. I was wondering if you could loan me a fishing net so I could do my own fishing sometime this week. What do you say partner?”

				>Give him a cheap net (The townsperson pollutes with this net)
				>Give him a recycled net( no consequence)
				>You have nothing to give( “Oh shoot you don't have any spare gear on you? Hmm well I guess I’ll make a net out of plastic bags and bottle cans. It's going to be awesome you’ll see!” ) Causes a good amount of pollution.

				Fisherman: “Hmm.. Looks like I’ll have to dump off some of my used supplies that are of no use to me. If I take a trip to the recycling center it’s going to eat up some of my fishing day today. What to do..”

					>Take to the dump(Pollution, but lose no time, gain $300)
					>Take to recycle center(No pollution, and cost 500, reduced boat capacity for fishing day)


				(first cast will catch trash)
				“Huh, where did this come from? I’ve never caught anything other than fish in these waters before…” */
			case 7:
				break;
			case 8:
				break;
			case 9:
				break;
		}
		//insert pierManDialog
	}
	
	if(instance_exists(objTownMan)){
		//i suppose if they collide I can call this function?
		//but I still will want to position the dialog bubble in the collision stuffs
		switch(objTownMan.counterTimer){
			case 1:
				objDialogBubble.text = "Just another working day huh, I don't mind it at all. I'm doing what I love most and I can enjoy the fresh air and the clear oceans.";
				YesButton.text = "Dope";
				YesButton.visible = true;
				break;
			case 2:
				objDialogBubble.text = "Looks like something is in the process of being built in the bay over there, they’ve been working on it for awhile now. I wonder what it will be.";
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
				objDialogBubble.text = "Hello, (fisherman name) I just wanted to let you know that my kids will only eat the fish you catch! It’s a wonder really, before buying from you they refused to eat fish. Here’s something to show my gratitude.";
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
				objDialogBubble.text = "Dear Fisherman: I come with an offer today from yours truly (Jenkin’s Mc WasteBin). Your notorious catching methods have reached my ears and I am most interested in forming a small investment in your business. Don’t worry I wont butt in too much. All I ask  is a fair share in your caught fish each day. I’ll even give you some money to help out. Sounds like a fair deal right? ";
				YesButton.text = "";
				YesButton.visible = true;
				break;
			case 7:
				objDialogBubble.text = "Hmm Looks like that seal isn’t around today… Good I was starting to think I was going mad.";
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
				/*Tutor appears: “Hey Fisherman! I hope you’ve been responsible for your fishing activities. I hate for other innocent mammals to get sick from pollution. You have been keeping on top of it right? Hmm lets see.. (The game will tell the players a brief pollution level check)
				-OH MY!! It’s way higher than when you first started. We need to be active on a daily basis fighting pollution.
				Or 
				-Wow! Good Job. Looks like the pollution is at a minimal level. We should continue fighting off pollution. Have you tried using better materials on your fishing boat?”
				*/
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
				objDialogBubble.text = "Is this (fisherman name)? I wanted to file a complaint. I bought some cod from you the other day and when we cooked it we found a bottle cap in its stomach. Your seafood is usually so high quality but I can’t let my children eat food that’s so contaminated.";
				YesButton.visible = true;
				break;
			case 14:
				objDialogBubble.text = "What? It’s not my fault it swallowed a bottle cap. Maybe I should try fishing further down the coast today?";
				YesButton.visible = true;
				//again even happens.
				break;
			//day 7
			case 15:
				objDialogBubble.text = "tuto: Fisherman, I really hope you have been taking my advice to heart over these past days. I’m afraid my time with you is at an end. You see I'm actually a spirit sent back from the powers above to send a message. Please help the planet earth as it struggles from human done pollution.";
				YesButton.visible = true;
				break;
			case 16:
				objDialogBubble.text = "Tuto: If you wont listen to me then look only to yourself as to why you’re able to speak to me this day. Your past fishing practices for gaining profit have polluted the ocean and as a result I was a victim to your actions. I no longer can swim the open waters and enjoy life's beauties. But you still can and your fellow humans… Please hear my  plea, fisherman..";
				YesButton.visible = true;
				break;
			case 17:
				objDialogBubble.text = "You:  I don’t know what to say.. Tuto I’m sorry , I tried my best over these past days to be more active but perhaps it's time after today. That I should evaluate my business on whether to continue fishing or not."
				YesButton.visible = true;
				break;
			default:
				//you are done with the main day dialog, time to go fishing!
				break;
		}
		//insert town dialog
	}
}