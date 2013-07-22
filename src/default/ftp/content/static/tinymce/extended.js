/**
 * $Id: extended.js,v 1.1 2010-04-09 00:04:54 dkolev Exp $
 * 
 */

( function() {
	var DOM = tinymce.DOM, Element = tinymce.dom.Element, Event = tinymce.dom.Event, each = tinymce.each, is = tinymce.is;

	tinymce.create('tinymce.plugins.jQueryPopups', {
		init : function(ed, url) {
			// Replace window manager
		ed.onBeforeRenderUI.add( function() {
			ed.windowManager = new tinymce.InlineWindowManager(ed);
		});
	},

	getInfo : function() {
		return {
			longname :'jQueryPopups',
			author :'VESHTER Network, LLC',
			authorurl :'http://www.veshter.com',
			infourl :'', // none atm
			version :tinymce.majorVersion + "." + tinymce.minorVersion
		};
	}
	});

	tinymce
			.create(
					'tinymce.InlineWindowManager:tinymce.WindowManager',
					{
						InlineWindowManager : function(ed) {
							var t = this;

							t.parent(ed);
							t.zIndex = 300000;
							t.count = 0;
							t.windows = {};
						},

						open : function(f, p) {
							var t = this, id, opt = '', ed = t.editor, dw = 0, dh = 0, vp, po, mdf, clf, we, w, u;

							f = f || {};
							p = p || {};

							// Run native windows
							if (!f.inline)
								return t.parent(f, p);

							// Only store selection if the type is a normal
							// window
							if (!f.type)
								t.bookmark = ed.selection.getBookmark('simple');

							id = DOM.uniqueId();
							vp = DOM.getViewPort();
							f.width = parseInt(f.width || 320);
							f.height = parseInt(f.height || 240)
									+ (tinymce.isIE ? 8 : 0);
							f.min_width = parseInt(f.min_width || 150);
							f.min_height = parseInt(f.min_height || 100);
							f.max_width = parseInt(f.max_width || 2000);
							f.max_height = parseInt(f.max_height || 2000);
							f.left = f.left
									|| Math.round(Math.max(vp.x, vp.x
											+ (vp.w / 2.0) - (f.width / 2.0)));
							f.top = f.top
									|| Math.round(Math.max(vp.y, vp.y
											+ (vp.h / 2.0) - (f.height / 2.0)));
							f.movable = f.resizable = true;
							p.mce_width = f.width;
							p.mce_height = f.height;
							p.mce_inline = true;
							p.mce_window_id = id;
							p.mce_auto_focus = f.auto_focus;

							t.features = f;
							t.params = p;
							t.onOpen.dispatch(t, f, p);

							u = f.url || f.file;
							if (u) {
								if (tinymce.relaxedDomain)
									u += (u.indexOf('?') == -1 ? '?' : '&')
											+ 'mce_rdomain='
											+ tinymce.relaxedDomain;

								u = tinymce._addVer(u);
							}

							jQueryEx.showIFrameDialog(id, 'Properties',
									f.width, f.height, u, true, {
										'Close' : function() {
											$(this).dialog('destroy');
										}

									});
							var iframe = $('#dialog-' + this.params.mce_window_id);
							w = iframe[0].firstChild;

							return w;
						},

						focus : function(id) {

							// not supported
						},

						resizeBy : function(dw, dh, id) {

							// not supported
						},

						close : function(win, id) {
							var t = this;
							$('#dialog-' + t.params.mce_window_id).dialog(
									'destroy');
						},

						setTitle : function(w, ti) {

							// not supported

						},
	
						alert : function(txt, cb, s) {
	
							// TODO: Improve the popup
							alert(txt);
	
						},
	
						confirm : function(txt, cb, s) {
	
							// TODO: Improve the popup
							alert(txt);
	
						}

					});

	// Register plugin
	tinymce.PluginManager.add('jquerypopups', tinymce.plugins.jQueryPopups);
})();

function tinyMCEEx() {

}

tinyMCEEx.ajaxLoad = function(guid, id, user) {

	var ed = tinyMCE.get(id);

	if (ed) {
		ed.setProgressState(1); // Show progress

		$.post('save.php', {
			'do' :'get',
			'guid' :guid,
			'attribute' :id,
			'user' :user
		}, function(xml) {
			// format result
				var result = [ $('content', xml).text() ];
				// output result
				// $("#"+id).html(result.join(''));
				ed.setContent(result.join(''));
				if (tinyMCE.getInstanceById(id)) {
					ed.setProgressState(0);
				}
			});
	}
}

tinyMCEEx.ajaxSave = function(guid, id, user) {

	var ed = tinyMCE.get(id);

	if (ed) {
		ed.setProgressState(1); // Show progress

		$.post('save.php', {
			'do' :'set',
			'guid' :guid,
			'attribute' :id,
			'content' :ed.getContent(),
			'user' :user
		}, function(xml) {
			// format result
				var result = [ $('status', xml).text() ];
				// output result
				$('#status_' + id).html('Status: ' + result.join(''));
				// alert(result.join(''));

				ed.setProgressState(0);
			});

	}

}

tinyMCEEx.toggleEditor = function(id) {
	tinyMCE.execCommand('mceToggleEditor', false, id);

}

tinyMCEEx.fileBrowse = function(field_name, url, type, win) {
	jQueryEx
			.showIFrameDialog(
					"browser",
					"Resource Browser",
					750,
					550,
					"/content/administrator/resource_browse.type_" + type
							+ ".vesh",
					true,
					{
						"Cancel" : function() {
							$(this).dialog('close');
						},
						"Select" : function() {

							var path = $('#selectedpath',
									this.firstChild.contentWindow.document.body)
									.html();
							win.document.forms[0].elements[field_name].value = path;

							$(this).dialog('close');
						}
					});
}

tinyMCE
		.init( {
			mode :"textareas",
			// dialog_type : "modal",
			width :600,
			height :500,
			entities :"",
			force_p_newlines :false,
			skin :"default",
			skin_variant :"silver",
			theme :"advanced",
			document_base_url :"/",
			relative_urls :false,
			plugins :"autosave,safari,pagebreak,style,layer,table,save,emotions,iespell,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,jquerypopups",

			// Theme options

			theme_advanced_buttons1 :"fullscreen,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,formatselect",
			theme_advanced_buttons2 :"cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,code",
			theme_advanced_buttons3 :"tablecontrols,|,hr,removeformat,visualaid,|,sub,sup",
			theme_advanced_buttons4 :"",
			// ,theme_advanced_buttons4 :
			// "insertlayer,moveforward,movebackward,absolute,|,styleprops,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,pagebreak"

			theme_advanced_toolbar_location :"top",
			theme_advanced_toolbar_align :"left",
			theme_advanced_statusbar_location :"bottom",
			theme_advanced_resizing :true,

			// Example word content CSS (should be your site CSS) this one
			// removes paragraph margins

			content_css :"css/word.css",

			file_browser_callback :"tinyMCEEx.fileBrowse",

			// execcommand_callback : "tinyMCEEx.customCommandHandler",

			// Drop lists for link/image/media/template dialogs,
			// template_external_list_url : "lists/template_list.js",
			// external_link_list_url : "lists/link_list.js",
			// external_image_list_url : "lists/image_list.js",
			// media_external_list_url : "lists/media_list.js",

			// theme_advanced_toolbar_location : "external",

			theme_advanced_toolbar_location :"top",
			theme_advanced_toolbar_align :"left",

			theme_advanced_statusbar_location :"bottom",

			theme_advanced_resizing :false,

			editor_selector :"wysiwygAdvanced"
		});
