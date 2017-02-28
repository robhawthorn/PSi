trigger NewContactFollowUp on Contact (after insert) {
	for (Contact newContact : Trigger.new) {
		Task t        = new Task();
		t.Subject     = 'New Contact - Please call';
		t.Description = 'New contact has been created, please follow up with them asap';
		t.Status      = 'High';
	//	t.WhatId      = newContact.Id;
	//	t.WhatId      = newContact.AccountId;
		t.WhoId       = newContact.Id;
		insert t;
	}
}