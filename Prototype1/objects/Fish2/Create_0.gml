/// @description Insert description here
// You can write your code in this editor
if(instance_exists(Net)){
if(Net.scoreFish < 22) {// && Net.startGame == true){
	hspeed = - random_range(2,10);
}
else{
	x = -100;
    y = -100;
	hspeed = 0;
}
}