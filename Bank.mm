#import "Bank.h"

#import "Account.h"

static AccountIdType nextAccountId = 1000;


@implementation Bank

@synthesize name = _name;
@synthesize accounts = _accounts;

+(AccountIdType) getNextAccountId {
	return nextAccountId++;
}

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
	AccountIdType newAccountId = [Bank getNextAccountId];
	Account *newAccount = [[Account alloc] initWithName: newAccountName
											forCustomer: customer
											withBalance: balance
											andAccountId: newAccountId];
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

-(id) getAccountById: (AccountIdType) accountId {
	for (id obj in _accounts) {
		if ([obj accountId] == accountId)
			return (Account *) obj;
	}
	return (Account *) nil;
}

-(NSString *) description {
	NSMutableString *result = [NSMutableString stringWithString: _name];
	[result appendString: @"\n------------\n"];
	for (id obj in _accounts) {
		[result appendFormat: @"%@\n", [obj description]];
	}
	return result;
}

@end
