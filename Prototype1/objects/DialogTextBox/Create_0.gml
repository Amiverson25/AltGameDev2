/// @description Insert description here
// You can write your code in this editor



global.game_width = 1024;
global.game_height = 1024;

display_set_gui_size(global.game_width, global.game_height);


//Variables
box = mailbox_dialog
pframe = Portrait_box
portrait = mailbox125
namebox = Mail_name_box
continuebox = Mail_name_box

box_width = sprite_get_width(box);
box_height = sprite_get_height(box);
port_width = sprite_get_width(portrait);
port_height = sprite_get_height(portrait);
namebox_width = sprite_get_width(namebox);
namebox_height = sprite_get_height(namebox);
continuebox_width = sprite_get_width(continuebox);
continuebox_height = sprite_get_height(continuebox);

port_x = (global.game_width - box_width - port_width) - 250;
port_y = (global.game_height-500) - port_height;
box_x = port_x + port_width;
box_y = port_y;
namebox_x = port_x;
namebox_y = box_y - namebox_height;
continuebox_x = port_x + 500;
continuebox_y = box_y - continuebox_height;



x_buffer = 19;
y_buffer = 18;
text_x = box_x + x_buffer;
text_y = box_y + y_buffer;
name_text_x = namebox_x + (namebox_width/2);
name_text_y = namebox_y + (namebox_height/2);

continue_text_x = continuebox_x +(continuebox_width/2);
continue_text_y = continuebox_y +(continuebox_height/2);


portrait_index = 0;
counter = 0;
typewriter = snd_voice2
select = Select

//text[0] = "";
page = 0;
//name = "";
continuetext = "Press F";

interact_key = ord("F");
collide = false;




text_col = c_black;
name_text_col = c_black;
font = fntDialogBubble;

text_max_width = box_width - (2*x_buffer);
draw_set_font(font);
text_height = string_height("M");

day_2_gift = 200

choice = 0;

choice_col = c_blue



