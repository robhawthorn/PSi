trigger AppleWatch on Opportunity (after insert) { //WHY AFTER INSERT - BECAUSE OPP ID IS REQUIRED
	for (Opportunity opp : Trigger.new) {
		Task promo = new Task();

		promo.Subject     = 'Apple Watch Promo';
		promo.Description = 'Send one ASAP!';
		promo.Priority    = 'High';
		promo.Status      = 'In Progress';
		promo.WhatId      = opp.Id;

		insert promo;
	}
}