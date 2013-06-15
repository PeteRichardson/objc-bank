#import <iostream>

#import "Bank.h"
#import "Customer.h"
#import "Account.h"

void listAccounts(NSMutableArray *accounts) {
	std::cout << "Account List" << std::endl << "------------" << std::endl;
	for (id obj in accounts) {
		std::cout << [[obj name] UTF8String] << std::endl;		
	}
}

int main(int argc, char**argv) {
	Bank *bank = [[Bank alloc] initWithName: @"First Bank of Pete"];
	
	Customer *pete  = [[Customer alloc] initWithName: @"Pete Richardson"];
	Customer *wendy = [[Customer alloc] initWithName: @"Wendy Wilson"];

	[bank openAccountWithName: @"Pete's Checking"    forCustomer: pete  withBalance:  5000];
	[bank openAccountWithName: @"Wendy's Savings"    forCustomer: wendy withBalance: 80000];
	[bank openAccountWithName: @"Rhus Ridge Account" forCustomer: pete  withBalance: 32000];

	listAccounts(bank.accounts);

	NSString *accName = @"Wendy's Savings";
	Account *acct = [bank getAccountByName: accName];
	if (!acct) {
		std::cout << "ERROR: couldn't get find account with name " << [accName UTF8String] << std::endl;
		exit(1);
	} else {
		std::cout << "Here's the balance of Wendy's Savings: " << [acct balance] << std::endl;
	}

}
