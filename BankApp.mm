#import <iostream>

#import "Bank.h"
#import "Customer.h"


void listAccounts(NSMutableArray *accounts) {
	std::cout << "Account List" << std::endl << "------------" << std::endl;
	[accounts enumerateObjectsUsingBlock: ^(id obj, NSUInteger idx, BOOL *stop) {
		std::cout << [[obj name] UTF8String] << std::endl;
	}];
}

int main(int argc, char**argv) {
	Bank *bank = [[Bank alloc] initWithName: @"First Bank of Pete"];
	
	Customer *pete  = [[Customer alloc] initWithName: @"Pete Richardson"];
	Customer *wendy = [[Customer alloc] initWithName: @"Wendy Wilson"];

	[bank openAccountWithName: @"Pete's Checking"    forCustomer: pete  withBalance:  5000];
	[bank openAccountWithName: @"Wendy's Savings"    forCustomer: wendy withBalance: 80000];
	[bank openAccountWithName: @"Rhus Ridge Account" forCustomer: pete  withBalance: 32000];

	listAccounts(bank.accounts);
}
