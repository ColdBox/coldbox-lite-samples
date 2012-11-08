/**
* I am a contacts manager handler
*/
component{

	function index(event,rc,prc){
		prc.contacts = entityNew("Contact").list(sortOrder="lastName", asQuery=false);
		event.setView("contacts/index");
	}

	function editor(event,rc,prc){
		event.paramValue("contactID",0);
		prc.contact = entityNew("Contact").get( rc.contactID );
		event.setView("contacts/editor");
	}

	function delete(event,rc,prc){
		event.paramValue("contactID",0);
		entityNew("Contact").deleteByID( rc.contactID );
		setNextEvent("contacts");
	}

	function save(event,rc,prc){
		event.paramValue("contactID",0);
		populateModel( entityNew("Contact").get( rc.contactID ) ).save();
		setNextEvent("contacts");
	}

}