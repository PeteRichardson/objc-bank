#import "Account.h"
#import "Customer.h"

@implementation Account

@synthesize name = _name;
@synthesize customer = _customer;
@synthesize balance = _balance;


-(id) initWithName: (NSString *) name
	   forCustomer: (Customer *) customer
	   withBalance: (long)       balance {
	if (self = [super init]) {
		_name = name;
		_customer = customer;
		_balance = balance;
		NSLog(@"Opened Account: %@ for customer %@ with balance $%ld", _name, _customer.name, _balance);
	}
	return self;
}

@end
