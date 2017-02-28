trigger NewOppNewCase on Opportunity (after insert) {
	for (Opportunity opp : Trigger.new) {
		Case c = new Case();
		c.Subject = 'New Opportunity created, please sense check';
		c.Status      = 'New';
		c.Origin      = 'Web';
		c.Description = 'Please conduct a manual dedupe of the newly created account';
		c.OwnerId     = '005410000010mCb';
		c.AccountId   = opp.AccountId;

		insert c;
	}
}