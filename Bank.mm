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

-(Account *) newAccountWithName: (NSString *) newAccountName
				    forCustomer: (Customer *) customer
				    withBalance: (long) balance {
	Account *newAccount = [[Account alloc] initWithName: newAccountName
											forCustomer: customer
											withBalance: balance];
	if (newAccount) {
		[_accounts addObject: newAccount];
	}
	return newAccount;

}

@end
