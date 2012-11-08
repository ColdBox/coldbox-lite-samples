<cfoutput>
<div class="page-header">
	<h1>Contacts Editor</h1>
</div>
<form action="#event.buildLink('contacts.save')#" method="post">
	<input type="hidden" name="contactID" id="contactID" value="#prc.contact.getContactID()#" />
	
	<label>First Name: </label>
	<input type="text" name="firstName" id="firstName" value="#prc.contact.getFirstName()#" />
	<label>Lastn Name: </label>
	<input type="text" name="lastName" id="lastName" value="#prc.contact.getLastName()#" />
	<label>Email:</label>
	<input type="text" name="email" id="email" value="#prc.contact.getEmail()#" />
	
	<div class="control-group">
		<div class="controls">
			<a href="#event.buildLink('contacts')#" class="btn">Cancel</a>
			<button type="submit" class="btn btn-primary">Save changes</button>
		</div>
	</div>

</form>
</cfoutput>