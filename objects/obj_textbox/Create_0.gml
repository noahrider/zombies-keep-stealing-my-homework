textbox_width = 512;
textbox_height = 128;
border = 8;
line_sep = 24;
line_width = textbox_width - border * 2;
txtb_spr = spr_textbox;
txtb_img = 0;
txtb_img_spd = 0;

page = 0;
page_number = 0;
global.msg[0] = "Error! (global.msg[p] not set)";
text_length[0] = string_length(global.msg[0]);
draw_char  = 0;
text_spd = 1;

// options
global.option[0] = "";
option_linkID[0] = -1;
option_pos = 0;

setup = false;