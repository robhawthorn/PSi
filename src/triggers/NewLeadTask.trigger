trigger NewLeadTask on Lead (after insert) {
	for ( Lead ld : Trigger.new) {
		Task t        = new Task();
		t.Subject     = 'Call New Lead';
		t.Description = 'New lead, please assess and follow up';
		t.Priority    = 'Medium';
		t.Status      = 'In Progress';
		t.WhoId       = ld.Id;

		insert t;
	}
}