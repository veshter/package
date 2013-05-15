<?php

/*
 * %LICENSE% - see LICENSE
 *
 * $Id: cron.generic.php,v 1.2 2013-01-14 21:13:19 dkolev Exp $
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

	class CDaemonDynamic extends CDaemon
	{
		function Execute()
		{
			$this->StartTimer();

			try
			{

				if (!defined('_CRON_FILENAME'))
				{
					throw new CExceptionNotFound('No cron file name defined');
				}

				CDaemon::WriteLine(CString::Format('Executing wrapper daemon code from %s...', _CRON_FILENAME));

				$path = dirname(__FILE__) . '/' . _CRON_FILENAME;

				if (!file_exists($path))
				{
					throw new CExceptionNotFound(CString::Format('Cron file not found at %s', $path));
				}

				$interpreter = new CCodeInterpreter();

				//eval code before merging the main sections

				$lines = file($path);
				$script = join('', $lines);

				//CEnvironment::Dump($script);

				if (!empty($script))
				{
					$result = $interpreter->EvalScript($script, $context);
				}
				else
				{
					throw new CExceptionInvalidData('Cron script was empty');
				}


			}
			catch (CExceptionEx $ex)
			{
				CDaemon::WriteLine('Error occured while running daemon code:'  . $ex->getMessage());
			}

			$this->StopTimer();

			CDaemon::WriteLine('Execution took: ' . $this->timer->ToString());

		}
	}
	
	try
	{
		$app = new CApplicationDaemon();

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
		
		CDaemon::WriteLine('##################################');
		CDaemon::WriteLine('# Daemon started...');
		CDaemon::WriteLine('##################################');

		$daemon = new CDaemonDynamic();

		$daemon->Execute();

		CDaemon::WriteLine('##################################');
		CDaemon::WriteLine('# Daemon execution complete');
		CDaemon::WriteLine('##################################');
	
		
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

	
		CEventLog::Log('Gui.Generic', $ex->getMessage(), $details, 'Error', 1, 'Cron');
		CDaemon::WriteLine($ex->getMessage());
		
		CDaemon::WriteLine('##################################');
		CDaemon::WriteLine('# Daemon execution FAILED');
		CDaemon::WriteLine('##################################');
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
 * $Log: cron.generic.php,v $
 * Revision 1.2  2013-01-14 21:13:19  dkolev
 * Merge to prototype
 *
 * Revision 1.1.4.1  2012-07-06 06:04:46  dkolev
 * Removed call to obsolete method
 *
 * Revision 1.1  2010-04-09 00:04:52  dkolev
 * Move
 *
 * Revision 1.1  2010-04-04 02:03:51  dkolev
 * *** empty log message ***
 *
 * Revision 1.1  2009-11-16 00:21:28  dkolev
 * Moved to site folder.
 *
 * Revision 1.1  2009-11-15 00:25:36  dkolev
 * Initial import
 *
 */ 

?>
