/// @description Insert description here
// You can write your code in this editor
if(instance_exists(scoreObject) && instance_exists(Net) ){
	scoreBoardGB.text = "Fish Caught: " + string(scoreObject.fishCaught);
	scoreBoard.text = "Garbage in Net: " + string(Net.scoreGarbage);
	if((keyboard_check_pressed( ord("W")) || keyboard_check_pressed( ord("S"))) && Net.scoreGarbage < 15) {
		objDialogBubble.text = "Good job! Try to catch 30 fish, and don't catch over 20 garbage";// as you can while avoiding the Garbage";
		Net.startGame = true;
	}
	if(Net.scoreGarbage == 15){
		objDialogBubble.text = "Uh oh it looks like you caught 15 garbage! Don't let it get to 20!";
		instance_destroy(Fish);
	}
	if(Net.scoreGarbage  == 20){
		global.fishyy = 1;
		//global.smallFish = scoreObject.smolFish;
		//global.mediFish = scoreObject.medFish;
		//global.largFish = scoreObject.bigFish;
		//room = Town_Map;
		room = Ocean_Map;
	}
}
