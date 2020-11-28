// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function day3Events(){
	if(instance_exists(townPersonPier)){
		if(instance_exists(objDialogBubble)){
			objDialogBubble.x = townPersonPier.x+25;
			objDialogBubble.y = townPersonPier.y-50;
			objDialogBubble.text = "Hey fisherman! I've been meaning to talk to you. I was wondering if you could loan me a fishing net so I could do my own fishing sometime this week. What do you say partner?";
		}
	}/*
	Two Events:

Local Townsman: “Hey fisherman! I've been meaning to talk to you. I was wondering if you could loan me a fishing net so I could do my own fishing sometime this week. What do you say partner?”

>Give him a cheap net (The townsperson pollutes with this net) Pollution +5
>Give him a recycled net( no consequence) Pollution -5
>You have nothing to give( “Oh shoot you don't have any spare gear on you? Hmm well I guess I'll make a net out of plastic bags and bottle cans. It's going to be awesome you'll see!” ) Pollution +5.

Fisherman: “Hmm.. Looks like I'll have to dump off some of my used supplies that are of no use to me. If I take a trip to the recycling center it's going to eat up some of my fishing day today. What to do..”

	>Take to the dump(Pollution +5,, gain $300)
	>Take to recycle center(Pollution -5, and cost 500, reduced boat capacity for fishing day  Capacity -10)


(first cast will catch trash)
“Huh, where did this come from? I've never caught anything other than fish in these waters before…”

	*/
}