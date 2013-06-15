#import <Foundation/Foundation.h>

@class Customer;

@interface Account: NSObject

@property (strong) NSString *name;
@property (strong) Customer *customer;
@property (assign) long balance;

-(id) initWithName: (NSString *) name
	   forCustomer: (Customer *) customer
	   withBalance: (long)       balance;

@end
