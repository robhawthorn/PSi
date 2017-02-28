public class HeritageAccounts {
    public static void updateOlderAccounts() {
    // Get the 10 oldest accounts
    Account[] oldAccounts = [SELECT Id, Description FROM Account ORDER BY CreatedDate ASC LIMIT 10];
    // loop through them and update the Description field
    for (Account acct : oldAccounts) {
        acct.Heritage_Account__c = TRUE;
   }
   // save the change you made
   update oldAccounts;
}

}