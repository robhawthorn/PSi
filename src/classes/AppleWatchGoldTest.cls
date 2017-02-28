@isTest
private class AppleWatchGoldTest {
	
	@isTest static void createOpp() {
		Opportunity myOpp = new Opportunity();
		myOpp.Name        = 'Apple Watch Gold Test';
		myOpp.StageName   = 'Prospecting';
		myOpp.CloseDate   = Date.today();
		myOpp.Amount      = 55000;
		insert myOpp;
	}
}