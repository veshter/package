<?php

/*
 * %LICENSE% - see LICENSE
 *
 * $Id: gui.generic.php,v 1.2 2013-01-14 21:13:19 dkolev Exp $
 */

try
{
	$paths = array();
	$paths['config'] = dirname(__FILE__) . '/../etc/config.inc.php';
	$paths['framework'] = dirname(__FILE__) . '/../framework/VESHTER.php';
	
	if (file_exists($paths['config']))
	{
		require_once($paths['config']);
	}
	else
	{		
		throw new Exception('Cannot load configuration file');		
	}
	
	if (file_exists($paths['framework']))
	{
		require_once($paths['framework']);
	}
	else
	{		
		throw new Exception('Cannot load framework');		
	}
	
	//TODO: Disable in release mode
	//CEnvironment::EnableDebugging();

	try
	{
		$app = new CApplicationWeb();

		CEnvironment::SetCurrentApplication($app);

		$properties = array();
		$app->SetProperties($properties);

		//add the local grid
		$app->Notify('Adding main grid');
		$datagrid_local = new CDataGrid('', _DATASOURCE_NAME, _DATASOURCE_TYPE, _DATASOURCE_HOST, _DATASOURCE_LOGIN, _DATASOURCE_PASSWORD);
		$app->AddDataGrid($datagrid_local);

		//add the global/failover (read-only) grid
		$app->Notify('Adding defaults grid');
		$datagrid_global = new CDataGrid('', _DEFAULTSDATASOURCE_NAME, _DEFAULTSDATASOURCE_TYPE, _DEFAULTSDATASOURCE_HOST, _DEFAULTSDATASOURCE_LOGIN, _DEFAULTSDATASOURCE_PASSWORD);
		$app->AddDataGrid($datagrid_global);

		$app->LoadConfiguration();
		
		$app->Localize();

		$app->HookEventHandlers();

		$canvas = new CCanvas();
		$canvas->Render(_EXT_VIRTUAL);

	}
	catch (CExceptionSecurity $ex)
	{
		CEnvironment::RegisterHeader(CString::Format('Location: /log.vesh?reason=accessdenied&url=%s&message=%s', CString::UrlEncode(CEnvironment::GetScriptVirtualName()), CString::UrlEncode($ex->getMessage())));
	}
	catch (CExceptionTimeOut $ex)
	{
		CEnvironment::RegisterHeader(CString::Format('Location: /log.vesh?reason=timeout&url=%s&message=%s', CString::UrlEncode(CEnvironment::GetRequestUri()), CString::UrlEncode($ex->getMessage())));
	}
	catch (CExceptionNotFound $ex)
	{
		CEnvironment::RegisterHeader('HTTP/1.0 404 Not Found');
		CEnvironment::RegisterHeader(CString::Format('Location: /notfound.vesh?url=%s&message=%s', CString::UrlEncode(CEnvironment::GetScriptVirtualName()), CString::UrlEncode($ex->getMessage())));
	}
	catch (CExceptionEx $ex)
	{
		if (CEnvironment::GetDebugging())
		{
			$details = CCollection::ToXMLWorker($ex);
		}
		else
		{
			$details = 'Error details omitted in non-debug mode';
		}

		$user = $app->GetUser();
		CEventLog::Log('Gui.Generic', $ex->getMessage(), $details, 'Error', 1, $user != null ? $user->GetLogin() : 'Unknown');
		CEnvironment::RegisterHeader(CString::Format('Location: /error.vesh?url=%s&message=%s', CEnvironment::GetScriptVirtualName(), CString::UrlEncode($ex->getMessage())));
	}
}
catch (Exception $ex)
{
	printf('Unexpected fatal error (ID:%s): %s<p>', $ex->getCode(), $ex->getMessage());
	
	printf('Please contact the web site owner/administrator and tell them of this error.');
	exit;
}

/*
 *
 * Changelog:
 * $Log: gui.generic.php,v $
 * Revision 1.2  2013-01-14 21:13:19  dkolev
 * Merge to prototype
 *
 * Revision 1.1.4.1  2012-02-19 20:56:18  dkolev
 * Switch .html index pages
 *
 * Revision 1.1  2010-04-09 00:04:53  dkolev
 * Move
 *
 * Revision 1.1  2010-04-04 02:03:23  dkolev
 * *** empty log message ***
 *
 * Revision 1.1  2009-11-16 00:21:19  dkolev
 * Moved to site folder.
 *
 * Revision 1.8  2009-11-15 00:26:42  dkolev
 * Added global paths
 *
 * Revision 1.7  2009-05-29 01:48:30  dkolev
 * Added better error handling.
 *
 * Revision 1.6  2009-04-14 11:43:28  dkolev
 * Switched Localize and LoadConfiguration
 *
 * Revision 1.5  2009-04-06 04:14:38  dkolev
 * Url encoded the variables send to the error/info landing pages.
 *
 * Revision 1.4  2009-04-04 10:53:16  dkolev
 * Update jQuery and the jQuery UI
 *
 * Revision 1.3  2009-03-30 01:07:19  dkolev
 * Added error messages to error forwarders
 *
 * Revision 1.2  2009-03-22 07:51:07  dkolev
 * Reworked exception handling
 *
 * Revision 1.1  2009-03-22 04:43:34  dkolev
 * Renamed www to content
 *
 * Revision 1.6  2009-03-21 23:05:05  dkolev
 * *** empty log message ***
 *
 */

?>