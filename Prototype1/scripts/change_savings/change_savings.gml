// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function change_savings(argument0, argument1){
	
	new_total = global.savings + argument1;
	
	
	variable_global_set(argument0, new_total);
	
	
}

