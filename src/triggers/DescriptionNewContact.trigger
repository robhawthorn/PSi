trigger DescriptionNewContact on Contact (before insert) {
	for(Contact c : Trigger.new) {
		c.Description = 'New Contact';
	}
}