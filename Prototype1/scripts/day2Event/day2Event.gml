// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
///call this event when the fisherman goes to the person on the dock

function day2Event(){
	if(instance_exists(townPersonPier)){
		if(instance_exists(objDialogBubble)){
			objDialogBubble.x = townPersonPier.x+25;
			objDialogBubble.y = townPersonPier.y-50;
			objDialogBubble.text = "Hi (fisherman name) yesterday I wasn't able to buy some fish because it was sold out! I'm really craving fish so would it be alright if I got first dibs on your catch tonight? I'll even throw in this net I found by the dock here, What do you say?";
		}
	}
			
	}
	//dialog: “Hi (fisherman name) yesterday I wasn't able to buy some fish because it was sold out! I'm really craving fish so would it be alright if I got first dibs on your catch tonight? I'll even throw in this net I found by the dock here, What do you say?”
/*>Yes (Using the net causes unforeseen pollution when used) Pollution +5
“Thank you so much, I seriously can't wait!”
>Early bird gets the worm
“Can't fight you on that, I'll be there early just you wait!”

>No that's okay, we all need to wait patiently for our food. I can't give special treatment to anyone.”
“
>proceed as normally

(fish for the day)

	*/