#import "Bank.h"

#import "Account.h"

@implementation Bank

@synthesize name = _name;
@synthesize accounts = _accounts;

-(id) initWithName: (NSString *) name {
	if (self = [super init]) {
		_name = name;
		_accounts = [[NSMutableArray alloc] init];
		NSLog(@"Created Bank: %@", _name);
	}	
	return self;
}

-(void) openAccountWithName: (NSString *) newAccountName
				    forCustomer: (Customer *) customer
				    withBalance: (long) balance {
	Account *newAccount = [[Account alloc] initWithName: newAccountName
											forCustomer: customer
											withBalance: balance];
	if (newAccount) {
		[_accounts addObject: newAccount];
	}
}

-(id) getAccountByName: (NSString *) accountName {
	for (id obj in _accounts) {
		if ([[obj name] isEqual: accountName])
			return (Account *) obj;
	}
	return (Account *) nil;
}

@end
