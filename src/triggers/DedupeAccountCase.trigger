trigger DedupeAccountCase on Account (after insert) {
	for ( Account acc : Trigger.new ) {
		Case c        = new Case();
		c.Subject     = 'New Account - Dedupe Required';
		c.Status      = 'New';
		c.Origin      = 'Web';
		c.Description = 'Please conduct a manual dedupe of the newly created account';
		c.OwnerId     = '005410000010mCb';
		c.AccountId   = acc.Id;

		insert c;
	}
}