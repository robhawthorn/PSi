@isTest
private class AppleWatchTest {
	
	@isTest static void createOpp() {
		Opportunity myOpp = new Opportunity();
		myOpp.Name        = 'Apple Watch Test';
		myOpp.StageName   = 'Prospecting';
		myOpp.CloseDate   = Date.today();
		insert myOpp;
	}
}