confirm_key = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);

textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0]) + 320;

#region setup

if (setup == false) {
	
	setup = true;
	draw_set_font(fnt_main);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_set_color(global.dark_green);
	
	
	// page loop
	page_number = array_length(global.msg);
	for (var p  = 0; p < page_number; p++) {
		text_length[p] = string_length(global.msg[p]);
		text_x_offset[p] = 64;
	}
	
}

#endregion

// type text
if (draw_char < text_length[page]) {
	draw_char += text_spd;
	draw_char = clamp(draw_char, 0, text_length[page]);
}

// flip thru pages
if (confirm_key) {
	if (draw_char == text_length[page]) {
		if (page < page_number - 1) {
			page++;
			draw_char = 0;
		} else {
			instance_destroy();
		}
	} else {
		draw_char = text_length[page];
	}
}
	
	
#region draw textbox
var txtb_x = textbox_x + text_x_offset[page];
var txtb_y = textbox_y
txtb_img += txtb_img_spd;
txtb_spr_w = sprite_get_width(txtb_img)
txtb_spr_h = sprite_get_height(txtb_img)
// back of textbox
draw_sprite_ext(txtb_spr, txtb_img, textbox_x + text_x_offset[page], txtb_y, textbox_width/txtb_spr_w, textbox_height/txtb_spr_h, 0, c_white, 1);

// draw text
var _drawtext = string_copy(global.msg[page], 1, draw_char);
draw_text_ext(txtb_x + border, txtb_y + border, _drawtext, line_sep, line_width);
#endregion
	
	
//#region options

//if (draw_char == text_length[page] && page == page_number - 1) {
//	var op_space = 15;
//	var op_bord = 4;
//	for (var op = 0; op < option_number; op++) {
//		var o_w = string_width(global.option[op]) + op_bord * 2;
//		draw_sprite_ext(txtb_spr, txtb_img, txtb_x + 32, txtb_y + op_space * option_number + op_space * op, o_w/txtb_spr_w, (op_space - 1)/txtb_spr_h, 0, c_white, 1)
		
//		draw_text((txtb_x + 16 + op_bord), (txtb_y + op_space * option_number + op_space * op + 2), global.option[op])
//	}
//}

//#endregion


