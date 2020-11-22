// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function day6Events(){
	if(instance_exists(townPersonPier)){
		if(instance_exists(objDialogBubble)){
			objDialogBubble.x = townPersonPier.x+25;
			objDialogBubble.y = townPersonPier.y-50;
			objDialogBubble.text = "“Fisherman! We don't feel so good, we’ve been to the doctor recently and apparently we were told we have heavy doses of mercury in our food. You wouldn’t happen to have anything to do with this would you? Well, we just wanted to let you know that the town may be staying away from your fish for a bit.";
			//objDialogBubble.text = "“That’s good to see. I should sign up to help sometime… But I have bigger fish to fry now, but maybe i should help...";
			//objDialogBubble.text = "Fisherman Help! I’m in need of some money to donate to our local Recycling center. I’m afraid I need 1000 dollars but I promise you it’ll be well worth it;";
		}
	}
/*
Event:

(Townsfolk are sick)

“Fisherman! We don't feel so good, we’ve been to the doctor recently and apparently we were told we have heavy doses of mercury in our food. You wouldn’t happen to have anything to do with this would you? Well, we just wanted to let you know that the town may be staying away from your fish for a bit.” 

(Day 6 caught fish profit is cut in half)

(Homeless man at the Dock)
(This ONLY HAPPENS if you didn’t help the homeless man on Day 4)

“Hey there fisherman, Don’t mind me I’ve been just dumping my trash into the ocean in accord that I have no way to get to the  dump from here. You Wouldn’t help me earlier so I had no choice. I wouldn’t worry about it Fisherman, what we humans do only affects mother nature by a miniscule amount. HAHA.” 

(Increase pollution by a lot, this dude has been dumping in the ocean for days now. Pollution +20)



Before you fish (This happens out on the ocean):

(Player catches a fish that’s swimming really slow, there’s something caught on it)
“This looks really familiar, looks like it’s a net of some sort.”

(The fisherman turns over the net and notices his initials etched onto the back) 
“This is definitely my old net! I wonder how it got into the ocean...this fish is so weak.”

*/
}