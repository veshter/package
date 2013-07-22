//requires jQuery 1.3+

function jQueryEx() {

}

// dialog windows
jQueryEx.initializeDialog = function() {
	$('body')
			.append(
					'<div id="dialogresult" style="display:none"><!-- result of the current dialog --></div>');
}

jQueryEx.setDialogResult = function(result) {
	$('#dialogresult').html(result);
}

jQueryEx.getDialogResult = function(id) {
	return $('#dialog-' + id + '-content').contents().find('#dialogresult')
			.html();
}

// dialog containers
jQueryEx.initializeDialogContainer = function() {
	jQueryEx.initializeDialog();

	$('body').append(
			'<div id="dialogs" style="display:none"><!-- dialog(s) --></div>');
}

jQueryEx.showIFrameDialog = function(id, title, width, height, href, modal, callbacks) {
	jQueryEx.showDialog(id, title, width, height, href, modal, true, callbacks);
}

jQueryEx.showHTMLDialog = function(id, title, width, height, html, modal, callbacks) {
	jQueryEx.showDialog(id, title, width, height, html, modal, false, callbacks);
}

jQueryEx.showDialog = function(id, title, width, height, content, modal, isIFrame,
		callbacks) {

	var body = '';
	
	body += '<div id="dialog-' + id + '" title="' + title + '">';
	if (isIFrame) {
		body += '<iframe id="dialog-' + id + '-content" frameborder="0" src="'
				+ content + '" width="' + width + '" height="' + height + '"></iframe>';
	} else {
		body += '<div id="dialog-' + id + '-content">' + content + '</div>';
	}
	body += '</div>';

	$('#dialogs').append(body);

	$('#dialog-' + id).dialog( {
		bgiframe :true,
		resizable :false,
		height :height + 125,
		width :width + 30,
		modal :modal,
		overlay : {
			backgroundColor :'#000000',
			opacity :0.5
		},
		buttons :callbacks
	});
}
