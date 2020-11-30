// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function day4Events(){
	obj_Clock.image_index = 3;
	if(instance_exists(townPersonPier)){
		if(instance_exists(objDialogBubble)){
			objDialogBubble.x = townPersonPier.x+25;
			objDialogBubble.y = townPersonPier.y-50;
			objDialogBubble.text = "Fisherman Help! I'm in need of some money to donate to our local Recycling center. I'm afraid I need 1000 dollars but I promise you it'll be well worth it;";
		}
	}
/*
“Fisherman Help! I'm in need of some money to donate to our local Recycling center. I'm afraid I need 1000 dollars but I promise you it'll be well worth it.

Give 1000: (Reduces Pollution -10)
Do not Give: (Pollution Raises +10)

“Hey there Fisherman, You think you can lend me some of your fuel and money so I can make it really quick to the station. I promise it won't take long and I'll pay you back.”

Give him some of your used Fuel and 100: (Raises pollution +5)
Don't give him anything: (Raises pollution due to him using cheap fuel at the station +5)
Give him 500 for fuel at the station: (he buys good fuel at the station. pollution -5.)

(Homeless Man on the dock)

“Hello there fisherman, Do you think you can loan me 500 and a trip down to the city. My business is my own. I just really need the help right now. What do you say?”

Accept: ( Results of this comes later)
Don't Accept:(Results of this comes later)

*/
}