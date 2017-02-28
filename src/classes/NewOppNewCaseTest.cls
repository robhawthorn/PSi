@isTest
private class NewOppNewCaseTest {
	
	@isTest static void createOpp() {
		Opportunity opp = new Opportunity();
		opp.Name        = 'New Opp new case test';
		opp.StageName   = 'Prospecting';
		opp.CloseDate   = Date.today();

		insert opp;
	}
}