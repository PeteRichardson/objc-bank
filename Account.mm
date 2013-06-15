#import "Account.h"
#import "Customer.h"

@implementation Account

@synthesize accountId = _accountId;
@synthesize name = _name;
@synthesize customer = _customer;
@synthesize balance = _balance;


-(id) initWithName: (NSString *) name
	   forCustomer: (Customer *) customer
	   withBalance: (long)       balance 
	   andAccountId: (unsigned long) accountId {
	if (self = [super init]) {
		_accountId = accountId;
		_name = name;
		_customer = customer;
		_balance = balance;
		NSLog(@"Opened Account %@", [self description]);
	}
	return self;
}

-(NSString *) description {
	return [NSString stringWithFormat: @"#%ld (%@) for customer %@ with balance $%ld", _accountId, _name, _customer.name, _balance];
}

@end
