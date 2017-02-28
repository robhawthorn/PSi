@isTest
private class HelloWorldTest {
	
	@isTest static void updateLead() {
		Lead myLead = new Lead();
		myLead.FirstName = 'Hello';
		myLead.LastName  = 'World';
		myLead.Company   = 'One';
		myLead.Status    = 'Open - Not Contacted';
		insert myLead;

		myLead.Company   = 'RE';
		update myLead; 
	}
}