/**
* I am a contacts manager handler
*/
component{

	// Inject a virtual service layer binded to the contact entity
	property name="contactService" inject="entityService:Contact";
	
	function index(event,rc,prc){
		prc.contacts = contactService.list(sortOrder="lastName", asQuery=false);
		event.setView("contacts/index");
	}

	function editor(event,rc,prc){
		event.paramValue("contactID",0);
		prc.contact = contactService.get( rc.contactID );
		event.setView("contacts/editor");
	}

	function delete(event,rc,prc){
		event.paramValue("contactID",0);
		contactService.deleteByID( rc.contactID );
		setNextEvent("contacts");
	}

	function save(event,rc,prc){
		event.paramValue("contactID",0);
		contactService.save( populateModel( contactService.get( rc.contactID ) ) );
		setNextEvent("contacts");
	}

}