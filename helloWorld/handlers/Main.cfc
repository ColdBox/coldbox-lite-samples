/**
* I am a Main handler
*/
component {

	//injecting a model object from  wirebox
	property name="hello" inject="id:hello";

	function index(event,rc,prc){
		//using our model object to say hello and putting it in the rc to pass to the view
		rc.welcomeMessage = hello.sayHello();	
		event.setView("Main/index");
	}

}
