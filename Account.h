#import <Foundation/Foundation.h>

@class Customer;

@interface Account: NSObject

@property (assign) unsigned long accountId;
@property (strong) NSString *name;
@property (strong) Customer *customer;
@property (assign) long balance;

-(id) initWithName:  (NSString *) name
	   forCustomer:  (Customer *) customer
	   withBalance:  (long)       balance
	   andAccountId: (unsigned long) accountId;

@end
