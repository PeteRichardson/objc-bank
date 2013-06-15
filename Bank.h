#import <Foundation/Foundation.h>

@class Customer;
@class Account;

typedef unsigned long AccountIdType;

@interface Bank: NSObject 

@property (strong) NSString *name;
@property (strong) NSMutableDictionary *accounts;

-(id) initWithName: (NSString *) name;

-(void) openAccountWithName: (NSString *) newAccountName
				forCustomer: (Customer *) customer
				withBalance: (long) balance;

-(id) getAccountByName: (NSString *) accountName;
-(id) getAccountById: (AccountIdType) accountId;
@end
