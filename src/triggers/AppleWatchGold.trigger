trigger AppleWatchGold on Opportunity (after insert) {
	for (Opportunity opp : Trigger.new) {
		if(opp.Amount > 50000) {
			Task promo = new Task();

			promo.Subject 	  = 'Apple Watch Gold Promo';
			promo.Description = 'Send this person an Apple Watch';
			promo.Description = 'Send one ASAP!';
			promo.Priority    = 'High';
			promo.Status      = 'In Progress';	
			promo.WhatId      = opp.Id;

			insert promo;
		}
	}
}