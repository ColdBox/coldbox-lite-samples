/**
* A cool Contact entity
*/
component persistent="true" table="contacts" extends="coldbox.system.orm.hibernate.ActiveEntity"{

	// Primary Key
	property name="contactID" fieldtype="id" column="contactID" generator="native" setter="false";
	
	// Properties
	property name="firstName" ormtype="string";
	property name="lastName" ormtype="string";
	property name="email" ormtype="string";
	
}