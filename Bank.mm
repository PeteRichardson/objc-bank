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
		_accounts = [[NSMutableDictionary alloc] init];
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
		[_accounts setObject: newAccount forKey: [NSNumber numberWithUnsignedLong: newAccountId]];
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
	return [_accounts objectForKey: [NSNumber numberWithUnsignedLong: accountId]];
}

-(NSString *) description {
	NSMutableString *result = [NSMutableString stringWithString: _name];
	[result appendString: @"\n------------\n"];
	for (id obj in [_accounts allValues]) {
		[result appendFormat: @"%@\n", [obj description]];
	}
	return result;
}

@end
