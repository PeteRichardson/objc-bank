#import <Foundation/Foundation.h>

@class Customer;
@class Account;

@interface Bank: NSObject

@property (strong) NSString *name;
@property (strong) NSMutableArray *accounts;

-(id) initWithName: (NSString *) name;

-(Account *) newAccountWithName: (NSString *) newAccountName
				forCustomer: (Customer *) customer
				withBalance: (long) balance;

@end
