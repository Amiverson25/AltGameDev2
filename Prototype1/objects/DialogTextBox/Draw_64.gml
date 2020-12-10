/// @description Insert description here
// You can write your code in this editor


//Draw Box
draw_sprite(box,0, box_x, box_y);

//Draw Portrait back
draw_sprite(pframe, 0, port_x, port_y);


//Draw Portrait
draw_sprite(portrait, portrait_index, port_x, port_y);


//Draw Portrait Frame
//draw_sprite(pframe, 0, port_x, port_y);

//Draw Namebox
draw_sprite(namebox, 0, namebox_x, namebox_y);

//Draw Continuebox
draw_sprite(continuebox, 0, continuebox_x, continuebox_y);




//---Text
draw_set_font(font);

//Draw Name
var c = name_text_col;
draw_set_halign(fa_center); draw_set_valign(fa_middle);
draw_text_color(name_text_x, name_text_y, name, c,c,c,c, 1);
draw_set_halign(fa_left); draw_set_valign(fa_top);

//Draw Press F
var c = name_text_col;
draw_set_halign(fa_center); draw_set_valign(fa_middle);
draw_text_color(continue_text_x, continue_text_y, continuetext, c,c,c,c, 1);
draw_set_halign(fa_left); draw_set_valign(fa_top);


if(!choice_dialogue){
	//Draw Text
	if(counter < str_l){
		counter++;
		if(counter mod 4 == 0){
		audio_play_sound( typewriter, 10, false);
		}
	}
	var substr = string_copy(text_w, 1, counter);

	c = text_col;
	draw_text_color(text_x, text_y, substr, c,c,c,c, 1);
	
} else {
	
	c = text_col;
	
	var i = 0, y_add = 0; repeat(text_array_l){
		if(choice == i){ c = choice_col; draw_text_color(box_x + text_max_width, text_y + y_add, "<", c,c,c,c, 1);}
		else c = text_col;
		
		
		draw_text_ext_color(text_x, text_y + y_add, text_array[i], text_height, text_max_width, c,c,c,c, 1);
		y_add += string_height_ext(text_array[i], text_height, text_max_width);
		i++;
	}
	
}







