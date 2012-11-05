/**
* I am a main handler
*/
component {

	//injecting a model object from  wirebox
	property name="joke" inject="id:joke";

	function index(event,rc,prc){
		//using our model to get data
		rc.joke = joke.getJoke();
		event.setView("Main/index");
	}

}
