@isTest
private class HeritageAccountTest {
	
	@isTest static void updateAccount() {
		Account myAccount = new Account();
		myAccount.Name = 'TestAccount';
		insert myAccount;

		myAccount.Name   = 'RE';
		update myAccount; 
	}
}