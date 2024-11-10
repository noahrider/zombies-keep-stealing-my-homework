function scr_text(_text) {
	global.msg[page_number] = _text;
	
	page_number++;
}

/// @param option
/// @param linkID
function scr_option(_option, _linkID) {
	global.option[option_number] = _option;
	option_linkID[option_number] = _linkID;
	
	option_number++;
}

/// @param textID
function scr_create_textbox(textID) {
	with (instance_create_depth(x, y, -999999, obj_textbox)) {
		scr_gametext(textID)
	}
}

function scr_create_battletextbox(textID) {
	with (instance_create_depth(x, y, -999999, obj_battletextbox)) {
		scr_gametext(textID)
	}
}

function scr_create_cleartextbox(textID) {
	with (instance_create_depth(x, y, -999999, obj_cleartextbox)) {
		scr_gametext(textID)
	}
}