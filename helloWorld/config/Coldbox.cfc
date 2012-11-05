component {

	// Configure ColdBox Application
	function configure(){
	
		// coldbox directives
		coldbox = {
			//Application Setup
			appName 				= "ColdBox LITE",
	
			//Development Settings
			reinitPassword			= "",
			handlersIndexAutoReload = true,

			customErrorTemplate		= "includes/error.cfm",
	
			//Application Aspects
			handlerCaching 			= false
		};

	}
	
}