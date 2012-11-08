<cfoutput>
<div class="page-header">
	<h1>Contacts <a href="#event.buildLink("contacts.editor")#" class="btn btn-success"> Create Contact </a></h1>
</div>
<cfloop array="#prc.contacts#" index="contact">
<div class="well">
	<h2>#contact.getLastName()#, #contact.getFirstName()# (#contact.getEmail()#)</h2>
	<div class="controls">
		<a href="#event.buildLink(linkto="contacts.editor", queryString="contactID=#contact.getContactID()#")#" class="btn">Edit</a>
		<a href="#event.buildLink(linkto="contacts.delete", queryString="contactID=#contact.getContactID()#")#" class="btn btn-danger" onclick="return confirm('Really Delete?')">Delete</a>
	</div>
</div>
</cfloop>
</cfoutput>