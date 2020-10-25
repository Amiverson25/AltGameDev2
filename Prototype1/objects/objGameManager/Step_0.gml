/// @description Insert description here
// You can write your code in this editor

scoreBoardGB.text = "Fish Caught: " + string(Net.scoreFish);
scoreBoard.text = "Garbage in Net: " + string(Net.scoreGarbage);
if((keyboard_check_pressed( ord("W")) || keyboard_check_pressed( ord("S"))) && Net.scoreGarbage < 15) {
	objDialogBubble.text = "Good job! Try to catch 20 fish, and don't catch over 15 garbage";// as you can while avoiding the Garbage";
	
}
if(Net.scoreGarbage == 15){
	objDialogBubble.text = "Uh oh it looks like you caught 15 garbage!";
	instance_destroy(Fish);
}
