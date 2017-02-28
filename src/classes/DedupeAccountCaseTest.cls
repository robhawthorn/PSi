@isTest
private class DedupeAccountCaseTest {
		
	@isTest static void createAcc() {
		Account myAcc = new Account();
		myAcc.Name      = 'Dedupe Account Test';
		insert myAcc;
	}
}