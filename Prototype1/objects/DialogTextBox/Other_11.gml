/// @description Insert description here
// You can write your code in this editor

name = names[page];
voice = voices[page];
portrait_index = portraits[page];

if(!is_array(text[page])){
	text_w = String_Wrap(text[page], text_max_width);
	str_l = string_length(text_w);
	choice_dialogue = false;
} else {
	text_array = text[page]
	text_array_l = array_length_1d(text_array);
	choice_dialogue = true;
}
counter = 0;

